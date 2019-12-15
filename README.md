<h1>c-farmer</h1>
https://c--farmer.herokuapp.com/

<h2>概要</h2>
<li>「生産者（producer）が生産物（product）にタグをつけて消費者（user)に紹介」できるアプリケーションです。</li>

<h2>制作背景</h2>
食べチョク　https://www.tabechoku.com/　
のサイトを利用していて、自分もユーザと生産者が互いに発信できる媒体が欲しいと思い作成しました。
生産物にタグをつけて検索できたら手間が少なくなると考えました。
また、生産者に地図情報を持たせるやことでより身近にユーザとコミュニケーションが取れるのは面白いのではないかと考えました。

<h2>機能</h2>
-「(post)」投稿
-「(product)」投稿
-いいね機能
-フォロー機能
-コメント機能
-新規登録・ログイン・ログアウト（gem devise)
-閲覧数表示機能（gem impressionist)
-住所フォーム入力から経度、緯度取得機能(gem geolocation)
-経度、緯度から地図情報表示機能(JavaScriptライブラリ leaflet)
-複数タグ付け機能＋検索機能( gem acts-as-taggable-on)
-お問い合わせ機能（ActionMailer）
-管理者機能(rails admin)

<h2>使用技術</h2>
<li>Ruby</li>
-Ruby on Rails
-jQuery
-MySQL(開発環境)
-PostgreSQL(本番環境)
-AWS
-Heroku
-send grid(お問いわせメール、本番環境）
