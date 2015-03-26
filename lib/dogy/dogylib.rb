module Dogy
  
  def self.parse(args,location)
    list = []
    m = nil
    args.each do |arg|
      if !m && location.private_methods.include?(arg.to_sym)
        method = location.method(arg.to_sym)
        m = {
          :method => method,
          :size => method.parameters.length,
          :args => []
        }
        list << m
      elsif m
        m[:args] << arg if m[:args].length < m[:size]
      end
    end
    list
  end
  
  
  def self.eat(args,location)
    result = []
    parse(args,location).each do |m|
      m[:args].map!{|v| eval(v)}
      result << m[:method].call(*m[:args])
    end
    result
  end
  
end
