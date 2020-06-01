# ShinyColors

このgemは、「アイドルマスター シャイニーカラーズ」の情報をRubyで扱えるようにするためのgemです。
[Faker](https://github.com/faker-ruby/faker)、[Rubicure](https://github.com/sue445/rubicure)、[jp_prefecture](https://github.com/chocoby/jp_prefecture)を参考にしています。

## Installation

Gemfileにこちらを追記してください。

```ruby
gem 'shinycolors'
```

その後、こちらを実行してください。

    $ bundle install

もしくは、こちらをコマンドラインで実行してください。

    $ gem install shinycolors

## Usage

### アイドルの参照

```ruby
require 'shinycolors'
```

`ShinyColors.idol_name` でアイドルのObjectを参照できます。

```ruby
ShinyColors.madoka_higuchi # => #<ShinyColors::Idol:0x00007fa2cba35578 @name="樋口 円香", @cv="土屋 李央", @age=17, @blood_type="B型", @birthday="10/27", @zodiac_sign="さそり座", @dominant_hand="右", @birthplace="東京都", @hobby="別にないです", @special_skills="別にないです", @nickname_key=["madoka", "higuchi"], @nickname_kana=["樋口", "円香", "円香先輩"], @key_name=:madoka_higuchi>
ShinyColors.hiori_kazano # #<ShinyColors::Idol:0x00007fa2ca432208 @name="風野 灯織", @cv="近藤 玲奈", @age=15, @blood_type="A型", @birthday="3/4", @zodiac_sign="魚座", @dominant_hand="右", @birthplace="東京都", @hobby="音楽鑑賞、綺麗な景色を探すこと、占い", @special_skills="料理、スケジュール管理", @nickname_key=["hiori"], @nickname_kana=["灯織"], @key_name=:hiori_kazano>
```

また、あだ名で呼び出すこともできます。

```ruby
ShinyColors.kogatan # => #<ShinyColors::Idol:0x00007fa2cc84ec90 @name="月岡 恋鐘", @cv="礒部 花凜", @age=19, @blood_type="B型", @birthday="2/25", @zodiac_sign="魚座", @dominant_hand="左", @birthplace="長崎県", @hobby="うちの手料理、何でも絶品たい！", @special_skills="そっくりな似顔絵ば描けるたい！", @nickname_key=["kogane", "kogatan"], @nickname_kana=["恋鐘", "こがたん"], @key_name=:kogane_tsukioka>
ShinyColors.choko # => #<ShinyColors::Idol:0x00007fa2cb970f48 @name="園田 智代子", @cv="白石 晴香", @age=17, @blood_type="A型", @birthday="2/24", @zodiac_sign="魚座", @dominant_hand="右", @birthplace="千葉県", @hobby="スイーツ店巡り", @special_skills="たくさん食べられること", @nickname_key=["choko"], @nickname_kana=["智代子", "ちょこ"], @key_name=:chiyoko_sonoda>
ShinyColors.tenka # => #<ShinyColors::Idol:0x00007fa2cc81bb88 @name="大崎 甜花", @cv="前川 涼子", @age=17, @blood_type="A型", @birthday="12/25", @zodiac_sign="山羊座", @dominant_hand="右", @birthplace="富山県", @hobby="お昼寝、ネットサーフィン、アニメ、ゲーム", @special_skills="特に無い", @nickname_key=["tenka"], @nickname_kana=["甜花"], @key_name=:tenka_osaki>
```

あだ名は、[idol.yml](/data/idol.yml)に`nickname_key`というkeyで定義しています。

ランダムにアイドルを呼び出したいときは、`ShinyColors::Idol.sample` を使ってください。
```ruby
ShinyColors::Idol.sample # => #<ShinyColors::Idol:0x00007fa2ca437910 @name="杜野 凛世", @cv="丸岡 和佳奈", @age=16, @blood_type="B型", @birthday="10/19", @zodiac_sign="天秤座", @dominant_hand="左", @birthplace="鳥取県", @hobby="少女漫画、芸道全般", @special_skills="折り紙、百人一首", @nickname_key=["rinze"], @nickname_kana=["凛世"], @key_name=:rinze_morino>
```

また、こちらのメソッドはUnitクラスにも定義されています。
```ruby
ShinyColors::Unit.sample # => #<ShinyColors::Unit:0x00007fa2ca439738 @name="ALSTROEMERIA", @name_jp="アルストロメリア", @color="パステルピンク", @key_name=:alstroemeria>
```



### アイドルの情報の呼び出し
```ruby
toru = ShinyColors.toru

toru.name # => "浅倉 透"
toru.cv # => "和久井 優"
toru.age # => 17
toru.blood_type # => "B型"
toru.birthday # => "5/4"
toru.zodiac_sign # => "おうし座"
toru.dominant_hand # => "右"
toru.birthplace # => "東京都"
toru.hobby # => "映画やドラマを見ること"
toru.special_skills # => "人の顔を覚えること"
toru.nickname # => ["浅倉", "透", "透先輩"]
```

### ユニットの情報の呼び出し
```ruby
lantica = ShinyColors.lantica

lantica.name # => "L'Antica"
lantica.name_jp # => "アンティーカ"
lantica.color # => "ヴァイオレット"
lantica.idols
# => {:mamimi_tanaka=>{:name=>"田中 摩美々", :cv=>"菅沼 千紗", :age=>18, :birthplace=>"神奈川県", :birthday=>"5/24", :nickname_key=>["mamimi"], :nickname_kana=>["摩美々"]},
#     :kiriko_yukoku=>{:name=>"幽谷 霧子", :cv=>"結名 美月", :age=>17, :birthplace=>"青森県", :birthday=>"9/23", :nickname_key=>["kiriko"], :nickname_kana=>["霧子"]},
#     :kogane_tsukioka=>{:name=>"月岡 恋鐘", :cv=>"礒部 花凜", :age=>19, :birthplace=>"長崎県", :birthday=>"2/25", :nickname_key=>["kogane", "kogatan"], :nickname_kana=>["恋鐘", "こがたん"]},
#     :yuika_mitsumine=>{:name=>"三峰 結華", :cv=>"成海 瑠奈", :age=>19, :birthplace=>"福島県", :birthday=>"1/16", :nickname_key=>["yuika", "mitsumine"], :nickname_kana=>["結華", "三峰"]},
#     :sakuya_shirase=>{:name=>"白瀬 咲耶", :cv=>"八巻 アンナ", :age=>18, :birthplace=>"高知県", :birthday=>"6/27", :nickname_key=>["sakuya"], :nickname_kana=>["咲耶"]}}
```

## License

[MIT License](https://opensource.org/licenses/MIT).
