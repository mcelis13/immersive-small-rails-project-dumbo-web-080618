User.create(first_name: "Vadim", last_name: "Avnilov", user_name: "vadim", address: "1556 Dahill Rd, Brooklyn, NY 11230", email: "vadim.avnilov@gmail.com", bank_account: "1000", password: "123")
User.create(first_name: "Maddie", last_name: "Celis", user_name: "maddie", address: "81 Prospect Street, Brooklyn, NY 11703", email: "maddie.celis@gmail.com", bank_account: "1500", password: "123")
User.create(first_name: "Zohra", last_name: "Anwar", user_name: "zohra", address: "81 Prospect Street, Brooklyn, NY 11703", email: "zohra.anwar@gmail.com", bank_account: "2000", password: "123")
User.create(first_name: "Haley", last_name: "Balwar", user_name: "haley", address: "1556 Dahill Rd, Brooklyn, NY 11230", email: "haley.balwar@gmail.com", bank_account: "1500", password: "123")
User.create(first_name: "Joy", last_name: "Huang", user_name: "joy", address: "1556 Dahill Rd, Brooklyn, NY 11230", email: "joy.huang@gmail.com", bank_account: "5000", password: "123")


Product.create(name:"iPhone X", description: "The best, most revolutionary iPhone to date. Takes sick pics, and has awesome battery life.", img_url: "https://cdn.shopify.com/s/files/1/1043/3082/products/iPhoneX-SpGry-34BR-34FL-2up-US-EN-PRINT_a3653f66-f87b-49cf-a765-51f2555f57df_1024x1024.jpg")
Product.create(name:"Wooden Chair", description: "Ridiculously comfortable chair.", img_url: "https://cdn-images.article.com/products/SKU373F/2890x1500/image33682.jpg")
Product.create(name:"Green Wipes", description: "These wipes are green.", img_url: "https://de2wfhoo6xqi5.cloudfront.net/size/600/bc5/20b/715edb80db3b7eb8aa72e71ee64a56aeea.jpg")

UserProduct.create(user_id:1, product_id:3, price:5, quantity:10)
UserProduct.create(user_id:2, product_id:3, price:4, quantity:8)
UserProduct.create(user_id:3, product_id:1, price:250, quantity:4)
UserProduct.create(user_id:5, product_id:2, price:28, quantity:7)
