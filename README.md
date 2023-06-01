# integration-api-v2

## Setup
1. run this command
```
docker-compose up -d
```

2. access these link!

prism : http://localhost:3030

swagger-ui : http://localhost:3031

redoc : http://localhost:3032

## Devcontainer
DevContainerに接続することで、openapi向けvscode拡張機能を使うことができます

拡張機能は下記記事の拡張機能を追加しています
https://zenn.dev/s_t_pool/articles/954dfe51b950c18d08e9

## デプロイ方法
redocからjsonファイルをダウンロードします。
ダウンロードファイルがあるディレクトリ内で下記コマンドを実行します
```
redoc-cli bundle  swagger_20230531.json -o index.html
```
出力されたhtmlファイルをs3に手動でアップロードします
(※将来的には自動化したいですが、今は手動で対応しています)
