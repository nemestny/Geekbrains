X = 3
module M
  class C
    X=2
    class D
      module M
        X = 1 
        puts X # 1  
        puts ::X # 3
      end
    end
  end
end

puts X # 3
puts M::C::X #2
puts M::C::D::M::X #1
