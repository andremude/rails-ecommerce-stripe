# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = [
          { email: 'admin@athlete.com', password: '123456', admin: true },
          { email: 'example@example.com', password: '123456' }
        ]

products = [
            { name: "Adidas Adizero RC 5", brand: "Adidas", price: 9000, genre: "Women", category: "Running", photo_path: Rails.root.join('app', 'assets', 'images', 'Adidas_Adizero_RC5.jpg') },

            { name: "Adidas Advantage Lifestyle", brand: "Adidas", price: 7200, genre: "Kids", category: "Urban", discount: 10, photo_path: Rails.root.join('app', 'assets', 'images', 'Adidas_Advantage_Lifestyle.jpg') },

            { name: "Adidas Alphaboost V1 Sustainable BOOST ", brand: "Adidas", price: 9000, genre: "Men", category: "Urban", photo_path: Rails.root.join('app', 'assets', 'images', 'Adidas_Alphaboost_V1_Sustainable_BOOST.jpg') },

            { name: "Adidas Avaflash Low", brand: "Adidas", price: 8500, genre: "Women", category: "Tennis", photo_path: Rails.root.join('app', 'assets', 'images', 'Adidas_Avaflash_Low.jpg') },

            { name: "Adidas Boots X Speedportal.4", brand: "Adidas", price: 10000, genre: "Kids", category: "Football", photo_path: Rails.root.join('app', 'assets', 'images', 'Adidas_X_Speedportal.4.jpg') },

            { name: "Adidas Courtflash", brand: "Adidas", price: 10000, genre: "Women", category: "Tennis", photo_path: Rails.root.join('app', 'assets', 'images', 'Adidas_Courtflash.jpg') },

            { name: "Adidas Deportivo II Indoor", brand: "Adidas", price: 9000, genre: "Men", category: "Football", discount: 10, photo_path: Rails.root.join('app', 'assets', 'images', 'Adidas_Deportivo_II_Indoor.jpg') },

            { name: "Adidas Dropstep Trainer", brand: "Adidas", price: 7000, genre: "Men", category: "Training",  photo_path: Rails.root.join('app', 'assets', 'images', 'Adidas_Dropstep.jpg') },

            { name: "Adidas Duramo Protect", brand: "Adidas", price: 9000, genre: "Men", category: "Running", photo_path: Rails.root.join('app', 'assets', 'images', 'Adidas_Duramo_Protect.jpg') },

            { name: "Adidas EQ19 Run", brand: "Adidas", price: 9000, genre: "Men", category: "Running", photo_path: Rails.root.join('app', 'assets', 'images', 'Adidas_EQ19_Run.jpg') },

            { name: "Adidas Fluidup", brand: "Adidas", price: 8000, genre: "Women", category: "Training", photo_path: Rails.root.join('app', 'assets', 'images', 'Adidas_Fluidup.jpg') },

            { name: "Adidas Gamecourt 2.0", brand: "Adidas", price: 9000, genre: "Men", category: "Tennis", photo_path: Rails.root.join('app', 'assets', 'images', 'Adidas_Gamecourt2.0.jpg') },

            { name: "Adidas Goletto VIII", brand: "Adidas", price: 8000, genre: "Kids", category: "Football", photo_path: Rails.root.join('app', 'assets', 'images', 'Adidas_GolettoVIII.jpg') },

            { name: "Adidas Grand Court Lifestyles", brand: "Adidas", price: 9000, genre: "Kids", category: "Urban", discount: 10, photo_path: Rails.root.join('app', 'assets', 'images', 'Adidas_GrandCourt_Lifestyle.jpg') },

            { name: "Adidas Multix", brand: "Adidas", price: 7000, genre: "Men", category: "Urban", photo_path: Rails.root.join('app', 'assets', 'images', 'Adidas_Multix.jpg') },

            { name: "Adidas Nebzed Cloudfoam", brand: "Adidas", price: 7200, genre: "Men", category: "Urban", discount: 10, photo_path: Rails.root.join('app', 'assets', 'images', 'Adidas_Nebzed_Cloudfoam.jpg') },

            { name: "Adidas Ozelle Cloudfoam Lifestyle", brand: "Adidas", price: 9000, genre: "Men", category: "Urban", photo_path: Rails.root.join('app', 'assets', 'images', 'Adidas_Ozelle_Cloudfoam_Lifestyle.jpg') },

            { name: "Adidas Predator Accuracy.3 FG", brand: "Adidas", price: 10000, genre: "Men", category: "Football", photo_path: Rails.root.join('app', 'assets', 'images', 'Adidas_Predator_Accuracy.3FG.jpg') },

            { name: "Adidas Predator Accuracy.3 Low FG", brand: "Adidas", price: 10000, genre: "Women", category: "Football", photo_path: Rails.root.join('app', 'assets', 'images', 'Adidas_Predator_Accuracy.3_LowFG.jpg') },

            { name: "Adidas Response Runner", brand: "Adidas", price: 9000, genre: "Women", category: "Running", photo_path: Rails.root.join('app', 'assets', 'images', 'Adidas_Response_Runner.jpg') },

            { name: "Adidas Run 70s", brand: "Adidas", price: 8000, genre: "Men", category: "Urban", photo_path: Rails.root.join('app', 'assets', 'images', 'Adidas_Run70s.jpg') },

            { name: "Adidas Streetcheck Cloudfoam Court Low", brand: "Adidas", price: 9000, genre: "Men", category: "Urban", photo_path: Rails.root.join('app', 'assets', 'images', 'Adidas_Streetcheck.jpg') },

            { name: "Adidas Trainer V", brand: "Adidas", price: 7500, genre: "Men", category: "Training", photo_path: Rails.root.join('app', 'assets', 'images', 'Adidas_TrainerV.jpg') },

            { name: "Adidas Ultimashow", brand: "Adidas", price: 9000, genre: "Men", category: "Running", photo_path: Rails.root.join('app', 'assets', 'images', 'Adidas_Ultimashow_Men.jpg') },

            { name: "Adidas Ultimashow", brand: "Adidas", price: 7000, genre: "Women", category: "Running", photo_path: Rails.root.join('app', 'assets', 'images', 'Adidas_Ultimashow_Women.jpg') },

            { name: "Adidas X Speedportal.4", brand: "Adidas", price: 9500, genre: "Kids", category: "Football", photo_path: Rails.root.join('app', 'assets', 'images', 'Adidas_X_Speedportal.4_Kids.jpg') },

            { name: "Adidas Zapatilla Lite Racer 3.0", brand: "Adidas", price: 7000, genre: "Men", category: "Urban", photo_path: Rails.root.join('app', 'assets', 'images', 'Adidas_Zapatilla_LiteRacer3.0.jpg') },

            { name: "Adidas Znsara", brand: "Adidas", price: 8000, genre: "Women", category: "Urban", photo_path: Rails.root.join('app', 'assets', 'images', 'Adidas_Znsara.jpg') },

            { name: "Nike AF1 Shadow", brand: "Nike", price: 6500, genre: "Women", category: "Urban", photo_path: Rails.root.join('app', 'assets', 'images', 'Nike_AF1_Shadow.jpg') },

            { name: "Nike Air Max SYSTM", brand: "Nike", price: 8000, genre: "Kids", category: "Urban", photo_path: Rails.root.join('app', 'assets', 'images', 'Nike_Air_Max_SYSTM.jpg') },

            { name: "Nike Air Zoom Pegasus 39", brand: "Nike", price: 7000, genre: "Men", category: "Running", photo_path: Rails.root.join('app', 'assets', 'images', 'Nike_AirZoom_Pegasus39.jpg') },

            { name: "Nike Court Borough Low 2 SE", brand: "Nike", price: 7200, genre: "Kids", category: "Urban", discount: 10, photo_path: Rails.root.join('app', 'assets', 'images', 'Nike_Court_Borough_Low2SE.jpg') },

            { name: "Nike Court Legacy", brand: "Nike", price: 8000, genre: "Kids", category: "Urban", photo_path: Rails.root.join('app', 'assets', 'images', 'Nike_Court_Legacy.jpg') },

            { name: "Nike Court Legacy Canvas", brand: "Nike", price: 8000, genre: "Men", category: "Urban", photo_path: Rails.root.join('app', 'assets', 'images', 'Nike_Court_Legacy_Canvas.jpg') },

            { name: "Nike Court Vapor Lite", brand: "Nike", price: 8000, genre: "Men", category: "Tennis", photo_path: Rails.root.join('app', 'assets', 'images', 'Nike_Court_VaporLite.jpg') },

            { name: "Nike Court Vision Low", brand: "Nike", price: 9500, genre: "Men", category: "Urban", photo_path: Rails.root.join('app', 'assets', 'images', 'Nike_Court_VisionLow.jpg') },

            { name: "Nike Court Vision Mid", brand: "Nike", price: 8000, genre: "Men", category: "Urban", photo_path: Rails.root.join('app', 'assets', 'images', 'Nike_Court_Vision_Mid.jpg') },

            { name: "Nike Downshifter 12", brand: "Nike", price: 8000, genre: "Men", category: "Running", photo_path: Rails.root.join('app', 'assets', 'images', 'Nike_Downshifter12 _ Men.webp') },

            { name: "Nike Downshifter 12", brand: "Nike", price: 7500, genre: "Women", category: "Running", photo_path: Rails.root.join('app', 'assets', 'images', 'Nike_Downshifter12_Women.jpg') },

            { name: "Nike Ebernon Low", brand: "Nike", price: 8000, genre: "Men", category: "Urban", photo_path: Rails.root.join('app', 'assets', 'images', 'Nike_Ebernon_Low.jpg') },

            { name: "Nike Free Metcon 4", brand: "Nike", price: 8000, genre: "Women", category: "Training", photo_path: Rails.root.join('app', 'assets', 'images', 'Nike_Free_Metcon4.webp') },

            { name: "Nike Legend Essential 3 Next Nature", brand: "Nike", price: 6300, genre: "Men", category: "Training", discount: 30, photo_path: Rails.root.join('app', 'assets', 'images', 'Nike_Legend_Essential3.jpg') },

            { name: "Nike MC Trainer 2", brand: "Nike", price: 8000, genre: "Men", category: "Training", photo_path: Rails.root.join('app', 'assets', 'images', 'Nike_MC_Trainer2.jpg') },

            { name: "Nike Revolution 6 Next Nature", brand: "Nike", price: 8000, genre: "Women", category: "Running", photo_path: Rails.root.join('app', 'assets', 'images', 'Nike_Revolution6.jpg') },

            { name: "Nike Tiempo Legend 9 Academy MG", brand: "Nike", price: 12000, genre: "Women", category: "Football", photo_path: Rails.root.join('app', 'assets', 'images', 'Nike_Tiempo_Legend9.jpg') },

            { name: "Nike Zoom Mercurial Dream Speed Superfly", brand: "Nike", price: 8000, genre: "Men", category: "Football", photo_path: Rails.root.join('app', 'assets', 'images', 'Nike_Zoom_Mercurial_Dream.jpg') },

            { name: "Nike Zoom Mercurial Vapor 15 Elite FG", brand: "Nike", price: 10000, genre: "Men", category: "Football", photo_path: Rails.root.join('app', 'assets', 'images', 'Nike_Zoom_Mercurial_Vapor.jpg') },

            { name: "NikeCourt Air Zoom Vapor Pro 2", brand: "Nike", price: 9000, genre: "Men", category: "Tennis", photo_path: Rails.root.join('app', 'assets', 'images', 'NikeCourt_AirZoom_Men.jpg') },

            { name: "NikeCourt Air Zoom Vapor Pro 2", brand: "Nike", price: 9000, genre: "Women", category: "Tennis", photo_path: Rails.root.join('app', 'assets', 'images', 'NikeCourt_AirZoom_Women.jpg') },

            { name: "NikeCourt Zoom Pro", brand: "Nike", price: 8000, genre: "Men", category: "Tennis", photo_path: Rails.root.join('app', 'assets', 'images', 'NikeCourt_ZoomPro.jpg') },

            { name: "Puma Anzarun Lite", brand: "Puma", price: 8000, genre: "Men", category: "Training", photo_path: Rails.root.join('app', 'assets', 'images', 'Puma_Anzarun_Lite.webp') },

            { name: "Puma Aviator ProFoam Sky", brand: "Puma", price: 9500, genre: "Men", category: "Running", photo_path: Rails.root.join('app', 'assets', 'images', 'Puma_Aviator.jpg') },

            { name: "Puma Carina", brand: "Puma", price: 8000, genre: "Women", category: "Urban", photo_path: Rails.root.join('app', 'assets', 'images', 'Puma_Carina.jpg') },

            { name: "Puma Flyer Flex", brand: "Puma", price: 8000, genre: "Women", category: "Running", photo_path: Rails.root.join('app', 'assets', 'images', 'Puma_Flyer_Flex.jpg') },

            { name: "Puma Flyer Runner", brand: "Puma", price: 8000, genre: "Men", category: "Running", photo_path: Rails.root.join('app', 'assets', 'images', 'Puma_Flyer_Runner.jpg') },

            { name: "Puma Future Match FG/AG", brand: "Puma", price: 8000, genre: "Women", category: "Football", photo_path: Rails.root.join('app', 'assets', 'images', 'Puma_Future_Match.jpg') },

            { name: "Puma Graviton", brand: "Puma", price: 8000, genre: "Men", category: "Urban", photo_path: Rails.root.join('app', 'assets', 'images', 'Puma-Graviton.jpg') },

            { name: "Puma Graviton Pro", brand: "Puma", price: 9000, genre: "Men", category: "Urban", photo_path: Rails.root.join('app', 'assets', 'images', 'Puma-Graviton-Pro.jpg') },

            { name: "Puma Lex", brand: "Puma", price: 8000, genre: "Men", category: "Training", photo_path: Rails.root.join('app', 'assets', 'images', 'Puma_Lex_Men.jpg') },

            { name: "Puma Lex", brand: "Puma", price: 8000, genre: "Women", category: "Training", photo_path: Rails.root.join('app', 'assets', 'images', 'Puma_Lex_Women.jpg') },

            { name: "Puma R78", brand: "Puma", price: 8000, genre: "Men", category: "Urban", photo_path: Rails.root.join('app', 'assets', 'images', 'Puma_R78.jpg') },

            { name: "Puma Supertec", brand: "Puma", price: 9000, genre: "Men", category: "Running", photo_path: Rails.root.join('app', 'assets', 'images', 'Puma_Supertec.jpg') },

            { name: "Puma Tacto II IT", brand: "Puma", price: 8000, genre: "Men", category: "Football", photo_path: Rails.root.join('app', 'assets', 'images', 'Puma_Tacto.jpg') }

          ]

puts '------------Users------------'

users.each do |attributes|
  user = User.create!(attributes)
  puts "Created - #{user.email}"
end

puts '------------Products------------'

products.each do |attributes|
  # product = Product.create!(attributes)
  # puts "Created #{product.name}"
  photo_path = attributes.delete(:photo_path)
  photo = File.open(photo_path, 'rb')
  product = Product.create!(attributes)
  product.photo.attach(io: photo, filename: File.basename(photo_path), content_type: 'image/jpeg')
  puts "Created #{product.name}"
end

puts 'Finished!'
