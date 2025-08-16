# langgraph-ecr

langgraph を lambda にデプロイする際に ECR を使った<br>
黙って 3.11 を使っとれ

# 参考

https://qiita.com/kyamamoto9120/items/f1cda89ffc7cb5254f17

# 手順

.env を作成し、OpenAI の APIKEY を記載して下さい

sudo docker build -t {イメージ名} .

テスト
sudo docker run --rm -p 9000:8080 test
curl -d '{}' http://localhost:9000/2015-03-31/functions/function/invocations | jq .

デプロイ
https://dev.classmethod.jp/articles/beginner-series-to-check-how-t-create-docker-image-and-push-to-amazon-ecr/
