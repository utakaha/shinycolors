# ShinyColors

このgemは、「アイドルマスター シャイニーカラーズ」の情報をRubyで扱えるようにするためのgemです。
[Faker](https://github.com/faker-ruby/faker)や[Rubicure](https://github.com/sue445/rubicure)を参考にしています。

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
`ShinyColors.idol_name` でアイドルのObjectを参照できます。

```ruby
ShinyColors.higuchi_madoka # => #<ShinyColors::Idol:0x00007fadba0c6ee8 @name="樋口 円香", @cv="土屋 李央", @age=17, @birthplace="東京都", @birthday="10/27", @nickname=["madoka", "higuchi"]>
ShinyColors.hiori_kazano # => #<ShinyColors::Idol:0x00007fadba0df088 @name="風野 灯織", @cv="近藤 玲奈", @age=15, @birthplace="東京都", @birthday="3/4", @nickname=["hiori"]>
```

また、あだ名で呼び出すこともできます。

```ruby
ShinyColors.kogatan # => #<ShinyColors::Idol:0x00007fadb9921620 @name="月岡 恋鐘", @cv="礒部 花凜", @age=19, @birthplace="長崎県", @birthday="2/25", @nickname=["kogane", "kogatan"]>
ShinyColors.choko # => #<ShinyColors::Idol:0x00007fadb933f540 @name="園田 智代子", @cv="白石 晴香", @age=17, @birthplace="千葉県", @birthday="2/24", @nickname=["choko"]>
ShinyColors.tenka # => #<ShinyColors::Idol:0x00007fadb99f3e90 @name="大崎 甜花", @cv="前川 涼子", @age=17, @birthplace="富山県", @birthday="12/25", @nickname=["tenka"]>
```

あだ名は、[idol.yml](/data/idol.yml)にnicknameというkeyで定義しています。

### アイドルの情報の呼び出し
```ruby
toru = ShinyColors.toru

toru.name # => "浅倉 透"
toru.cv # => "和久井 優"
toru.age # => 17
toru.birthplace # => "東京都"
toru.birthday # => "5/4"
```


## License

[MIT License](https://opensource.org/licenses/MIT).
