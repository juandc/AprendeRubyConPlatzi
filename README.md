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

## :thinking: ¿Qué onda con Ruby?

Ruby es un lenguaje de programación _open source_ creado por [Yukihiro "Matz" Matsumoto](https://en.wikipedia.org/wiki/Yukihiro_Matsumoto) en 1995 (aunque no se volvio popular sino hasta 2005 gracias a Rails).

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

puts x.upcase! # "HELLO"
puts x         # "HELLO"
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

name.include? "s"         # true 🔠
name.empty? "s"           # false 🌽
name.gsub("Juan", "Jose") # "Jose Rojas" 🔄

"  ola  ".strip # "ola" (ahora sin espacios, equivalente a `.trim()` en JS 👍)
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

Ahora loas preguntas: **¿Podemos asignar algun valor a nuestros símbolos? ¿Qué significa `:pepe` realmente?** :thinking::flushed:

Bueno, `:pepe` es la llave y su valor; la pregunta y su respuesta. En realidad, `:pepe` significa lo que tu quieras que signifique. De hecho, siempre que algo significa `:pepe`, Ruby sabe que hablamos con `:pepe` disfrazado de alguna otra variable.

> **`:pepe` es `:pepe`** y fin de la discusión...

Si esto fue demaciada filosofía para tu gusto, puedes encontrar mejor información con los siguientes enlaces:

- [Entendiendo los Símbolos en Ruby](https://predeciblementeimpredecible.wordpress.com/2005/11/15/entendiendo-los-simbolos-en-ruby/)
- [Syntactic sugar methods in Ruby - Ruby Magic](https://blog.appsignal.com/2018/02/20/ruby-magic-syntactic-sugar-methods.html)

#### Arrays

#### Hashes

#### Rangos

### Condicionales

### Ciclos
