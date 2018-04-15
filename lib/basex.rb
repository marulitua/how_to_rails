class Basex
  # using safe characters for URL
  # this char list will be use as base
  # 
  def self.char_list
    "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
  end

  def self.encode(n)
    out = "";

    base = self.char_list.length
    t = (Math.log10(n) / Math.log10(base)).floor
    begin
      a = (n/(base ** t)).floor
      out = out + self.char_list[a,1]
      n = n - ( a * (base ** t))

      t -= 1
    end while t >= 0

    out
  end

  def self.decode(n)
    base = self.char_list.length
    out = 0
    len = n.to_s.length - 1;
    for i in 0..len
      out = out + self.char_list.index(n[i,1]) * (base ** (len - i))
    end

    out
  end
end
