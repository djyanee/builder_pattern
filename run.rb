require_relative 'person'
require_relative 'person_builder_module'
require_relative 'person_build_director'

budowniczy = PersonBuilder.new
nadzorca = PersonBuildDirector.new(budowniczy)
nadzorca.construct(name: 'Janek', surname: 'Lachowicz',
                   date_of_birth: '1991-09-07', id_number: '00000')
produkt = budowniczy.get_result
puts produkt

puts

nadzorca.construct(is_employee: true, name: 'Janusz', surname: 'z Pcimia',
                   date_of_birth: '1989-01-03', id_number: '00000', salary: 3500)
produkt2 = budowniczy.get_result
puts produkt2

# 1. Klient używający wzorca konstruuje obiekt budowniczego
# 2. Klient konstruuje nadzorcę, przekazując mu referencję do obiektu budowniczego, z którego ma korzystać
# 3. Klient zleca skonstruowanie produktu
# 4. Nadzorca zleca budowniczemu wykonanie w odpowiedniej kolejności wszystkich czynności niezbędnych do stworzenia produktu
# 5. Klient pobiera gotowy produkt od budowniczego