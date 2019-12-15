<h1>c-farmer</h1>
<li>https://c--farmer.herokuapp.com/</li>

<h2>概要</h2>
<li>「農作物にタグをつけて検索」できるアプリケーションです。</li>

<h2>制作背景</h2>
<li>食べチョク　https://www.tabechoku.com/　
のサイトを利用していて、自分もユーザと生産者が互いに発信できる媒体が欲しいと思い作成しました。</li>
<li>生産物にタグをつけて検索できたら手間が少なくなると考えました。</li>
<li>また、生産者に地図情報を持たせるやことでより身近にユーザとコミュニケーションが取れるのは面白いのではないかと考えました。</li>

<h2>機能</h2>
<li>「(post)」投稿</li>
<li>「(product)」投稿</li>
<li>いいね機能</li>
<li>フォロー機能</li>
<li>コメント機能</li>
<li>新規登録・ログイン・ログアウト（gem devise)</li>
<li>閲覧数表示機能（gem impressionist)</li>
<li>住所フォーム入力から経度、緯度取得機能(gem geolocation)</li>
<li>経度、緯度から地図情報表示機能(JavaScriptライブラリ leaflet)</li>
<li>複数タグ付け機能＋検索機能( gem acts-as-taggable-on)</li>
<li>お問い合わせ機能（ActionMailer）</li>
<li>管理者機能(rails admin)</li>

<h2>使用技術</h2>
<li>Ruby</li>
<li>Ruby on Rails</li>
<li>jQuery</li>
<li>MySQL(開発環境)</li>
<li>PostgreSQL(本番環境)</li>
<li>Heroku</li>
<li>send grid(お問いわせメール、本番環境）</li>
