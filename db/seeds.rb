# encoding: UTF-8

faculty = Faculty.create({name: "Físico Matemático"} )

faculty.careers.build([
	{name: "Contabilidad" },
	{name: "Actuaría" },
	{name: "Físico" },
	{name: "Arquitecto" },
	{name: "Matemático" }
])
faculty.save
# father = Father.create
# father.childs.build([
# 	{ asd: "asd" },
# 	{ asd: "asd" },
# 	{ asd: "asd" },
# 	{ asd: "asd" },
# 	{ asd: "asd" },
# 	{ asd: "asd" },
# 	{ asd: "asd" }
# ])
# father.save

# Child.create([
# 	{ asd: "asd", father_id: father.id },
# 	{ asd: "asd", father_id: father.id },
# 	{ asd: "asd", father_id: father.id },
# 	{ asd: "asd", father_id: father.id },
# 	{ asd: "asd", father_id: father.id },
# 	{ asd: "asd", father_id: father.id },
# 	{ asd: "asd", father_id: father.id },
# 	{ asd: "asd", father_id: father.id },
# 	{ asd: "asd", father_id: father.id }
# ])

names = ["Diego","David","Laura","Manny","Luis","Fernanda","Angélica","Viridiana","Narciso"]
last_names = ["Goyo","Río","Pérez","Rodríguez","Hernández","Chan","Omega","Biles","Meza"]

100.times do
	person = Person.create({ 
		name: names[rand(1..names.count)], 
		last_names: "#{last_names[rand(1..last_names.count)]} #{last_names[rand(1..last_names.count)]}" 
	})

	Student.create({
		person_id: person.id	
	})
end

Teacher.create([
	{ person_id: rand(1..Person.all.count) },
	{ person_id: rand(1..Person.all.count) },
	{ person_id: rand(1..Person.all.count) },
	{ person_id: rand(1..Person.all.count) },
	{ person_id: rand(1..Person.all.count) }
])

Career.all.each do |career|
	Group.create([
		{ name: "#{career.name} - A", career_id: career.id, teacher_id: rand(1..Teacher.all.count)},
		{ name: "#{career.name} - B", career_id: career.id, teacher_id: rand(1..Teacher.all.count)},
		{ name: "#{career.name} - C", career_id: career.id, teacher_id: rand(1..Teacher.all.count)}
	])
end

100.times do
	schedule = Schedule.create({student_id: rand(1..Student.all.count), group_id: rand(1..Group.all.count) })
end