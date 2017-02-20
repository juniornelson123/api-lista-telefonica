# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Operadora.create([
	{nome: "OI", codigo: 15, categoria: "Celular"},
	{nome: "TIM", codigo: 21, categoria: "Celular"},
	{nome: "CLARO", codigo: 31, categoria: "Celular"},
	{nome: "GVT", codigo: 54, categoria: "Fixo"},
	{nome: "EMBRATEL", codigo: 45, categoria: "Fixo"}
	])	


Contato.create([
	{nome: "Nelson Junior", telefone: "99283-2929", date: DateTime.now, operadora_id: 1},
	{nome: "Antonio Wilson", telefone: "95643-4039", date: DateTime.now, operadora_id: 2},
	{nome: "Marco Alonso", telefone: "99456-1233", date: DateTime.now, operadora_id: 5}
	])	
