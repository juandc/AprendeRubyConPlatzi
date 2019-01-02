module Restaurante # Notaron que el nombre no utiliza snake_case? 🙊
  class Chef < Struct.new(:nombre)
    def lavar_manos # Ahora si, snake_case 🐍
      puts "Con aguita y con jabón 🌊"
    end

    def cocinar(platillo, cantidad)
      puts "#{nombre} esta cocinando #{cantidad} #{platillo}(s) 🍕"
    end
  end

  class Meserx
    def vender
      puts "Entrada => Plato fuerte => Postre => Baño 💪"
    end

    # etc etc
  end
end

don_francisco = Restaurante::Chef.new("Don Francisco")
don_francisco.lavar_manos
don_francisco.cocinar("Pizza", 5)