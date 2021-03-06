class Rwath
  class Config < String
    attr_accessor :setting
    def initialize
      @setting = ""
    end

    def delimitor(char: '|')
      @setting.concat(" -b \"#{char}\"")
    end

    def encode(input: 'u', output: 'u')
      @setting.concat(" -u #{validate_encoding(input)},#{validate_encoding(output)}")
    end

    private

    def validate_encoding(str)
      case str.downcase.to_sym
      when :u, :utf8, :"utf-8"
        return 'u'
      when :t, :thai, :tis620, :"tis-620"
        return 't'
      else
        raise "Encoding Error"
      end
    end
  end
end
