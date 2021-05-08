# docker-jupyterlab

### パスワードの設定方法
- コンテナ内で次を実行し、パスワードを２回入力する。
```bash
python -c 'from notebook.auth import passwd;print(passwd())'
```

- ファイル'.env'へ、得られた文字列を次のように記述する。
```
PASSWD=得られた文字列
```
