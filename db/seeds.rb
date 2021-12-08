r1 = Role.create({ name: 'Regular', description: 'Can read items' })
r2 = Role.create({ name: 'Seller', description: 'Can read and create items. Can update and destroy own items' })
r3 = Role.create({ name: 'Admin', description: 'Can perform any CRUD operation on any resource' })

u1 = User.create({ name: 'Le A', email: 'a@example.com', password: '12345678', password_confirmation: '12345678', telephone: '0123456789', address: 'so 1, ngo 69, phuong Le Dai Hanh, Hai Ba Trung, Ha Noi', role_id: r1.id })
u2 = User.create({ name: 'Le B', email: 'b@example.com', password: '12345678', password_confirmation: '12345678', telephone: '1111111111',address: 'so 1, chua Boc, Ha Noi', role_id: r2.id })
u3 = User.create({ name: 'Le C', email: 'c@example.com', password: '12345678', password_confirmation: '12345678', telephone: '2222222222',address: 'so 2, chua Boc, Ha Noi', role_id: r2.id })
u4 = User.create({ name: 'Le D', email: 'd@example.com', password: '12345678', password_confirmation: '12345678', telephone: '3333333333',address: 'so 3, chua Boc, Ha Noi', role_id: r3.id })

i1 = Item.create({ name: 'Rayban Sunglasses', description: 'Stylish shades', price: 99.99, user_id: u2.id })
i2 = Item.create({ name: 'Gucci watch', description: 'Expensive timepiece', price: 199.99, user_id: u2.id })
i3 = Item.create({ name: 'Henri Lloyd Pullover', description: 'Classy knitwear', price: 299.99, user_id: u3.id })
i4 = Item.create({ name: 'Porsche socks', description: 'Cosy footwear', price: 399.99, user_id: u3.id })
