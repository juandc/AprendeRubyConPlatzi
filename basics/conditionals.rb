role = :admin

if role == :user
  puts "Hola, usuario"
if role == :admin
  puts "Eres un admin, bro"
elsif role == :superadmin
  puts "No sos mortal, bro"
else
  puts "¿Cuál es tu rol, bro?"
end
