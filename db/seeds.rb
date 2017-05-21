# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
baseherbs = Baseherb.create!(name: "mięta", color: "rgb(196,237,194)", description: "Wiecznie zielone, lub częściowo zielone byliny. Ulistnienie naprzeciwległe, liście jajowate lub eliptyczne. Kwiaty drobne. Rośliny o silnym, charakterystycznym zapachu (nie zawsze „miętowym”).")
baseherbs = Baseherb.create!(name: "rumianek", color: "rgb(226,224,205)", description: "Według aktualnych ujęć taksonomicznych należy do niego tylko 5 gatunków występujących na półkuli północnej na obszarach o umiarkowanym klimacie. W piśmiennictwie często miał łacińską nazwę Chamomilla. Obecnie istotne źródła nomenklatoryczne podają nazwę Matricaria, nazwę Chamomilla uznając za błędną.")
baseherbs = Baseherb.create!(name: "melisa", color: "rgb(234,211,198)", description: "Łodyga czworokątna, jak u innych przedstawicieli rodziny. Ulistnienie nakrzyżległe, liście pomarszczone, jajowate lub sercowate. Po złamaniu lub roztarciu wydzielają miły, cytrynowy zapach. Kwiaty białe lub żółtawe, zebrane w okółki.")

=begin
Addon.create(name: "głóg", color: "rgb(214,207,224)", description: "", baseherb: 1)
Addon.create(name: "bazylia indyjska", color: "rgb(215,232,200)", description: "", baseherb: 1)
Addon.create(name: "pierwiosnek lekarski" "rgb(235,197,217)", color: "", description: "", baseherb: 1)
Addon.create(name: "róża dzika", color: "rgb(248,200,184)", description: "", baseherb: 1)
Addon.create(name: "perz właściwy", color: "rgb(221,210,220)", description: "", baseherb: 2)
Addon.create(name: "szałwia lekarska", color: "rgb(242,231,189)", description: "", baseherb: 2)
Addon.create(name: "świetlik łąkowy", color: "rgb(193,238,209)", description: "", baseherb: 2)
Addon.create(name: "wierzba biała", color: "rgb(214,218,217)", description: "", baseherb: 2)
Addon.create(name: "malina właściwa", color: "rgb(235,197,217)", description: "", baseherb: 3)
Addon.create(name: "pokrzywa zwyczajna", color: "rgb(183,237,249)", description: "", baseherb: 3)
Addon.create(name: "rozchodnik ostry", color: "rgb(253,228,179)", description: "", baseherb: 3)
Addon.create(name: "konwalia majowa", color: "rgb(235,197,217)"", description: ", baseherb: 3)
=end