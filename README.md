# docker-ssh-tunnel

```
    version: '3'
    services:
      mysql-proxy:
        image: sitleon/docker-ssh-tunnel
        volumes:
          # required update your own key file path
          - ~/.ssh/key_file:/app/key_file
        environment:
          - TUNNEL_HOST_STRING=user@127.0.0.1
          - REMOTE_HOST=remote.example.host
          - REMOTE_PORT=3306
          - LOCAL_PORT=3306
```