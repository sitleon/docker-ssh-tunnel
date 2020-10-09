# chmod the key
chmod 400 /app/key_file

# fix load pubkey /app/key_file invalid format
# ref: https://joshtronic.com/2020/06/28/load-pubkey-invalid-format-when-using-ssh
ssh-keygen -y -f /app/key_file > /app/key_file.pub

ssh \
    -vv \
    -o StrictHostKeyChecking=no \
    -N $TUNNEL_HOST \
    -L *:$LOCAL_PORT:$REMOTE_HOST:$REMOTE_PORT \
    -i /app/key_file
