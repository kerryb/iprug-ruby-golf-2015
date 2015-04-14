class Golf
  def hole_1 a
    ((a>?Z??a:?A)..a).map.with_index{|c,i|c+c*i}.join"\n"
  end

  def hole_2 a
    a.split.sort_by{|w|w.upcase.chars.partition{|x|x !~/AEIOU/}.map(&:length)<<w.upcase}.join" "
  end

  def hole_3 a
    (1..a).select{|x|a%x==0}
  end

  def hole_4 x,y
    ?++?-*x+"+\n"+(?|+" "*x+?|"\n")*y+?++?-*x+?+
  end

  def hole_5 a,b
    a.upcase.chars.grep(/\w/).sort==b.upcase.chars.grep(/\w/).sort
  end

  def hole_6 a
    (["to you"]*3).insert(2,"dear #{a}").map{|x|"Happy birthday #{x}"}.join"\n"
  end

  def hole_7 a,n
    a.gsub(/\W/,"").upcase.bytes.map{|x|(x-65+n)%26+65}.map(&:chr).each_slice(5).map(&:join).join" "
  end

  def hole_8 a
    (?A..?Z).map{|c|"#{c}: #{a.upcase.count c}"}.join"\n"
  end

  def hole_9 a
    a.values.flat_map(&:values).inject{|x,y|x.map{|k,v|[k,v+y[k]]}}.to_h
  end
end
