# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Addon.delete_all
Baseherb.delete_all
baseherbs = Baseherb.create!(name: "mięta", color: "rgb(196,237,194)", description: "Wyciągi z liści mięty pobudzają czynności wydzielnicze żołądka i wątroby. Ułatwia trawienie i przyswajanie pokarmów. Napar z mięty wykazuje działanie rozkurczowe i obniżające napięcie mięsni gładkich oraz działa bakteriobójczo.", image: "mentha.svg", id: 1)
baseherbs = Baseherb.create!(name: "rumianek", color: "rgb(226,224,205)", description: "Wyciąg z rumianku działa przeciwzapalnie na błony śluzowe i skórę. Spiroeter zawarty w naparze hamuje stany zapalne. Na włosy napary rumianki działają rozjaśniająco i nadają im lekko złocisty kolor.", image: "matricaria.svg", id: 2)
baseherbs = Baseherb.create!(name: "melisa", color: "rgb(234,211,198)", description: "Melisa bogata jest w ariofilen i cytral - olejki eteryczne odpowiedzialne za obniżanie napięcia i powodujące ogólne uspokojenie. Jasnozielona barwa naparu wynika ze sporej ilości antyoksydantów. ", image: "melissa.svg", id: 3)

Addon.create(name: "głóg", color: "rgb(214,207,224)", description: "Działa rozkurczowo na naczynia wieńcowe serca. Enzymy zawarte w głogu zwiększają dopływ krwi i lepiej utleniają organizm. Kwaskowy w posmaku.", image: "crataegus.svg", baseherb_id: 1)
Addon.create(name: "li&#173;pa", color: "rgb(215,232,200)", description: "Kwiaty lipy zawierają flawonidy, olejki eteryczne i związki śluzowe. Poprawia przemianę materii.", image: "tilia.svg", baseherb_id: 1)
Addon.create(name: "pier&#173;wio&#173;snek le&#173;kar&#173;ski", color: "rgb(235,197,217)", description: "Ze względu na saponiny zawarte w pierwiosnku, usprawnia wykrztuszanie wydzieliny podczas chorób układu oddechowego. Ma lekko mineralny posmak.", image: "primulaveris.svg", baseherb_id: 1)
Addon.create(name: "ró&#173;ża dzi&#173;ka", color: "rgb(248,200,184)", description: "Owoc dzikiej róży jest surowcem witaminowym (C,P. )Naturalna witamina C jest aktywniejsza od syntetycznej, gdyż towarzyszące jej flawonidy chronią ją przed agresywnymi sokami żołądkowymi.", image: "rosacanina.svg", baseherb_id: 1)
Addon.create(name: "pio&#173;łun", color: "rgb(221,210,220)", description: "Piołun poprzez swoją gorycz pobudza funkcje wydzielnicze przewodu pokarmowego, zwiększa apetyt, a dzięki olejkom eterycznym działa żółciopędnie.", image: "elymusrepens.svg", baseherb_id: 2)
Addon.create(name: "szał&#173;wia le&#173;kar&#173;ska", color: "rgb(242,231,189)", description: "Poprawia pracę układu trawiennego, obniża poziom cukru we krwi, a napary z szałwii łagodzą zapalenia gardła i skóry. Ponadto działa kojąco na depresję, zmęczenie.", image: "salviaofficinalis.svg", baseherb_id: 2)
Addon.create(name: "świe&#173;tlik łą&#173;ko&#173;wy", color: "rgb(193,238,209)", description: "Świetlik był stosowany do celów medycznych od bardzo dawna, uważano go za ziele uzdrawiające oczy.Ma działanie przeciwzapalne, likwiduje obrzęki, łagodzi oznaki zmęczenia i stresu.", image: "euphrasiarostkovianahayne.svg", baseherb_id: 2)
Addon.create(name: "liść poziomki", color: "rgb(214,218,217)", description: "W medycynie ludowej stosuje się je w schorzeniach nerek i pęcherza. Wspomagają one proces usuwania z organizmu nadmiaru jodu, sodu i chloru oraz szkodliwych produktów przemiany materii.", image: "salixalba.svg", baseherb_id: 2)
Addon.create(name: "ma&#173;li&#173;na właś&#173;ci&#173;wa", color: "rgb(235,197,217)", description: "liście działają moczopędnie, żółciopędnie, przeciwzapalnie, przeciwbakteryjnie, ściągająco, oraz poprawiają przemianę materii.", image: "rubusidaeus.svg", baseherb_id: 3)
Addon.create(name: "pok&#173;rzy&#173;wa zwy&#173;czaj&#173;na", color: "rgb(183,237,249)", description: "Szczególnie polecana jest na wiosenne osłabienie, gdyż stwierdzono w surowcach istnienie czynników pobudzających wytwarzanie interferonu i antygenów wirusowych.", image: "urticadioica.svg", baseherb_id: 3)
Addon.create(name: "roz&#173;chod&#173;nik ost&#173;ry", color: "rgb(253,228,179)", description: "Obniża ciśnienie tętnicze krwi. W medycynie ludowej był stosowany przy leczeniu nadciśnienia tętniczego i miażdżycy.", image: "sedumacre.svg", baseherb_id: 3)
Addon.create(name: "hyzop lekarski", color: "rgb(235,197,217)", description: "Zioło legenda. Szanowany już w czasach Antyku, ceniony za swoje walory lecznicze i smakowe. Kwiaty mają intensywny fioletowy kolor.", image: "convallariamajalis.svg", baseherb_id: 3)