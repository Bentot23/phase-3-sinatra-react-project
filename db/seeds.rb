puts "🌱 Seeding spices..."

air_7_cebu = Chapter.create(name: "Air7Cebu", location: "Cebu City")
air_7_leyte = Chapter.create(name: "Air7Leyte", location: "Tacloban City")
air_7_bohol = Chapter.create(name: "Air7Bohol", location: "Tagbilaran City")

first = Member.create(name: "First Member", age: rand(20..60), hometown: "Cebu", gender: 'male', chapter_id: air_7_cebu.id)
second = Member.create(name: "Second Member", age: rand(20..60), hometown: "Leyte", gender: 'female', chapter_id: air_7_leyte.id)
third = Member.create(name: "Third Member", age: rand(20..60), hometown: "Bohol", gender: 'male', chapter_id: air_7_bohol.id)
fourth = Member.create(name: "Fourth Member", age: rand(20..60), hometown: "Cebu", gender: 'female', chapter_id: air_7_cebu.id)
fifth = Member.create(name: "Fifth Member", age: rand(20..60), hometown: "Leyte", gender: 'male', chapter_id: air_7_leyte.id)
sixth = Member.create(name: "Sixth Member", age: rand(20..60), hometown: "Bohol", gender: 'female', chapter_id: air_7_bohol.id)
seventh = Member.create(name: "Seventh Member", age: rand(20..60), hometown: "Cebu", gender: 'male', chapter_id: air_7_cebu.id)
eighth = Member.create(name: "Eighth Member", age: rand(20..60), hometown: "Leyte", gender: 'female', chapter_id: air_7_leyte.id)
ninth = Member.create(name: "Ninth Member", age: rand(20..60), hometown: "Bohol", gender: 'male', chapter_id: air_7_bohol.id)
tenth = Member.create(name: "Tenth Member", age: rand(20..60), hometown: "Cebu", gender: 'female', chapter_id: air_7_cebu.id)



puts "✅ Done seeding!"
