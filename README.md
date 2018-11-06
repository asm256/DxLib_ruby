# Dxlib_Ruby

[DxLib](http://dxlib.o.oo7.jp)をrubyから使う

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dxlib_ruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dxlib_ruby

## Usage

    require 'dxlib_ruby'

    DxLib::Functions.ChangeWindowMode(1)
    DxLib::Functions.SetMainWindowText("test - ウィンドウタイトル")
    DxLib::Functions.DxLib_Init

    DxLib::Functions.DrawString(0, 0, "Press ANY KEY\nなにかキーを押してください",
      DxLib::Functions.GetColor(255, 0, 0), 0)

    DxLib::Functions.WaitKey
    DxLib::Functions.DxLib_End

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/asm256/DxLib_ruby

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

- DX Library Copyright (C) 2001-2018 Takumi Yamada.
  - libjpeg Copyright (C) 1991-2013, Thomas G. Lane, Guido Vollbeding.
    this software is based in part on the work of the Independent JPEG Group
  - libpng Copyright (C) 2004, 2006-2012 Glenn Randers-Pehrson.
  - zlib Copyright (C) 1995-2012 Jean-loup Gailly and Mark Adler.
  - libtiff Copyright (c) 1988-1997 Sam Leffler
  - libtiff Copyright (c) 1991-1997 Silicon Graphics, Inc.
  - libogg Copyright (C) 2002-2009 Xiph.org Foundation
  - Mersenne Twister Copyright (C) 1997 - 2002, Makoto Matsumoto and Takuji Nishimura, All rights reserved.
  - Bullet Copyright (c) 2003-2006 Erwin Coumans.
