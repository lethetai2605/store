r1 = Role.create({ name: 'Regular', description: 'Can read items' })
r2 = Role.create({ name: 'Seller', description: 'Can read and create items. Can update and destroy own items' })
r3 = Role.create({ name: 'Admin', description: 'Can perform any CRUD operation on any resource' })

u1 = User.create({ name: 'David', email: 'david@example.com', password: '123456', password_confirmation: '123456', telephone: '0877658866', address: '97 Phạm Ngọc Thạch, Phương Liên, Đống Đa, Hà Nội', role_id: r1.id })
u2 = User.create({ name: 'Maria', email: 'maria@example.com', password: '123456', password_confirmation: '123456', telephone: '0585111112',address: '78 Phạm Ngọc Thạch, Phương Liên, Đống Đa, Hà Nội', role_id: r2.id })
u3 = User.create({ name: 'Sally', email: 'sally@example.com', password: '123456', password_confirmation: '123456', telephone: '0379689116',address: '54 Phạm Ngọc Thạch, Phương Liên, Đống Đa, Hà Nội', role_id: r2.id })
u4 = User.create({ name: 'John', email: 'john@example.com', password: '123456', password_confirmation: '123456', telephone: '0879220033',address: '21 Phạm Ngọc Thạch, Phương Liên, Đống Đa, Hà Nội', role_id: r3.id })
u5 = User.create({ name: 'Foo', email: 'foo@example.com', password: '123456', password_confirmation: '123456', telephone: '0878253777',address: '11 Phạm Ngọc Thạch, Phương Liên, Đống Đa, Hà Nội', role_id: r3.id })


i1 = Item.create({ name: 'ABC CAMO COLLEGE MILO TEE', description: 'A graphic T-shirt that can be worn for a long season and is nice to have. Together with hoodies and shirts, it will be useful as a layered item in the coming season.', price: 99.99, user_id: u2.id })
i2 = Item.create({ name: 'ABC CAMO 2ND APE WIDE FIT PULLOVER HOODIE', description: 'A hoodie with a voluminous presence as the leading item. Matches sweatpants, denim pants and all bottoms.', price: 199.99, user_id: u2.id })
i3 = Item.create({ name: 'SPACE CAMO SHARK CREWNECK', description: 'Crew neck sweatshirt with a clean neck that creates a different presence from a hoodie. A rough and sophisticated impression is added, and a wardrobe with a street feel is completed at once.', price: 299.99, user_id: u3.id })
i4 = Item.create({ name: 'SPACE CAMO APE HEAD LOOSE FIT CREWNECK', description: 'Crew neck sweatshirt with a clean neck that creates a different presence from a hoodie. A rough and sophisticated impression is added, and a wardrobe with a street feel is completed at once.・ LOOSE FIT specifications that produce a looser silhouette with a trendy feeling', price: 399.99, user_id: u3.id })
