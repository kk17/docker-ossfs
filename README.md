# docker-ossfs

## Run

```bash
echo my-bucket:my-access-key-id:my-access-key-secret > passwd-ossfs
chmod 640 passwd-ossfs

cat <<EOT >> .env
BUCKET=${BUCKET}
ENTRYPOINT={ENTRYPOINT}
EOT
```

## Configure bind propagation

Propagation configuration only available on Linux host machines. see [Use bind mounts | Docker Documentation](https://docs.docker.com/storage/bind-mounts/#configure-bind-propagation).

## References

- [aliyun/ossfs: Export s3fs for aliyun oss.](https://github.com/aliyun/ossfs)
- [OSS Management Console](https://oss.console.aliyun.com/overview)
- [User Management](https://usercenter.console.aliyun.com/#/manage/ak)
- [Docker数据管理-Volume， bind mount和tmpfs mount | Youmai の Blog](https://michaelyou.github.io/2017/09/17/Docker%E6%95%B0%E6%8D%AE%E7%AE%A1%E7%90%86-Volume%EF%BC%8C-bind-mount%E5%92%8Ctmpfs-mount/)
