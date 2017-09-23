# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# コマンド上でDBの定義をするには
# $ rails g model DBname feild1:string feild2:text
# $ rails db:migrate
# 初期データを設定するためのfile
# 今までのデータをリセットするには
# $ rails db:migrate:reset
# 初期データを流し込むには
# $ rails db:seed

5.times do |i|
    Post.create(title: "title #{i}", body: "body #{i}")
end