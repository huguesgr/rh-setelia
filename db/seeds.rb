# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Language.create(name: "Anglais")
Language.create(name: "Français")
Language.create(name: "Arabe")
Language.create(name: "Mandarin")
Language.create(name: "Espagnol")
Language.create(name: "Portuguais")
Language.create(name: "Russe")

Area.create(label: "Ile-de-France")
Area.create(label: "Alsace")
Area.create(label: "Aquitaine")
Area.create(label: "Auvergne")
Area.create(label: "Basse-Normandie")
Area.create(label: "Bourgogne")
Area.create(label: "Bretagne")
Area.create(label: "Centre")
Area.create(label: "Champagne-Ardenne")
Area.create(label: "Corse")
Area.create(label: "Franche-Comté")
Area.create(label: "Guadeloupe")
Area.create(label: "Guyane")
Area.create(label: "Haute-Normandie")
Area.create(label: "La Réunion")
Area.create(label: "Languedoc-Roussillon")
Area.create(label: "Limousin")
Area.create(label: "Lorraine")
Area.create(label: "Martinique")
Area.create(label: "Mayotte")
Area.create(label: "Midi-Pyrénées")
Area.create(label: "Nord-Pas-de-Calais")
Area.create(label: "Pays de la Loire")
Area.create(label: "Picardie")
Area.create(label: "Poitou-Charentes")
Area.create(label: "Provence-Alpes-Côte d'Azur")
Area.create(label: "Rhône-Alpes")

InternationalArea.create(label: "Afrique/Océan Indien")
InternationalArea.create(label: "Amérique Latine")
InternationalArea.create(label: "Amérique du Nord")
InternationalArea.create(label: "Asie")
InternationalArea.create(label: "Europe")
InternationalArea.create(label: "France")
InternationalArea.create(label: "Belgique")
InternationalArea.create(label: "Luxembourg")
InternationalArea.create(label: "Pays-Bas")
InternationalArea.create(label: "Moyen Orient")