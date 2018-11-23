module Formula
    def perimetro(x,y)
      y = (x+y) * 2
      print y.to_i
    end
    def area(x,y)
     print x*y
    end
end
  class Rectangulo
    include Formula
    attr_accessor :base, :altura
    def initialize(base, altura)
      @base = base.to_i
      @altura = altura.to_i
    end
    #def lados
      #  print "Base: #{@base} altura : #{@altura}  "
    #end
  end
  
  class Cuadrado
    include Formula
    attr_accessor :lado1, :lado2
    def initialize(lado1,lado2)
      @lado1 = lado1.to_i
      @lado2 = lado1.to_i

    end
    #def lados
       # print " Lado : #{@lado}"
    #end

  end

uno = Cuadrado.new(2,0)
p uno
uno.perimetro
dos = Rectangulo.new(2,3)
p dos
dos.perimetro

