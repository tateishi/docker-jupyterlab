# docker-jupyterlab

### パスワードの設定方法

1. コンテナ内の bash を起動する
```bash
docker exec -it <container name> /bin/bash
```

2.コンテナ内で次のコマンドでパスワードを設定する
```bash
jupyter lab password
```
