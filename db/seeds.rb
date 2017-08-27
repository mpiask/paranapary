# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Herb.delete_all

Herb.create(name: "mięta", 								color: "rgb(196,237,194)", description: "Wyciągi z liści mięty pobudzają czynności wydzielnicze żołądka i wątroby. Ułatwia trawienie i przyswajanie pokarmów. Napar z mięty wykazuje działanie rozkurczowe i obniżające napięcie mięsni gładkich oraz działa bakteriobójczo.",
																					image: "mieta.png", base: true, id: 1)
Herb.create(name: "rumianek", 						color: "rgb(226,224,205)", description: "Wyciąg z rumianku działa przeciwzapalnie na błony śluzowe i skórę. Spiroeter zawarty w naparze hamuje stany zapalne. Na włosy napary rumianki działają rozjaśniająco i nadają im lekko złocisty kolor.", 
																					image: "rumianek.png", base: true, id: 2)
Herb.create(name: "melisa", 							color: "rgb(234,211,198)", description: "Melisa bogata jest w ariofilen i cytral - olejki eteryczne odpowiedzialne za obniżanie napięcia i powodujące ogólne uspokojenie. Jasnozielona barwa naparu wynika ze sporej ilości antyoksydantów. ",
																					image: "melisa.png", base: true, id: 3)
Herb.create(name: "głóg", 								color: "rgb(214,207,224)", description: "Działa rozkurczowo na naczynia wieńcowe serca. Enzymy zawarte w głogu zwiększają dopływ krwi i lepiej utleniają organizm. Kwaskowy w posmaku.",
																					image: "glog.png", base: false, id: 4, base_id: 1)
Herb.create(name: "lipa", 								color: "rgb(215,232,200)", description: "Kwiaty lipy zawierają flawonidy, olejki eteryczne i związki śluzowe. Poprawia przemianę materii.",
																					image: "lipa.png", base: false, id: 5, base_id: 1)
Herb.create(name: "pierwiosnek lekarski", color: "rgb(235,197,217)", description: "Ze względu na saponiny zawarte w pierwiosnku, usprawnia wykrztuszanie wydzieliny podczas chorób układu oddechowego. Ma lekko mineralny posmak.",
																					image: "pierwiosnek.png", base: false, id: 6, base_id: 1)
Herb.create(name: "róża dzika", 					color: "rgb(248,200,184)", description: "Owoc dzikiej róży jest surowcem witaminowym (C,P. )Naturalna witamina C jest aktywniejsza od syntetycznej, gdyż towarzyszące jej flawonidy chronią ją przed agresywnymi sokami żołądkowymi.",
																					image: "roza.png", base: false, id: 7, base_id: 1)
Herb.create(name: "piołun", 							color: "rgb(221,210,220)", description: "Piołun poprzez swoją gorycz pobudza funkcje wydzielnicze przewodu pokarmowego, zwiększa apetyt, a dzięki olejkom eterycznym działa żółciopędnie.",
																					image: "piolun.png", base: false, id: 8, base_id: 2)
Herb.create(name: "szałwia lekarska", 		color: "rgb(242,231,189)", description: "Poprawia pracę układu trawiennego, obniża poziom cukru we krwi, a napary z szałwii łagodzą zapalenia gardła i skóry. Ponadto działa kojąco na depresję, zmęczenie.",
																					image: "szalwia.png", base: false, id: 9, base_id: 2)
Herb.create(name: "świetlik łąkowy", 			color: "rgb(193,238,209)", description: "Świetlik był stosowany do celów medycznych od bardzo dawna, uważano go za ziele uzdrawiające oczy.Ma działanie przeciwzapalne, likwiduje obrzęki, łagodzi oznaki zmęczenia i stresu.",
																					image: "swietlik.png", base: false, id: 10, base_id: 2)
Herb.create(name: "liść poziomki", 				color: "rgb(214,218,217)", description: "W medycynie ludowej stosuje się je w schorzeniach nerek i pęcherza. Wspomagają one proces usuwania z organizmu nadmiaru jodu, sodu i chloru oraz szkodliwych produktów przemiany materii.",
																					image: "poziomka.png", base: false, id: 11, base_id: 2)
Herb.create(name: "malina właściwa", 			color: "rgb(235,197,217)", description: "liście działają moczopędnie, żółciopędnie, przeciwzapalnie, przeciwbakteryjnie, ściągająco, oraz poprawiają przemianę materii.",
																					image: "malina.png", base: false, id: 12, base_id: 3)
Herb.create(name: "pokrzywa zwyczajna", 	color: "rgb(183,237,249)", description: "Szczególnie polecana jest na wiosenne osłabienie, gdyż stwierdzono w surowcach istnienie czynników pobudzających wytwarzanie interferonu i antygenów wirusowych.",
																					image: "pokrzywa.png", base: false, id: 13, base_id: 3)
Herb.create(name: "rozchodnik ostry", 		color: "rgb(253,228,179)", description: "Obniża ciśnienie tętnicze krwi. W medycynie ludowej był stosowany przy leczeniu nadciśnienia tętniczego i miażdżycy.",
																					image: "rozchodnik.png", base: false, id: 14, base_id: 3)
Herb.create(name: "hyzop lekarski", 			color: "rgb(235,197,217)", description: "Zioło legenda. Szanowany już w czasach Antyku, ceniony za swoje walory lecznicze i smakowe. Kwiaty mają intensywny fioletowy kolor.",
																					image: "hyzop.png", base: false, id: 15, base_id: 3)
