User.create(first_name: "Vadim", last_name: "Avnilov", user_name: "vadim", address: "1556 Dahill Rd, Brooklyn, NY 11230", email: "vadim.avnilov@gmail.com", bank_account: "1000", password: "123")
User.create(first_name: "Maddie", last_name: "Celis", user_name: "maddie", address: "81 Prospect Street, Brooklyn, NY 11703", email: "maddie.celis@gmail.com", bank_account: "1500", password: "123")
User.create(first_name: "Zohra", last_name: "Anwar", user_name: "zohra", address: "81 Prospect Street, Brooklyn, NY 11703", email: "zohra.anwar@gmail.com", bank_account: "2000", password: "123")
User.create(first_name: "Haley", last_name: "Balwar", user_name: "haley", address: "1556 Dahill Rd, Brooklyn, NY 11230", email: "haley.balwar@gmail.com", bank_account: "1500", password: "123")
User.create(first_name: "Joy", last_name: "Huang", user_name: "joy", address: "1556 Dahill Rd, Brooklyn, NY 11230", email: "joy.huang@gmail.com", bank_account: "5000", password: "123")


Product.create(name:"iPhone X", description: "The best, most revolutionary iPhone to date. Takes sick pics, and has awesome battery life.", img_url: "https://s3.amazonaws.com/peoplepng/wp-content/uploads/2018/07/06183813/iphone-X-PNG-Clipart-511x1024.png")
Product.create(name:"Armchair", description: "Ridiculously comfortable chair.", img_url: "http://pngimg.com/uploads/armchair/armchair_PNG7068.png")
Product.create(name:"Brad Pitt", description: "Spend a day with Brad Pitt. Who doesn't want that?", img_url: "http://pngimg.com/uploads/brad_pitt/brad_pitt_PNG12.png")
Product.create(name:"MacBook", description: "If you are thinking of going to Flatiron School, this is the MacBook for you.", img_url: "http://pngimg.com/uploads/macbook/macbook_PNG78.png")
Product.create(name:"Eggplant", description: "Cuz you gotta eat your veggies", img_url: "http://pngimg.com/uploads/eggplant/eggplant_PNG2775.png")
Product.create(name:"Firetruck", description: "The girl of your dreams likes firemen. You don't have what it takes to become one. But you can definitely front if you buy this firetruck. Now 90% off", img_url: "http://pngimg.com/uploads/fire_truck/fire_truck_PNG31.png")
Product.create(name:"Ski Mask", description: "Running up on somebody? Probably a good idea to wear one of these.", img_url: "http://pngimg.com/uploads/balaclava/balaclava_PNG39.png")
Product.create(name:"Bouquet of Flowers", description: "Valentine's Day is around the corner", img_url: "http://pngimg.com/uploads/bouquet/bouquet_PNG63.png")
Product.create(name:"Bed", description: "It's going down this weekend. This is the bed you want to have in your bedroom.", img_url: "http://pngimg.com/uploads/bed/bed_PNG17420.png")
Product.create(name:"Half Life Game", description: "Half Life 3 coming soon!", img_url: "http://pngimg.com/uploads/Half-Life/Half-Life_PNG75.png")
Product.create(name:"Bullet Necklace", description: "You need that street cred. Get this now!", img_url: "http://pngimg.com/uploads/necklace/necklace_PNG128.png")
Product.create(name:"Clarinet", description: "Voted #1 instrument for anybody starting a band!", img_url: "http://pngimg.com/uploads/flute/flute_PNG58.png")
Product.create(name:"Grill", description: "Heat this sucker up and watch the game with your buds.", img_url: "http://pngimg.com/uploads/grill/grill_PNG13954.png")




UserProduct.create(user_id:1, product_id:3, price:5, quantity:10)
UserProduct.create(user_id:2, product_id:3, price:4, quantity:8)
UserProduct.create(user_id:3, product_id:1, price:250, quantity:4)
UserProduct.create(user_id:5, product_id:2, price:28, quantity:7)
