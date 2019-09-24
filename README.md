# minaos

駐車場の見積もり情報を管理する、社内用管理画面です。

# URL
https://www.minaos.tokyo/

かんたんログインからログインできます。

# 実装した主な機能
#### docker,docker-composeによる開発環境構築  
#### ユーザー認証機能
- 裏側を理解するために。deviseは使わず1から実装しました。
- ログイン、ログアウト  
#### 管理ユーザー機能  
- 管理権限を持ったユーザーのみ、ユーザーの追加、編集、削除が可能  
#### 査定(投稿)データCRUD機能  
- kaminariを用いたページネーション機能の実装
- ransackを用いた検索機能の実装
- paranoiaを用いた論理削除機能の実装
- ActionMailerによる投稿内容の確認メール送信機能
- 登録された査定データをCSVエクスポート
#### AWSを用いたデプロイ
- EC2,nginx,unicornを用いたデプロイ
- capystranoによるデプロイ自動化
- DBはRDS,MySQLを使用
- ELBによる負荷分散とSSL証明書のインストール
#### rubocopの導入
#### RSpecによる統合テスト,単体テスト←実装中

# DB設計
draw.ioによりER図を作成しました。

# 進捗管理
以下のスプレッドシートで進捗管理を行いました。
https://docs.google.com/spreadsheets/d/1Ox4pVepnE9jNLuCmZV4CJCjhGUjWFX-wuR5dJ_uhLDE/edit#gid=1648527996

# バージョン
- ruby2.6.3
- rails 5.2.3
- MySQL 8.0.17
- Docker 19.03.2
