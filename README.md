# Platzi Ruby Starter

[![emoji-log](https://cdn.rawgit.com/ahmadawais/stuff/ca97874/emoji-log/non-flat-round.svg)](https://github.com/ahmadawais/Emoji-Log/)
[![MIT license](https://img.shields.io/badge/license-MIT-brightgreen.svg)](http://opensource.org/licenses/MIT)
[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/juandc/platzi-ruby-starter/issues)

**:gem: Impresiones y Primeras Líneas de Código con Ruby :strawberry::rugby_football:**

**Puedes entrar a [platzi.com/cursos/ruby](https://platzi.com/cursos/ruby/) para encontrar más información sobre el curso.**

---

¡Si señor! Un desarrollador de JavaScript se animó a tomar el [Curso de Ruby](https://platzi.com/cursos/ruby/) en Platzi :tada:.

En este README voy a escribir/documentar todo lo que voy aprendiendo a medida que avanzo con el curso :memo:. El objetivo es que, si me gusta, termino de prepararme para tomar el [Curso de Creación de APIs con Ruby on Rails](https://platzi.com/cursos/ror/) y sacarl un mayor provecho a aprender un nevo lenguaje trabajando lo que más me gusta: Construir Aplicaciones con Microservicios :notes: y consumir APIs con React.js :atom_symbol: y GraphQL 🍇 si es posible.

**¿Por qué estudio Ruby?** El profe [@simon0191](https://twitter.com/simon0191) (que trabaja en Uber :flushed::open_mouth:) me convencio con solo los primeros vídeos de que no pierdo nada aprendiendo algo nuevo :muscle:.

:nerd_face: **#NuncaParesDeAprender** :green_heart:.

---

## Tabla de Contenidos

- [¿Qué onda con Ruby?](#thinking-qué-onda-con-ruby)
- [Ventajas y Desventajas](#shaved_ice-ventajas-y-desventajas)
- [Bases del lenguaje](#basketball-bases-del-lenguaje)
  - [Variables](#variables)
  - [Métodos](#métodos)
  - [Tipos de datos](#tipos-de-datos)
    - [Números](#números)
    - [Strings](#strings)
    - [Símbolos](#símbolos)
    - [Arrays](#arrays)
    - [Hashes](#hashes)
    - [Rangos](#rangos)
  - [Condicionales](#condicionales)
  - [Ciclos](#ciclos)
  - [Bloques, Procs y Lambdas](#bloques-procs-y-lambdas)
    - [Bloques](#bloques)
    - [Procs](#procs)
    - [Lambda](#lambda)
- [Programación Orientada a Objetos](#drum-programación-orientada-a-objetos)
  - [Clases](#clases)
  - [Módulos](#módulos)
- [Concurrencia vs Paralelismo](#space_invader-concurrencia-vs-paralelismo)
  - [Paralelismo](#paralelismo)
  - [Concurrencia](#concurrencia)
  - [¿Qué soporta Ruby?](#qué-soporta-ruby)
- [Gemas](#gem-gemas)
  - [Manejo de Dependencias](#manejo-de-dependencias)
  - [Bundler](#bundler)
  - [Gemas y Repositorios interesantes](#gemas-y-repositorios-interesantes)

## :thinking: ¿Qué onda con Ruby?

Ruby es un lenguaje de programación _open source_ creado por [Yukihiro "Matz" Matsumoto](https://en.wikipedia.org/wiki/Yukihiro_Matsumoto) en 1995, aunque no se volvio popular sino hasta 2005, gracias a _Ruby on Rails_.

Entre sus características podemos destacar las siguientes:

- :raised_hands: **Dinámico**: No debemos especificar los tipos de datos cuando declaramos variables, incluso podemos cambiar el tipo de dato a lo largo de la ejecución.
- :timer_clock: **Interpretado**: No necesitamos compilar nuestro código para despues ejecutarlo, más bien, utilizamos algún iterprete para leer y ejecutar el código línea por línea. El interprete por defecto se llama **CRuby** pero existen muchas alternativas interesantes como [JRuby](https://www.jruby.org/), [MRuby](https://mruby.org/), [Rubinius](https://rubinius.com/), entre otras.
- :hammer: **Orientado a Objetos**: Los objetos son conjuntos de propiedades y métodos. En Ruby todo es un objeto, los strings son objetos, los números son objetos, ¡todo es un objeto! Cualquier "cosa" que encontramos en Ruby tiene métodos muy útiles para obtener resultados inetersantes, cualquier_cosa punto cualquier_otra_cosa puede incluso devolver otra_cosa que también es un objeto otros con métodos: `cosa_cualquiera.método_cualquiera.metodo_del_metodo.tambien_soy_objeto.etc.etc.etc`.

**:massage: El objetivo de Ruby es aumentar nuestra felicidad y productividad al programar :muscle:**

La lectura y escritura de código son muy parecidas a trabajar con lenguaje humano (en ingles) :nerd_face:.

## :shaved_ice: Ventajas y Desventajas

**Ventajas**:

- :family: La comunidad es muy grande
- :notes: Tenemos muchas librerías disponibles (mejor conocidas como "gemas")
- :small_red_triangle: Updates y parches de seguridad constantes
- :older_woman: Tanto tiempo lleva que ahora es un lenguaje muy maduro, no tendremos problemas para llevarlo a producción

**Desventajas:**

- :turtle: Por ser interpretado puede ser lento, debe leerse y entenderse a sí mismo antes de lograr ejecutarse
- :volcano: Consume mucha memoria
- :repeat: No soporta paralelismo cuando utilizamos el interprete `cruby`
- :money_mouth_face: No tiene una compañia millonaria detras, es completamente dirigido por la comunidad (algo bueno y malo al mismo tiempo :confused::grimacing:)
- :chart_with_downwards_trend: Viene bajando en popularidad desde hace algun tiempo (pero todo bien, sigue y seguira en el top 10)

**Cosas interesantes:**

- :keyboard: [Metaprogramación](https://codigofacilito.com/articulos/que-es-metaprogramacion): Programas que escriben o manipulan otros programas, incluso a sí mismos ♻
- :minibus: [Domain Specific Languages](https://eamodeorubio.wordpress.com/2010/09/13/%C2%BFque-son-los-dsl-domain-specific-languages/): Lenguajes especializados en modelar o resolver un conjunto específico de problemas (tampoco entendi nada pero pos lo comento :thinking::sweat_smile:)

## :basketball: Bases del lenguaje

Antes de comenzar, recuerda que puedes utilizar el comando `irb` para ejecutar tu código línea por línea o, si prefieres, puedes ejecutar los archivos `.rb` utilizando el comando `ruby archivito.rb`.

### Variables

Como dije antes, Ruby es un lenguaje dinámico, no necesitamos especificar el tipo de dato que utilizamos para cada variable. Además, tampoco debemos escribir `var`, `const`, `let` o alguna palabra clave para declarar variables, con solo decir `esto = aquello` es más que suficiente:

```ruby
mi_variable = "algo genial"
```

Por cierto, la convención para declarar variables es :snake: [Snake Case](https://en.wikipedia.org/wiki/Snake_case): todo en minusculas y separando las palabras con guiones bajos.

### Métodos

**¿Recuerdas que Ruby intenta parecerse al ingles natural?** Pues, la verdad que se lo tomaron muy pero muy en serio y no pierden oportunidad para demostrarlo :joy:.

Muchos métodos que podriamos entender como preguntas tipo, ¿este número es par? requieren un signo de interrogación (:question:) al final (por ejemplo, `number.even?`). Esta solución me parece genial ya que, vengo acostumbrado a JavaScript y la convención seria más bien parecido a algo como `number.isEven()` (de hecho, este ejemplo en particular no existe por defecto en JS :sob:).

```ruby
5.even      # ERROR!
5.even()    # ERROR!
5.isEven    # ERROR!
5.isEven()  # ERROR!

5.even?     # false 👏👏
```

Solo cuando un método acaba con signo de admiración (:exclamation:) se aplica el resultado del método a la variable. Es decir, si `x = "helo"` y despues la transformo a mayúsculas con `x.upcase`, en realidad, `x` sigue teniendo su valor inicial (`"hello"`) y si quiero aplicar el resultado del método a la variable inicial debemos utilizar el signo de admiración (`x.upcase!`):

```ruby
x = "hello"
puts x.upcase  # "HELLO" 👍
puts x         # "hello" 😛

puts x.upcase! # "HELLO" ❕
puts x         # "HELLO" ✨
```

> Para ver todos los métodos disponibles de cada objeto (osea, de todo) puedes utilizar el también método `cualquier_cosa.methods`.

### Tipos de datos

#### Números

Podemos utilizar números enteros como 5, 4 y 100, o, números flotantes (es decir, con decimales) como 4.67, 100.76, etc.

Con Ruby todo es un objeto y los números no son la excepción, tenemos muchos métodos muy interesantes para jugar con los números:

```ruby
i = 5     # integer
i.odd?    # true
i.even?   # false
4/5       # 0 (las operaciones entre enteros solo devuelven otros enteros)

f = 4.12  # float
f.odd?    # ERROR!! (esto no es un entero)
4.0/5.0   # 0.8 (ahora si, con decimales)
4/5.0     # también 0.8
```

#### Strings

Ruby nos permite declarar variables con comillas dobles (`"string"`), comillas simples (`'string'`) y los comandos bien extraños de `%q(string)` y `%Q(string)`. También podemos utilizar variables u operaciones matemáticas dentro de los strings (con una syntaxis muy parecida a la de los _template literals_ en JavaScript: `#{variable}` :o) pero, solo funciona en algunos casos:

```ruby
name = "Juan Rojas"
age  = 23

custom_string = "Hola, #{name}" # "Hola, Juan Rojas" 👍
other_string  = 'Edad: #{age}'  # 'Tengo #{age} años' 👎

strange_string = %Q(Nombre: #{name})  # Nombre: Juan Rojas 👍
another_string = %q(Edad: #{edad})    # Edad: #{edad} 👎

# También podemos hacer todo tipo de operaciones:
math_str1 = "1 + 1 = #{1 + 1}"       # "1 + 1 = 2" 👍
math_str2 = "Aleatorio: #{rand(10)}" # "Aleatorio [cualquier número entre 0 y 10]" 👍
```

Por su puesto, en Ruby todo es un objeto y los strings tampoco son la excepción, tenemos muchos métodos y los que más vamos a utilizar (y los más cheveres :grimacing:) son estos:

```ruby
name = "Juan Rojas"

name.upcase   # "JUAN ROJAS" ⏫
name.downcase # "juan rojas" ⏬
name.swapcase # "jUAN rOJAS" 🏄

name.empty?               # false 🌽
name.include? "s"         # true 🔠
name.gsub("Juan", "Jose") # "Jose Rojas" 🔄

"  ola  ".strip # "ola" (ahora sin espacios, es como `.trim()` en JS 👍)
```

**Recordatorio de suma importancia**: No importa cuantas veces aplicamos métodos extraños sobre nuestra variable `name`, ella sigue teniendo el mismo valor con el que la declaramos originalmente. Si quieremos cambiarla de raiz debemos utilizar el signo de admiración (❕) al final:

```ruby
puts name         # "Juan Rojas"
puts name.upcase  # "JUAN ROJAS"
puts name         # "Juan Rojas" 😱
puts name.upcase! # "JUAN ROJAS"
puts name         # "JUAN ROJAS" 🎉
```

#### Símbolos

Los símbolos son algo muy parecido a los strings pero mucho más genial. Nos ayudan a ocupar menos espacio en memoria y a impresionar a cualqueir novato que se pase por nuestro código :smirk:.

Ruby asigna un identificador único para cada variable que asignamos, es decir, dos cosas cn el mismo ID son exactamente los mismo, así que, dos cosas con ID diferente son dos cosas completamente diferentes. Por si no fui suficientemente claro les explico con un ejemplo:

```ruby
string_1 = "un texto"
string_2 = "un texto" # el string es el mismo peeeero

string_1.object_id    # 47227207790240
string_2.object_id    # 47227207969220 (los IDs son diferentes 😱)
```

Esto significa que, aunque dos variables tengan el mismo valor, Ruby los guarda y los utiliza como dos cosas completamente diferentes.

Aquí entran los símbolos: _"Los Símbolos son la representación de algún valor que nos permite ahorrar la memoria que utilizamos al almacenar cada instancia con el mismo valor en forma string"_. De nuevo, si no fui suficientemente claro les explico con ejemplo:

```ruby
# los símbolos se declaran con dos puntos al inicio (:)
:pepe
:pepe.object_id   # "1256668" 👀

# ahora guardemos :pepe en una variable:
name = :pepe
name.object_id    # "1256668" (¡tienen el mismo id! 😱)

# ahora guardemos a `name` en oootra variable:
name_2 = name
name_2.object_id  # "1256668" (¡también tienen el mismo id! 😱)
```

Ahora las preguntas importantes: **¿Podemos asignar algun valor a nuestros símbolos? ¿Qué significa `:pepe` realmente?** :thinking::flushed:

Bueno, `:pepe` es la llave y su valor; la pregunta y su respuesta. En realidad, `:pepe` significa lo que tu quieras que signifique. De hecho, siempre que algo significa `:pepe`, Ruby sabe que hablamos con `:pepe` disfrazado de alguna otra variable.

> Conclusión: **`:pepe` es `:pepe`**, fin de la discusión.

Si esto fue demasiada filosofía para tu gusto, puedes encontrar mejor información con los siguientes artículos:

- [Entendiendo los Símbolos en Ruby](https://predeciblementeimpredecible.wordpress.com/2005/11/15/entendiendo-los-simbolos-en-ruby/)
- [Syntactic sugar methods in Ruby - Ruby Magic](https://blog.appsignal.com/2018/02/20/ruby-magic-syntactic-sugar-methods.html)

#### Arrays

Los Arrays nos permiten almacenar multiples valores de cualquier tipo en una sola variable, es decir, son exactamente lo mismo que en otros lenguajes como JavaScript :sweat_smile::

```ruby
animals = ["cat", "dog", "mouse"]

animals.size  # 3
animals[0]    # "cat"
animals[-1]   # "mouse" - los números negativos cuentan de para atras 😮)
animals[100]  # nil - no existe :P

animals.sort            # ordenados alfabeticamente
animals.include? "cow"  # false
animals + ["cow"]       # ["cat"..."cow"] - nuevo array con el contenido de los otros
animals - ["mouse"]     # ["cat","dog"] - adios a los elementos que se repiten 👋

animals.map { |animal| animal.upcase } # ["CAT","DOG"...] - el mismo arreglo con los elementos modificados
animals.select { |animal| animal.include? "a" } # ["cat"] - solo los elementos que cumplen las condiciones
animals.count { |animal| animal.include? "a" } # 1 - cuenta los elementos que cumplen las condiciones

animals<<"cow"      # agrega elementos permanentemente 👀
animals.push "cow"  # lo mismo pero con mejor sintaxis
```

#### Hashes

Los Hashes no son más que el nombre de Ruby para lo que, en JavaScript conocemos como "Objetos", en Python como "Dicionarios", en PHP como "Arrays asociativos" y en otros lenguajes como mapas.

Así como con los arrays, podemos almacenar multiples valores/variables pero, en vez de solo agregar los valores, podemos asignar "nombres clave" para los valores que vamos a guardar, es decir, los guardamos en forma de `"llave" => valor`:

```ruby
student_info = {
  "name" => "Juan",
  "last_name" => "Castro"
}
student_info["age"] = 15

puts student_info # {"name"=>"Juan","last_name"=>"Castro","age"=>15}
puts student_info["name"] # "Juan"

student_info.has_hey? "name"      # true 👍
student_info.has_value? "Castro"  # true 👍

student_info.invert # {"Juan"=>"name","Castro"=>"last_name",15=>"age"}
student_info.merge({"course"=>"Ruby")} # {"name"=>"Juan" ... "course"=>"Ruby"}
student_info.transform_values(&:upcase) # si, transforma los valores, pero en este caso da error porque no podemos pasar números a mayúsculas
```

#### Rangos

Muchas veces, cuando trabajamos con aplicaciones en React pasamos por momentos de mucha tensión al intentar iterar entre una cantidad de elementos que no tenemos disponible en el momento. Es decir, si por ejemplo, queremos añadir dos o más rueditas de "cargando" antes de mostrar el contenido real de la aplicación, tenemos dos opciones: copiar y pegar una línea de JSX (:-1:) o, utilizar alguna función medio rara para generar un array con una cierta cantidad de números (la forma más sencilla hasta el momento es: `[...Array(x).keys()]`).

Esto es MUY TEDIOSO. Por defecto, no tenemos formas de generar una cantidad ordenada de números y mucho menos de letras. En cambio, Ruby tiene un método lo mas de simple y sencillo de utilizar, basta con utilizar parentesis y puntos suspuensivos:

```ruby
(1..5)      # 1, 2, 3, 4, 5
(1...5)     # 1, 2, 3, 4
('a'..'d')  # 'a', 'b', 'c', 'd'
```

Me encanta la syntaxis, sobretodo cuando se utilizar junto con otros métodos, cliclos o condicionales (ya lo vemos en la sección de [#Ciclos](#ciclos)).

### Condicionales

NO hay parentesis. NO hay corchetes. Solo utilizamos la tabulación:

```ruby
if something
  do_this
elsif
  do_that
else
  do_nothing # 😛
end
```

Lo único raro es la palabra `end` al final, de resto todo bien :grimacing:...

```ruby
role = :admin

if role == :user
  puts "Hola, usuario mortal 😏"
if role == :admin
  puts "Sos un admin, bro 😏"
elsif role == :superadmin
  puts "Sr. Superadmin, pase usted, bro 😏"
else
  puts "¿Cuál es tu rol, bro 😏?"
end
```

### Ciclos

Tampoco utilizamos corchetes o paréntesis. Además de los ciclos normales (`for`, `while`, `loop do`, etc), también tenemos métodos para iterar sobre números o arrays:

```ruby
# White way - normal
while_number = 1
while while_number < 5 do
  puts "Hey, #{while_number}"
  while_number += 1
end

# Loop way - normal
loop_number = 1
loop do
  puts "Hey, #{loop_number}"
  loop_number += 1
  break if loop_number >= 5
end

# For way - normal (with ranges 😮)
for for_number in 1..4 do
  puts "Hey, #{for_number}"
end

# Array "Each" lamda - I like it :)
# - I do this all time in React with `.map` 😂
[1,2,3,4].each { |each_number| puts "Hey, #{each_number}" }

# Integer "Times" lambda - I NEED IT IN JS!!!
# - AWESOMEEEEE
4.times { |times_number| puts "Hey, #{time_number}" }

# De todas estas formas devolvemos la misma respuesta:
# => "Hey 1"
# => "Hey 2"
# => "Hey 3"
# => "Hey 4"
```

### Bloques, Procs y Lambdas

#### Bloques

Los **bloques** son una sintaxis (muy extraña :alien:) que utilizan algunos métodos para ejecutarse:

```ruby
variable.metodo { |x| some stuff with x }
```

De hecho, si lo recuerdas bien, hemos utilizado estos bloques en métodos como el `.each`:

```ruby
[1,2,3].each { |number| puts number * 2 } # 2,4,6
[1,2,3].count { |number| number.odd? } # 2 (1 y 3)
```

¡Pero Atentención! Uno de mis ultimos grandes descubrimiento (:joy:) fue que también tenemos sintaxis agrandada (con mayor comodidad) 👀:

```ruby
[1,2,3].each do |number|
  if number.odd?
    new_number = "#{number}: Este número NO es par"
  else
    new_number = "#{number}: Este SI es par 😬"
  end

  puts new_number
end
```

¡Pero Atentención! Aquí encontramos un pequeño dilema: **¡Los bloques NO son objetos!**

![whaaaaa](https://data.whicdn.com/images/62970198/large.png)

Leiste bien. A pesar de que "En Ruby todo es un objeto", los bloques solo son una sintaxis alieligena (:alien:) y nada más. Y bueno, es algo normal que todos podemos superar. Pero no. A Ruby no le importa si lo superamos o no. Tiene que ser el lenguaje "perfecto" y punto.

#### Procs

Les presento a los **Procs** (un nombre corto para "procedure"): Bloques de código con las funcionalidades de un obeto común y corriente que nos permite reutilizar nuestro código en diferentes métodos.

A pesar de que la ejecución es un poco más lenta, nos puede permitir reutilizar bastante código.

La sintaxis seria un poquitín distinta, solo debemos utilizar `Proc.new` antes de escribir el verdadero proc en forma de bloque:

```ruby
cool_proc = Proc.new { |x| puts x*2 }
cool_proc.call(7) # 14
cool_proc.call(10) # 20
```

Incluso podemos no necesitar pasar ningun argumento para ejecutar los procs:

```ruby
proc_no_arg = Proc.new { puts "Look mom, no args!" }
proc_no_arg.call # Look mom, no args!
```

Para reutilizar nuestros procs en diferentes métodos podemos utilizar el caracter `&`, así le pedimos a Ruby que convierta nuestro proc en un bloque y se ejecute correctamente:

```ruby
proc_x2 = Proc.new { |x| puts x*2 }

[1,2,3].each(&proc_x2) # 2,4,6
[7,8,11].each(&proc_x2) # 14,16,22
```

#### Lambdas

Las **labmdas** son funciones anónimas (es decir, funciones sin nombre) muy parecidas a los procs, pero con algunas diferencias. La sintaxis es, la palabra `lambda` seguida del bloque que queremos reutiliza. Tambien utilizamos el `&` para reutilizarla en los métodos que se ejecutan con sintais de bloque:

```ruby
lamda_x2 = lambda { |x| puts x*2 }
[1,2,3].each(&lambda_x2) # 2,4,6
[7,8,11].each(&lambda_x2) # 14,16,22
```

Hasta ahora no hay ninguna diferencia entre Lambdas y Procs, de hecho, si analizamos las lambdas podemos encontrar que son de tipo proc:

```ruby
my_proc = Proc.new { puts "Hello world" }
my_lambda = lambda { puts "Hello World" }

my_proc.class # returns 'Proc' 🆗
my_lambda.class  # returns 'Proc' 🙊
```

Claramente deben tener alguna diferencia, y si, efectivamente. A diferencia de los procs, las lambdas son un poco más estrictas con la cantidad de argumentos y parámetros:

```ruby
my_proc = Proc.new { |x| puts "Hello, #{x}" }
my_proc.call      # No arguments, returns nil
my_proc.call(1)   # "Hello, 1"
my_proc.call(1,2) # "Hello, 1" (what about 2?)

my_lambda = lambda { |x| puts "Hello, #{x}" }
my_lambda.call      # ArgumentError: wrong number of arguments (0 for 1)
my_lambda.call(1)   # "Hello, 1"
my_lambda.call(1,2) # ArgumentError: wrong number of arguments (2 for 1)
```

> Si quieres más información sobre bloques, procs y lambdas puedes leer este artículo de **@awaxman11** :clap::clap::
> - [What is the difference between Blocks, Procs and Lambdas in Ruby?](http://awaxman11.github.io/blog/2013/08/05/what-is-the-difference-between-a-block/)

## :drum: Programación Orientada a Objetos

### Clases

Recordando que **los objetos son conjuntos de propiedades y métodos**, vamos a empezar con que, al igual que el resto de bloques de código, las clases NO utilizan corchetes sino la palabra reservada `end` al final de la declaración:

```ruby
class Hello
  # ...
end
```

En vez de utilizar la función `contructor` para inicializar las clases utiizamos el nombre de `initilize` :ok:. Lo interesante es que, los constructores y cualquier otra función que programamos puede o no necesitar los parentesis. Si nuestra función NO recibe parametros, TAMPOCO necesitamos parentesis :tada::

```ruby
class Hello
  def initialize() # NO SIR 👎 -Is this JS? :P
  end

  def initialize # OHH YEAH! 😎
  end
end
```

¡La forma de configurar variables de instancia es asombrosa! En vez de utilizar `this.variableDeInstancia` basta con declarar las variables con `@`:

```ruby
class Hello
  def initialize(name = "World")
    @name = name # 👏👏👏
  end
end

hello = Hello.new("Juancho")
```

Y, si piensas que esto del `@` esta genial, ¡esperate tantito a ver cómo se declaran los _getters_ y _setters_! (SPOILER: **¡¡NO TIENES!!** :scream::scream::scream:).

**Método #1** (Copiar y pegar):

```ruby
class Hello
  def initialize(name = "World")
    @name = name
  end

  # el getter (Hello.name)
  def name
    @name
  end

  # el setter (Hello.name = "Nuevo nombre")
  # - un `=` luego del nombre indica que es un setter
  def name=(new_name)
    @name = new_name
    self # obligatorio
  end
end
```

**Método #2** (utilizando `attr_accessor`):

```ruby
class Hello
  # Esta solita línea genera los getters y setters
  # de forma automática 😮
  attr_accessor :name, :otra_variable, :mas_variables

  def initialize(name = "World")
    @name = name
  end
end
```

**Método #3** (utilizando `Struct.new`):

```ruby
# Esta solita línea genera el constructor, los
# getters y los setters de forma automática 😮
class Hello < Struct.new(:name)
  # solo debemos escribir nuestros métodos custom 👏👏👏
end
```

**Método #4** (reduciendo `Struct.new`):

```ruby
# Lo mismo que la anterior pero en una sola línea ¬¬
Hello < Struct.new(:name)
```

### Módulos

Ya sabemos que las clases nos permiten agrupar funcionalidades que despues podemos customizar para obtener resultados diferentes. Bueno, así como las clases son agrupaciones de funciones y propiedades, **los módulos son agrupaciones de clases** que nos permiten, eso mismo (:stuck_out_tongue_closed_eyes:), agrupar diferentes clases con funcionalidades similares en un solo módulo.

Por ejemplo, el módulo `Restaurante` puede tener las clases `Chef` y `Meserx`, o, el módulo `Reports` puede almacenar las clases `EmailReporter` y `ExcelReporter`.

Las clases o funcionalidades que hacen cosas similares trabajan dentro del mismo "contenedor".

```ruby
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
don_francisco.lavar_manos         # Con aguita y con jabón 🌊
don_francisco.cocinar("Pizza", 5) # Don Francisco esta cocinando 5 Pizza(s) 🍕
```

## :space_invader: Concurrencia vs Paralelismo

### Paralelismo

Conocemos al **paralelismo** como dos (o más) tareas que se ejecutan **al mismo tiempo**, de verdad, en el mismo instante.

Pero, esto solo nos deja otra pregunta: ¿Cómo carambas es posible que dos procesos corran al mismo tiempo si, ¡una unidad de procesamiento solo puede ejecutar una cosa a la vez!? Aunque no lo creas, la respuesta es que Una sola unidad de procesamiento NO PUEDE EJECUTAR MÁS DE UN PROCESO A LA VEZ, necesitamos una unidad por cada proceso que queremos ejecutar en paralelo.

### Concurrencia

Por su puesto, esto nos lleva a la **concurrencia**: dos tareas que _en teoria_ se ejecutan al mismo tiempo pero, en realidad, se ejecutan subprocesos de cada tarea en una sola unidad de procesamiento.

Es decir, la concurrencia es como una persona, solo puede hacer una cosa a la vez pero puede ir haciendo varias cosas a la vez (por ejemplo, cuando cocinamos lentejas, en teoria "solo estas cocinando lentejas" pero no puedes hacer cada subtarea al mismo tiempo), mientras que, el paralelismo puede trabajar en diferentes tareas porque podemos encontrar diferentes trabajadorxs/procesadores realizando cada tarea (por ejemplo, cuando todo el grupo decide cocinar las lentejas, une pica el tomate mientras otre llora con la cebolla y así :wink:).

![Concurrent vs Parallel Coffe Machines](https://joearms.github.io/images/con_and_par.jpg)

### ¿Qué soporta Ruby?

Así como mencionamos un poco atras (en la sección de "[desventajas](#shaved_ice-ventajas-y-desventajas)"), Ruby **NO soporta** el paralelismo cuando utilizamos el interprete `cruby`, nisiquiera si nuestro procesador tiene multiple _cores_. Sin embargo, SÍ podemos cambiar de contexto cuando realizamos operaciones por fuera del interprete, así como operaciones de lectura y escritura del disco. Debido a que estos trabajos se realizan por fuera del interprete, `cruby` nos permite ejecutar otro _thread_ mientras estas operaciones terminan y, es de esta manera que podemos trabajar con programación concurrente en Ruby.

En cambio, otros interpretes como JRuby o Rubinius SI que permiten la ejecución en paralelo.

Ahora, para mi esto es un tema un poco complejo y aún tengo mucho que estudiar. Si quieres, puedes encontrar muchímima más información sobre cómo manejar los _Threads_ con Ruby tomando el [Curso de Ruby](https://platzi.com/cursos/ruby/) en Platzi (especificamente, la clase **Threads en Ruby** nos explica la teoría y ejemplos prácticos de cómo aplicar estas tareas en nuestro desarrollo).

> :ok_hand: _Tambien te recomiendo esta lectura si quieres trabajar con Paralelismo y Concurrencia en JavaScript:_
> - [Javascript Asíncrono: La guía definitiva](https://lemoncode.net/lemoncode-blog/2018/1/29/javascript-asincrono#concurrencia-y-paralelismo)

## :gem: Gemas

### Manejo de Dependencias

Las **gemas** son el nombre _cursi_ que le dio la comunidad de Ruby a las librerías/dependencias (código empaquetado que alguien más escribio para tí :wink:) que podemos descargar y utilizar en nuestros proyectos.

La instalación es muy sencilla, basta con ejecutar el comando `gem install` seguido del nombre y la versión de las gemas que queremos utilizar.

Sin embargo, instalar cada una de las gemas con las versiones que se acomodan a nuestro proyecto puede terminar complicandonos la vida, debemos guardar la información de cada paquete por si cambiamos de computadora o entra un nuevo integrante al equipo, cualquier otra situación común por el estilo puede terminar catastróficamente si no guardamos las versiones exactas de nuestros proyectos.

### Bundler

Aquí entra [Bundler](http://bundler.io/), una gema que podemos descargar con el comando `gem install bundler` y nos permite describir organizadamente las dependencias y versiones de nuestro proyecto en un archivo llamado `Gemfile`.

Gracias a esta herramienta podemos podemos crear y publicar nuestras gemas siguiendo algunos estándares acordados por la comunidad, además de mantener una documentación actualizada y accesible para todo el equipo.

```ruby
# Gemfile (ejemplo)

source 'https://rubygems.org' # RubyGems es como NPM pero con Gemas de Ruby

gem 'nombre_de_la_gema', 'versión.de.la.gema'
```

> :clap: _Información mucho más completa sobre **Bundler** en el siguiente artículo:_
> - [Manejo de dependencias en Ruby con Bundler - Germán Escobar](https://blog.makeitreal.camp/manejo-de-dependencias-en-ruby-con-bundler/)

### Gemas y Repositorios interesantes

- [Ruby 2D](https://github.com/ruby2d/ruby2d) - Aplicaciones 2D multiplataforma en Ruby.
- [seattlerb/minitest](https://github.com/seattlerb/minitest) - Framework para diferentes tipos de testing: TDD, BDD, simulacros, benchmarking, entre otras.
- [reactjs/react-rails](https://github.com/reactjs/react-rails) - Integración de Reactjs con las vistas y controladores de Ruby on Rails utilizando SSR y client-side rendering automático.
