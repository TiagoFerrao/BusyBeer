Booking.destroy_all
University.destroy_all
Category.destroy_all
Job.destroy_all
User.destroy_all

# LOCATIONS = ["R. do Carmo 51-1, 1200-094, 04015-070, Lisbon", "Rua de Entrecampos 13-3° Esq. 1000-152 Lisbon",
#   "Av. Guerra Junqueiro 30 C, 1000-167 Lisbon", "Largo do Carmo 4, 1200-022 Lisbon", "R. de São Pedro de Alcântara 81, 1250-238 Lisbon",
#   "Rua da Esperança 146, 1200-660 Lisbon",
#   "R. 4 de Infantaria 3A, 1350-134 Lisbon", "R. Gurué 16, 2775-581 Carcavelos",
#   "Avenida Marginal - Carcavelos beach, 2775-604 Carcavelos", "R. Francisco Franco, 2780-321 Oeiras",
#   "R. Luís Xavier Palmeirim 14, 2750-298 Cascais", "Av. Marginal 7669, 2765-245 Estoril",
#   "R. Alentejo 12, 2765-188 Estoril", "Estrada da Lagoa Azul, Linhó Sintra, 2714-511 Lisbon"]
#
# NAMES =  ["Augusto Menezes", "Antelmo Bandeira", "Dinis Roque", "Vicente Pascoal",
#   "Feliciano Resende", "Victorino Gusmão", "Xavier Rodrigues", "Jacó Álvares",
#   "Carmo Azevedo", "Otávio Barbosa", "Alexandra Nogueira", "Érica Valente",
#   "Brígida Fidalgo", "Paulinha Leitão", "Leonor Leite", "Luzia Soares",
#   "Iara Cortes", "Soraia Furtado", "Vera Fernandes", "Bruna Pacheco", "Vi Gose",
#   "Teddy Boshart", "Krista Herriman", "Mardell Dove", "Mildred Flippo",
#   "Wilbert Orourke", "Mohammad Morales", "Malorie Klapper", "Jeniffer Obrian", "Judy Dejean"]
#
# DESCRIPTION = [""]

50.times do
  University.create(name: Faker::University.name, address: Faker::University.prefix)
end

CATEGORY = ["home", "sitting", "errands", "moving"]
CATEGORY.each do |cat|
  Category.create(name: cat)
end


# 20.times do
#   client = User.new(
#     name: NAMES.sample,
#     birthday: Faker::Date.birthday(18, 65),
#     phone: Faker::PhoneNumber.phone_number,
#     address: LOCATIONS.sample,
#     email: Faker::Internet.email,
#     password: "asdfgh"
#   )
#   client.save!
#   5.times do
#     Job.create(
#     title: Faker::Job.field,
#     address: client.address,
#     time: Faker::Time.between(DateTime.now - 1, DateTime.now),
#     description: "",
#     price: rand(1...500),
#     duration: Faker::Number.number(2),
#     category: Category.all.sample,
#     client: client
#     )
#   end


# end



# 20.times do
#   #byebug
#   student = User.new(
#     name: NAMES.sample,
#     birthday: Faker::Date.birthday(18, 65),
#     phone: Faker::PhoneNumber.phone_number,
#     address: LOCATIONS.sample,
#     email: Faker::Internet.email,
#     password: "asdfgh",
#     student: true,
#     university: University.all.sample
#   )
#   student.save
#
#   2.times do
#     Booking.create(
#       job: Job.all.sample,
#       student: student
#     )
#   end
# end
#
# puts "Created #{Booking.count} bookings sucessfully!"
# puts "Last Booking was created for #{Booking.last.created_at} with the ID:#{Booking.last.id}!"
#
# puts "Creating photos for users"
# User.all.each do |user|
#   url = "https://api.adorable.io/avatars/285/#{user.name}.png"
# user.remote_photo_url = url
# user.save
# end

puts "Sucess"
