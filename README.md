# Platzi Ruby Simple Basics

Take the course :wink:: https://platzi.com/cursos/ruby/.

Notes:

- **History**, Ruby creator is [Yukihiro "Matz" Matsumoto](https://en.wikipedia.org/wiki/Yukihiro_Matsumoto) :older_man:
- Variables do not need any word like `var` or `const` for been declared, `var = "something"` is enough :+1:
- Variable names convention is [Snake Case](https://en.wikipedia.org/wiki/Snake_case) (example: `yes_is_admin` or `facilitator_roles_lowercase`) :low_brightness:
- **Symbols** are really cool, they are something like variables but super powered: no value (symbols are the value, amazing :scream::heart_eyes:) and inmutability (always that you call the symbols, Ruby knows what are you talking about, they always have the same id :open_mouth:):

  ```ruby
    puts "juandc".object_id # 123abc
    puts "juandc".object_id # 166uht ^ diferent id :thought_balloon:
    puts :juandc.object_id  # 987zsd
    puts :juandc.object_id  # 987zsd ^ same id :weight_lifting_man:
  ```

- As well as Python :snake::sweat_smile:, Ruby works without brackets or semicolons bit with tabs:

  ```ruby
  if bla_bla
    puts do_this
  else
    puts do_that
  end # I dont like this "end" :thinking:
  ```

- Conditionals do not need parentesis, example above :straight_ruler:
