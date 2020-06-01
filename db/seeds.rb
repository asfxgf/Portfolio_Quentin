# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Debut de seed"

puts "Création du livre 1"
Livre.create(title: "Hooked", author: "Nir Eyal", url: "https://www.amazon.fr/Hooked-comment-habitudes-best-seller-international-ebook/dp/B07G5MW81B/ref=sr_1_1?__mk_fr_FR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&dchild=1&keywords=hooked&qid=1591029761&s=books&sr=1-1", description: "Livre très utile pour comprendre les mécanismes d'addictions")

puts "Hooked créé"

puts "Création du livre 2"

Livre.create(title: "Lean Startup", author: "Eric Ries", url: "https://www.amazon.fr/Lean-Startup-Adoptez-linnovation-continue-ebook/dp/B017RMNG6S/ref=pd_sim_351_7?_encoding=UTF8&pd_rd_i=B017RMNG6S&pd_rd_r=c27391a9-c472-4faa-8391-c7b41a2e9cef&pd_rd_w=lMqf5&pd_rd_wg=hHlsp&pf_rd_p=d1676309-0565-4fbf-8e11-01f911f79a24&pf_rd_r=TS7P0CF34NAK1X100EXE&psc=1&refRID=TS7P0CF34NAK1X100EXE", description: "Une référence du monde startup, les bases de l'itération et de la gestion de projets.")

puts "Lean startup créé"

puts "Création du livre 3"

Livre.create(title: "Le personal MBA", author: "Josh Kaufman", url: "https://www.amazon.fr/personal-MBA-business-décoller-carrière-ebook/dp/B01MT6E9LC/ref=pd_sim_351_8?_encoding=UTF8&pd_rd_i=B01MT6E9LC&pd_rd_r=c27391a9-c472-4faa-8391-c7b41a2e9cef&pd_rd_w=lMqf5&pd_rd_wg=hHlsp&pf_rd_p=d1676309-0565-4fbf-8e11-01f911f79a24&pf_rd_r=TS7P0CF34NAK1X100EXE&psc=1&refRID=TS7P0CF34NAK1X100EXE", description: "Ce livre illustre très bien comment la rigueur, détermination et perséverance permettent d'acquérir un niveau d'expertise fort")

puts "Le personal MBA créé"
