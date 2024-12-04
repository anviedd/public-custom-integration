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
以前はredoc-cliを使用してましたが動かなくなっています。
事前にredoclyをinstallしてください。
```
npm i -g @redocly/cli@latest
```
```
redocly build-docs openapi.yml -o index.html
```
出力されたhtmlファイルを[s3](https://ap-northeast-1.console.aws.amazon.com/s3/buckets/developer.recustomer.me?region=ap-northeast-1&bucketType=general&tab=objects)に手動でアップロードします
(※将来的には自動化したいですが、今は手動で対応しています)
