User.destroy_all
Pallet.destroy_all
UserPallet.destroy_all

evan = User.create({username: "Evan", email: "e@p.com", password: "123"})
adam = User.create({username: "Adam", email: "a@p.com", password: "123"})
alyssa = User.create({username: "Alyssa", email: "a@p.com", password: "123"})
