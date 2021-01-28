class Konnyaku
  class << Konnyaku
    def translate(msg)
        case msg
            when /uninitialized constant/
                return msg.gsub(/#{$&}/, "定義されていない定数") + " があります"
            when /undefined local variable or method/
                return msg.gsub(/#{$&}/, "定義されていない変数またはメソッド").gsub(/ for /, " が ").sub(/`|'/, "").gsub(/for/, "") + " にあります"
            when /undefined method/
                return msg.gsub(/#{$&}/, "定義されていないメソッド").gsub(/ for /, " が ").gsub(/`|'/, "") + " にあります"
            when /uninitialized class variable/
                return msg.gsub(/#{$&}/, "初期化されていないクラス変数").gsub(/ for.+$/, "").gsub(/ in /, " が ") + " クラスにあります"
        end 
    end
  end
end
