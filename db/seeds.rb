# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Addon.delete_all
Baseherb.delete_all
baseherbs = Baseherb.create!(name: "mięta", color: "rgb(196,237,194)", description: "Wiecznie zielone, lub częściowo zielone byliny. Ulistnienie naprzeciwległe, liście jajowate lub eliptyczne.", image: "mentha.svg", id: 1)
baseherbs = Baseherb.create!(name: "rumianek", color: "rgb(226,224,205)", description: "Według aktualnych ujęć taksonomicznych należy do niego tylko 5 gatunków występujących na półkuli północnej na obszarach o umiarkowanym klimacie.", image: "matricaria.svg", id: 2)
baseherbs = Baseherb.create!(name: "melisa", color: "rgb(234,211,198)", description: "Łodyga czworokątna, jak u innych przedstawicieli rodziny. Ulistnienie nakrzyżległe, liście pomarszczone, jajowate lub sercowate.", image: "melissa.svg", id: 3)

Addon.create(name: "głóg", color: "rgb(214,207,224)", description: "xyz xyz xyz xyz xyz xyz", image: "crataegus.svg", baseherb_id: 1)
Addon.create(name: "ba&#173;zy&#173;lia in&#173;dyj&#173;ska", color: "rgb(215,232,200)", description: "xyz xyz xyz xyz xyz xyz", image: "ocimumbasilicum.svg", baseherb_id: 1)
Addon.create(name: "pier&#173;wio&#173;snek le&#173;kar&#173;ski", color: "rgb(235,197,217)", description: "xyz xyz xyz xyz xyz xyz", image: "primulaveris.svg", baseherb_id: 1)
Addon.create(name: "ró&#173;ża dzi&#173;ka", color: "rgb(248,200,184)", description: "xyz xyz xyz xyz xyz xyz", image: "rosacanina.svg", baseherb_id: 1)
Addon.create(name: "perz wła&#173;ści&#173;wy", color: "rgb(221,210,220)", description: "xyz xyz xyz xyz xyz xyz", image: "elymusrepens.svg", baseherb_id: 2)
Addon.create(name: "szał&#173;wia le&#173;kar&#173;ska", color: "rgb(242,231,189)", description: "xyz xyz xyz xyz xyz xyz", image: "salviaofficinalis.svg", baseherb_id: 2)
Addon.create(name: "świe&#173;tlik łą&#173;ko&#173;wy", color: "rgb(193,238,209)", description: "xyz xyz xyz xyz xyz xyz", image: "euphrasiarostkovianahayne.svg", baseherb_id: 2)
Addon.create(name: "wierz&#173;ba bia&#173;ła", color: "rgb(214,218,217)", description: "xyz xyz xyz xyz xyz xyz", image: "salixalba.svg", baseherb_id: 2)
Addon.create(name: "ma&#173;li&#173;na właś&#173;ci&#173;wa", color: "rgb(235,197,217)", description: "xyz xyz xyz xyz xyz xyz", image: "rubusidaeus.svg", baseherb_id: 3)
Addon.create(name: "pok&#173;rzy&#173;wa zwy&#173;czaj&#173;na", color: "rgb(183,237,249)", description: "xyz xyz xyz xyz xyz xyz", image: "urticadioica.svg", baseherb_id: 3)
Addon.create(name: "roz&#173;chod&#173;nik ost&#173;ry", color: "rgb(253,228,179)", description: "xyz xyz xyz xyz xyz xyz", image: "sedumacre.svg", baseherb_id: 3)
Addon.create(name: "kon&#173;wa&#173;lia ma&#173;jo&#173;wa", color: "rgb(235,197,217)", description: "xyz xyz xyz xyz xyz xyz", image: "convallariamajalis.svg", baseherb_id: 3)