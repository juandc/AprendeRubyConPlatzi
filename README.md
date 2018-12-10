# Platzi Ruby Simple Basics

Take the course :wink::green_heart:: [https://platzi.com/cursos/ruby](https://platzi.com/cursos/ruby/).

Notes:

- **History**, Ruby creator is [Yukihiro "Matz" Matsumoto](https://en.wikipedia.org/wiki/Yukihiro_Matsumoto) :older_man:

- Variables do not need any word like `var` or `const` for been declared, `var = "something"` is enough :+1:
- Variable names convention is [Snake Case](https://en.wikipedia.org/wiki/Snake_case) (example: `yes_is_admin` or `facilitator_roles_lowercase`) :low_brightness:

- **Symbols** are really cool, they are something like variables but super powered: no value (symbols are the value, amazing :scream::heart_eyes:) and inmutability (always that you call the symbols, Ruby knows what are you talking about, they always have the same id :open_mouth:):

  ```ruby
    puts "juandc".object_id # 123abc
    puts "juandc".object_id # 166uht ^ hmm, diferent id 🤔
    puts :juandc.object_id  # 987zsd
    puts :juandc.object_id  # 987zsd ^ ohh, same id 🍦
  ```

- **Conditionals** do not need parentesis, so clean... :straight_ruler:

- As well as Python :snake::sweat_smile:, Ruby works without brackets or semicolons but uses tabs:

  ```ruby
    if bla_bla
      puts do_this
    else
      puts do_that
    end # BTW, I dont like this "end" 👎
  ```

- No objects but **hashes**, looks like PHP associative arrays :thinking::

  ```ruby
    hash = {
      "key" => "value"
    }
    hash["other_key"] = "other_value"

    hash["key"] # => "value"
    hash["other_key"] # => "other_value"

    hash.invert # {"value"=>"key" ... }
    hash.merge({ "another_key" => "another_val" }) # {..."another_key"=>"another_val"}
    hash.empty? # False and I like the ⁉ :D
    hash.has_value? "other_value" # True and PERFECT 🙌

    hash.map { |key,val| "Key is #{key} and value is #{val}" } # 😎
    hash.transform_values { |val| v.downcase } # 🆗
  ```

- Method conventions are awesome, questions need `?` at the end!!!

  ```ruby
    anything.empty?
    hash.has_value? "some value"
    string.include? "some string"
  ```

- I like **Ranges** a lot for adding elements, two dots for results from x to y and three for excluding last el:

  ```ruby
    # "To Array" for visualizing
    (1..3).to_a # [1,2,3]
    (1...3).to_a # [1,2]

    # Also for letters :D
    ('a'..'d').to_a # ['a','b','c','d']
    ('a'...'d').to_a # ['a','b','c']
  ```
