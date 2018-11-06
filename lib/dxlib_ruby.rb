# frozen_string_literal: true

require 'dxlib_ruby/version'
require 'fiddle/import'
require 'fiddle/types'

# DxLib
module DxLib
  # Functions
  module Functions
    extend Fiddle::Importer
    # ポインタサイズで読み込むDLLを変える
    path = case sizeof('void*')
           when 4 then '../../dll/DxLib.dll'
           when 8 then '../../dll/DxLib_x64.dll'
           else
             raise "Unknown ptr size: #{sizeof('void*')} or not windows."
           end
    dlload File.expand_path(path, __FILE__)

    class << self
      private

      def dx_extern(sig)
        md = sig.match(/(\w+\s*\*?)\s+(\w+)\s*(\(.*\))/)
        extern "#{md[1]} dx_#{md[2]}#{md[3]}"
        class_eval(<<~KLS, __FILE__, __LINE__ + 1)
          class << self
            alias_method :#{md[2]}, :#{"dx_#{md[2]}"}
          end
        KLS
      end
    end
  end

  # typealias
  require 'dxlib_ruby/types'
  # DLLから関数の読み込み
  require 'dxlib_ruby/functions'

  # UTF8を指定する。
  case __ENCODING__
  when Encoding::UTF_8 then Functions.SetUseCharCodeFormat(65_001)
  end
end
