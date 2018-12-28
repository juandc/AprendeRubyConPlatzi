# Platzi Ruby Starter

[![emoji-log](https://cdn.rawgit.com/ahmadawais/stuff/ca97874/emoji-log/non-flat-round.svg)](https://github.com/ahmadawais/Emoji-Log/)
[![MIT license](https://img.shields.io/badge/license-MIT-brightgreen.svg)](http://opensource.org/licenses/MIT)
[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/juandc/platzi-ruby-starter/issues)

**:gem: Impresiones y Primeras Líneas de Código con Ruby :strawberry::rugby_football:**

**Puedes entrar a [platzi.com/cursos/ruby](https://platzi.com/cursos/ruby/) para encontrar más información sobre el curso.**

---

¡Si señor! Un desarrollador de JavaScript se animó a tomar el [Curso de Ruby](https://platzi.com/cursos/ruby/) en Platzi :tada:.

En este README voy a escribir/documentar todo lo que voy aprendiendo a medida que avanzo con el curso :memo:. El objetivo es que, si me gusta, termino de prepararme para tomar el [Curso de Creación de APIs con Ruby on Rails](https://platzi.com/cursos/ror/) y sacarle mayor provecho a todo al trabajar lo que más me gusta: construir aplicaciones por microservicios :notes: y consumir APIs con React.js :atom_symbol: con GraphQL 🍇 si es posible.

**¿Por qué estudio Ruby?** El profe [@simon0191](https://twitter.com/simon0191) (trabaja en Uber :flushed::open_mouth:) con solo los primeros vídeos me convencio de que no pierdo nada aprendiendo algo nuevo :muscle:.

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

## :thinking: ¿Qué onda con Ruby?

Ruby es un lenguaje de programación _open source_ creado por [Yukihiro "Matz" Matsumoto](https://en.wikipedia.org/wiki/Yukihiro_Matsumoto) en 1995 (aunque no se volvio popular sino hasta 2005, gracias a _Ruby on Rails_).

Entre sus características podemos destacar las siguientes:

- :raised_hands: **Dinámico**: No debemos especificar los tipos de datos cuando declaramos variables, incluso podemos cambiar el tipo de dato a lo largo de la ejecución.
- :timer_clock: **Interpretado**: No necesitamos compilar nuestro código para despues si ejecutarlo, más bien, utilizamos algún iterprete para leer y ejecutar el código línea por línea. El interprete por defecto es **CRuby** pero, existen muchas alternativas bien interesantes como [JRuby](https://www.jruby.org/), [MRuby](https://mruby.org/), [Rubinius](https://rubinius.com/), entre otros.
- :hammer: **Orientado a Objetos**: Los strings son objetos, los números son objetos, ¡todo es un objeto! Cualquier "cosa" que encontramos en Ruby tiene métodos muy útiles para obtener resultados inetersantes, cualquier cosa punto cualquier otra cosa puede incluso devolver otra cosa que también es un objeto con métodos: `cosa_cualquiera.método_cualquiera.metodo_del_metodo.tambien_soy_objeto.etc.etc.etc`.

**:massage: Los objetivos de Ruby son aumentar nuestra felicidad y productividad :muscle:**

La lectura y escritura del código son muy parecidas al lenguaje humano en ingles :nerd_face:.

## :shaved_ice: Ventajas y Desventajas

**Ventajas**:

- :family: La comunidad es muy grande
- :notes: Tenemos muchas librerías disponibles (mejor conocidas como "gemas")
- :small_red_triangle: Updates y parches de seguridad bien constantes
- :older_woman: Tanto tiempo lleva que ahora es un lenguaje muy maduro, no tenemos problemas para llevarlo a producción

**Desventajas:**

- :turtle: Por ser interpretado puede ser lento, debe leerse y entenderse a sí mismo antes de lograr ejecutarse
- :volcano: Consume mucha memoria
- :repeat: No soporta paralelismo cuando utilizamos cruby
- :money_mouth_face: No tiene una compañia millonaria detras, es completamente dirigido por la comunidad (algo bueno y malo al mismo tiempo :confused::grimacing:)
- :chart_with_downwards_trend: Viene bajando en popularidad desde hace algun tiempo (pero tranqui, sigue y seguira dentro del top 10)

**Cosas interesantes:**

- :keyboard: [Metaprogramación](https://codigofacilito.com/articulos/que-es-metaprogramacion): Programas que escriben o manipulan otros programas, incluso a sí mismos ♻
- :minibus: [Domain Specific Languages](https://eamodeorubio.wordpress.com/2010/09/13/%C2%BFque-son-los-dsl-domain-specific-languages/): Lenguajes especializados en modelar o resolver un conjunto específico de problemas (tampoco entendi nada pero pos lo comento :thinking::sweat_smile:)

## :basketball: Bases del lenguaje

Antes de comenzar, recuerda que puedes utilizar el comando `irb` para ejecutar tu código línea por línea o, si prefieres, utilizar los archivos `.rb` para ejecutarlos con el comando `ruby archivito.rb`.

### Variables

Así como dije antes, Ruby es un lenguaje dinámico, es decir, no necesitamos especificar el tipo de dato que utilizamos para cada variable. Además, tampoco debemos escribir `var`, `const` o `let` para declarar variables, es suficiente con solo decir `esto = aquello`:

```ruby
mi_variable = "algo genial"
```

Por cierto, la convención para declarar variables es :snake: [Snake Case](https://en.wikipedia.org/wiki/Snake_case): todo en minusculas separando las palabras por guiones bajos.

### Métodos

**¿Recuerdas que Ruby intenta parecerse al ingles natural?** Pues, se lo tomaron muy en serio y no pierden oportunidad para demostrarlo :joy:.

Muchos métodos que podriamos entender como preguntas tipo, ¿este número es par? requieren un signo de interrogación (:question:) al final (por ejemplo, `number.even?`). Esta solución me parece genial ya que, vengo acostumbrado a JavaScript y la convención seria más bien parecido a algo como `number.isEven()` (aunque, este ejemplo en particular, no existe por defecto en JS :sob:).

```ruby
5.even      # ERROR!
5.even()    # ERROR!
5.isEven    # ERROR!
5.isEven()  # ERROR!

5.even?     # false 👏👏
```

Solo cuando un método acaba con signo de admiración (:exclamation:) se aplica el resultado del método a la variable. Es decir, si `x = "helo"` y despues la transformo a mayúsculas con `x.upcase`, en realidad, `x` sigue teniendo su valor inicial (`"hello"`) y si quiero aplicar el resultado del método a la variable debo utilizar el signo de admiración (`x.upcase!`):

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

> **`:pepe` es `:pepe`**... Fin de la discusión...

Si esto fue demaciada filosofía para tu gusto, puedes encontrar mejor información con los siguientes enlaces:

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

Los Hashes no son más que el nombre de Ruby para lo que en JavaScript conocemos como "Objetos", en Python como "Dicionarios", en PHP como "Arrays asociativos" y en otros lenguajes como mapas.

Así como con los arrays, podemos almacenar multiples valores/variables, pero, en vez de solo agregar los valores, podemos asignar "nombres clave" para los valores que vamos a guardar, es decir, los guardamos en forma de `"llave" => valor`:

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

Muchas veces, al trabajar con aplicaciones en React, suelo pasar por momentos de mucha tensión al intentar iterar entre una cantidad de elementos que no tengo disponible en el momento. Es decir, si quiero por ejemplo, añadir dos o más rueditas de "cargando" antes de mostrar el contenido real de la aplicación, tengo dos opciones: copiar y pegar una línea de JSX (:-1:) o, utilizar alguna función medio rara para generar un array con una cierta cantidad de números (la forma más sencilla hasta el momento es: `[...Array(x).keys()]`).

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

De hecho, si lo recuerdas bien, ya hemos utilizado los bloques en métodos como el `.each`:

```ruby
[1,2,3].each { |number| puts number * 2 } # 2,4,6
[1,2,3].count { |number| number.odd? } # 2 (1 y 3)
```

¡Pero Atentención! Uno de mis ultimos grandes descubrimiento (:joy:) fue que también tenemos sintaxis agrandada 👀:

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

Las **labmdas** son funciones anónimas (sin nombre) muy parecidas, pero con algunas diferencias. La sintaxis es la palabra `lambda` seguida del bloque que queremos reutilizar y tambien utilizamos el `&` para reutilizarla en los métodos que se ejecutan con sintais de bloque:

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

Claramente deben tener alguna diferencia, si, efectivamente, a diferencia de los procs, las lambdas son un poco más estrictas con la cantidad de argumentos:

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

> Si quieres más información sobre bloques, procs y lambdas, puedes leer el siguiente artículo de **@awaxman11** :clap::clap::
> - [Ruby - What is the difference between Blocks, Procs and Lambdas?](http://awaxman11.github.io/blog/2013/08/05/what-is-the-difference-between-a-block/)
