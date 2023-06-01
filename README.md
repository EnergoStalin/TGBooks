# Powered by [tgmount-ng](https://github.com/nktknshn/tgmount-ng) and [audiobookshelf](https://github.com/advplyr/audiobookshelf)

# First step
- Run init.sh and make sure fuse installed
- Install tgmount-ng and login using it saving session into tgfs.session file or use container to do so firstly running init.sh to create empty tgfs.session

# Config examples
## config.yaml
```yaml
# can be overwritten by --mount-dir argument
mount_dir: /home/<user>/Music/Books

client:
  session: tgfs
  api_id: <id>
  api_hash: <hash>
  request_size: 1MB

message_sources:
  world_worth_protecting:
    entity: -1001679080314
    updates: True

root:
  "Мир на ладони":
    source: { source: "world_worth_protecting" }
```

## .env
```dotenv
TGAPP=<app_id>:<app_hash>
TGSESSION=tgfs

DOMAIN=your.domain.ru
```
