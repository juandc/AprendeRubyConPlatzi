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
- [Ventajas y Desventajas](#shaved-ice-ventajas-y-desventajas)
- [Bases del lenguaje](#basketball-bases-del-lenguaje)
  - [Variables](#variables)
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
- :notes: Tenemos muchas librerías (mejor conocidas como "gemas") disponibles
- :small_red_triangle: Updates y parches constantes
- :older_woman: Tanto tiempo que lleva que ahora es un lenguaje maduro, no hay problemas para llevarlo a producción

**Desventajas:**

- :turtle: Por ser interpretado puede ser lento, debe leerse y entenderse a sí mismo antes de lograr ejecutarse
- :volcano: Consume mucha memoria
- :repeat: No soporta paralelismo si utilizamos cruby
- :money_mouth_face: No tiene una compañia millonaria detras, es completamente dirigido por la comunidad (es bueno y malo al mismo tiempo :confused::grimacing:)
- :chart_with_downwards_trend: Viene bajando en popularidad desde hace algun tiempo (esta en el top 10 so, no es tan grave)

**Cosas interesantes:**

- :keyboard: [Metaprogramación](https://codigofacilito.com/articulos/que-es-metaprogramacion): Programas que escriben o manipulan otros programas, incluso a sí mismos ♻
- :minibus: [Domain Specific Languages](https://eamodeorubio.wordpress.com/2010/09/13/%C2%BFque-son-los-dsl-domain-specific-languages/): Lenguajes especializados en modelar o resolver un conjunto específico de problemas (tampoco entendi nada pero pos lo comento :thinking::sweat_smile:)

## :basketball: Bases del lenguaje

Antes de comenzar, recuerda que puedes utilizar el comando `irb` para ejecutar tu código línea por línea o, si prefieres, utilizar los archivos `.rb` para ejecutarlos con el comando `ruby archivito.rb`.

:eyes: **Dato de vital importancia para entender los siguientes ejemplos:** A Ruby nos permite programar con un lenguaje muy natural y no pierde oportunidad para demostrarnos lo bien que se siente.

¿Recuerdas que Ruby es intenta parecerse al lenguaje natural? Pues, parece que se lo tomaron muy en serio :joy:.

Muchos métodos que podriamos entender como preguntas (tipo, ¿este número es par?) requieren un signo de interrogación (:question:) al final (`number.even?`). Esta solución me parece genial ya que, vengo acostumbrado a JavaScript y la convención seria más bien parecido a algo como `number.isEven()` (aunque, este ejemplo en particular, no existe por defecto en JS :().

### Variables

Así como dije antes, Ruby es un lenguaje dinámico, es decir, no necesitamos especificar el tipo de dato que utilizamos para cada variable. Además, tampoco debemos escribir `var`, `const` o `let` para decir que vamos a declarar una variable, es suficiente con solo decir `esto = aquello`:

```ruby
mi_variable = "algo genial"
```

Por cierto, la convención para declarar variables es :snake: [Snake Case](https://en.wikipedia.org/wiki/Snake_case): todo en minusculas separando las palabras por guiones bajos.

### Tipos de datos

#### Números

#### Strings

#### Símbolos

#### Arrays

#### Hashes

### Condicionales

### Ciclos
