User.destroy_all
Pallet.destroy_all
UserPallet.destroy_all

evan = User.create({username: "Evan", email: "e@p.com", password: "123"})
adam = User.create({username: "Adam", email: "a@p.com", password: "123"})
alyssa = User.create({username: "Alyssa", email: "a@p.com", password: "123"})

p1 = Pallet.create({one: "#00BBFF", two: "#FF668A", three: "#FFDB66", four: "#66FFDB", five: "#66D6FF"})
p2 = Pallet.create({one: "#AF2708", two: "#E00B4E", three: "#D91251", four: "#7F1C06", five: "#7B1F0A"})
p3 = Pallet.create({one: "#F41AC9", two: "#A1F97B", three: "#1AF4B3", four: "#21EDB0", five: "#D10AAA"})
p4 = Pallet.create({one: "#D0BD16", two: "#5DB4EE", three: "#6016D0", four: "#5F11D4", five: "#A29311"})
p5 = Pallet.create({one: "#E3744F", two: "#F1A7B9", three: "#E34F74", four: "#A7DFF1", five: "#DD5122"})

up1 = UserPallet.create({user_id: evan.id, pallet_id: p1.id})
up2 = UserPallet.create({user_id: adam.id, pallet_id: p2.id})
up3 = UserPallet.create({user_id: alyssa.id, pallet_id: p3.id})
up4 = UserPallet.create({user_id: adam.id, pallet_id: p4.id})
up5 = UserPallet.create({user_id: alyssa.id, pallet_id: p5.id})
up6 = UserPallet.create({user_id: evan.id, pallet_id: p2.id})
up7 = UserPallet.create({user_id: evan.id, pallet_id: p3.id})
