# Powered by [tgmount-ng](https://github.com/nktknshn/tgmount-ng)

# Examples
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
DESTINATION='u0_a478@192.168.2.193:storage/shared/Audiobooks/'
DASH_E=(-e "ssh -p 8022")
```

# Requirements
```bash
sudo apt install rsync
```

# Run
This will install all dependencies(python3.10,rsync,poetry,libfuse3) and prepare suite you still need to login manually into tgmount
```bash
bash install.sh
```
This script will sync files newer than .last timestamp from Books directory with remote path. Remote can be specified via DESTINATION env var.
```bash
bash sync.sh
```