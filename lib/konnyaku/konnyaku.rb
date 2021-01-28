class Konnyaku
  class << Konnyaku
    def run
        tp = TracePoint.new(:raise) do |tp|
            lineno = tp.lineno
            path   = tp.path
            msg = tp.raised_exception.message
            puts "例外:#{tp.raised_exception.class} が発生しました"
            puts "ソースコード: #{path} の #{lineno.to_s} 行目にエラーの原因があります"
            
            msg = translate(msg) 
            puts msg
        end
        tp.enable
    end
  end
end
