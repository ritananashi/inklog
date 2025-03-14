# InkLog

## ■サービス概要  
InkLogは、万年筆・ガラスペン用のインクのレビューを投稿・共有することができるアプリです。  
- ユーザーが持っているインクの色見本となる画像とインクのレビューを投稿できます。
- 他のユーザーが投稿したレビューをみて、インクを購入する際の参考にできます。
- 色系統別にインクのレビューを検索できるため、好みのインクを効率よく探すことができます。

## ■ このサービスへの思い・作りたい理由  
万年筆用のインクを探す際、インクの情報がXやInstagram、note、個人ブログ、YouTube等に分散してしまっており、
目当てのインクの情報を探しにくかったため、情報が一か所に集まるようなサービスがあれば良いと思いました。  
私は万年筆及び万年筆用のインクを集めるのが趣味なのですが、
地方の文房具店では取り扱っている万年筆用のインクの種類がそれほど多くありません。  
そのため、メジャーなインク以外を探す場合は、基本的にはネットで探すことになります。  
インクの公式サイトには色見本を掲載しているサイトも多くありますが、
使用している紙やペンの太さによってはインクの印象が大きく変わるため、購入後に「イメージと違った」と思うことがありました。  
SNS等に投稿された写真付きレビューが複数あれば、同じインクであっても異なる条件下
（何の紙を使っているか、何のペンを使っているか）の写真で比較できるため、
より購入後のギャップを少なくすることができますが、様々なサービスに情報が散らばっており、
目当てのインクの情報を探すのがとても大変でした。  
他にも、特定のインクではなく、例えば「青系のインクで良い感じのもの」等、漠然としたイメージで新しいインクを探すこともよくありますが、
こうした場合にも情報が分散してしまっているため、なかなかイメージ通りのインクを探しにくいことがありました。  
既存のSNSの投稿では、「#インク沼」のハッシュタグでインクのレビューが投稿されていることが多いのですが、
インクとは関係のない投稿も多く投稿されており、また「#インク沼」以外のハッシュタグは特に統一されていないため、
たくさんのイメージとは違う投稿の中から、色々な検索ワードを使ってイメージに近いインクを探さなければなりませんでした。  
以上の経験から、インクのレビューを共有することのできるサービスがあれば、イメージ通りのインクを探しやすくなるのではないかと考えました。

## ■ ユーザー層について  
- インクの収集が趣味の方（男女問わず）
  - 特に地方のご当地インクや海外の輸入インク、取扱店の限られているブランドのインク等、通販での購入が選択肢に入るインクを探している方。

## ■サービスの利用イメージ  
ユーザーは、所持しているインクの見本となる写真とレビューを投稿したり、他のユーザーの投稿を閲覧することができます。  
ユーザーは、閲覧した他のユーザーの投稿をブックマークすることができます。これにより、気になったインクのレビューを
ブックマーク一覧からいつでも確認することができます。  

## ■ ユーザーの獲得について  
SNS（X）等でレビューを共有できるようにしてPRします。その際に「#インク沼」ハッシュタグを使用することで、普段から
「#インク沼」ハッシュタグを利用しているユーザーの目に止まるようにします。  
また、自身でも積極的にレビューを共有していきます。

## ■ サービスの差別化ポイント・推しポイント  
万年筆・ガラスペン用インク専門のレビューサイトは現状ありません。  
現在、万年筆・ガラスペン用インクのレビューは、XやInstagram、note、個人ブログ、YouTube等に投稿されています。
- X、Instagram、note
  - 「#インク沼」等のハッシュタグで写真付きレビューが投稿されている。
  - インク専門サイトではないので、インクレビュー以外の投稿も多くされている。
  - インク専門サイトではないので、検索ワードを工夫する必要がある。
- YouTube
  - 複数種類のインクのレビューをまとめた動画が多い。
  - 動画であるため、必要な情報を得るまで時間がかかる。
  - インク専門サイトではないので、検索ワードを工夫する必要がある。
- 個人ブログ
  - ブログ管理者の保有しているインクのレビューのみ
  - Google検索の検索上位に入っていないことが多い。
  - レビュー記事以外のページもGoogle検索に引っ掛かるので、検索ワードを工夫する必要がある。

上記を踏まえたうえで、InkLogでは以下が差別化・推しポイントとなります。
- インクのレビューのみを投稿できるので、効率よくインクのレビューを探すことができる
- 使用している紙やペンの種類も記載できるようにすることで、よりインク購入後のギャップを減らせるようになる
- 色系統別でカテゴリ分類し、好みの色でインクを探しやすくする
- たくさんのインクのレビューが集まることで、目当てのインクのレビューや好みのインクが探しやすくなる

## ■ 機能候補  

#### MVP
- ログイン・ログアウト機能
- プロフィール機能
  - 投稿したインクレビューを「コレクション」として一覧表示
- 投稿検索機能
  - 色系統別検索機能（カテゴリ検索）
- インクレビュー投稿機能
  - 画像・レビュー・インク名・使用したペン（任意）・使用した紙（任意）を入力
- インクレビュー編集機能
- インクレビュー削除機能
- インクの登録機能
- インクの詳細画面
  - インク名、ブランド名、販売元URL、カテゴリ（色系統）、そのインクに対して投稿されたレビュー一覧を表示
- 投稿・プロフィールのシェア機能（Xへのシェア）

#### 本リリース
- Xでのログイン機能
- 投稿フォーム・検索フォームのオートコンプリート機能
- 投稿フォームにオリジナルインク投稿時のインクレシピ入力欄を追加
- ブックマーク機能・ブックマーク一覧画面をプロフィール画面に追加
- いいね機能・いいね一覧画面をプロフィール画面に追加
- ユーザーフォロー機能
- フォロー・ブックマーク・いいねの通知機能
- 動的OGP
- レスポンシブ対応

## ■ 機能の実装方針予定  
一般的なCRUD以外の実装予定の機能についてそれぞれどのようなイメージ(使用するAPIや)で実装する予定なのか現状考えているもので良いので教えて下さい。

- ログイン・ログアウト機能：gem Devise
- 画像の投稿、画像処理：ActiveStorage, gem MiniMagick
- 検索、オートコンプリート機能：gem ransack, Stimulus Autocomplete

## 画面遷移図

Figma：https://www.figma.com/design/MvG5F5C2rF0MgDMOHdLwh2/%E5%8D%92%E6%A5%AD%E5%88%B6%E4%BD%9C%E7%94%BB%E9%9D%A2%E9%81%B7%E7%A7%BB%E5%9B%B3?node-id=0-1&t=0nvvt43lkM4P9WBR-1

## ER図

dbdiagram.io：https://dbdiagram.io/d/67c6e2c2263d6cf9a02a7603
[![Image from Gyazo](https://i.gyazo.com/3c7225f46080dfa2c73001045dec5e71.png)](https://gyazo.com/3c7225f46080dfa2c73001045dec5e71)