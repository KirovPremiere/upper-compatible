# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 
big_fours = ["日用品","食品・飲料","家具・家電","文房具"]
big_fours.each do |big_four|
   BigFour.create(name: big_four)
end

genres = ["シャンプー","リンス","ボディーソープ","トイレットペーパー","ティッシュペーパー","絆創膏","体温計","石鹸","漂白剤","柔軟剤","ハンドソープ","皿洗い洗剤","スポンジ","キッチンペーパー","ラップ","アルミホイル","歯磨き粉","歯ブラシ","ハンドクリーム","リップクリーム","日焼け止め","育毛剤","洗顔","入浴剤","化粧水","乳液","殺虫剤","防虫剤","除湿剤","消臭剤","芳香剤","乾電池","線香","マウスウォッシュ"]
big_four = BigFour.find_by(name: "日用品")
genres.each do |genre|
    Genre.create(big_four_id: big_four.id, name: genre)
end

genres = ["米","パスタ","カップ麺","そうめん","スナック菓子","チョコレート","おつまみ","アイス","和菓子","洋菓子","レトルトカレー","カップスープ","コーヒー","コーヒー（粉末）","お茶","お茶（茶葉）","紅茶","紅茶（パック）","牛肉（100g）","鶏肉（100g）","豚肉（100g）","ソーセージ","ハム","魚類（1匹あたり）","ビール","発泡酒","白ワイン","赤ワイン","芋焼酎","麦焼酎","日本酒","カクテル","水","炭酸飲料","牛乳","栄養ドリンク","スポーツ飲料","野菜ジュース"]
big_four = BigFour.find_by(name: "食品・飲料")
genres.each do |genre|
    Genre.create(big_four_id: big_four.id, name: genre)
end

genres = ["空気清浄機","加湿器","扇風機","ストーブ","エアコン","炊飯器","冷蔵庫","電気ケトル","電子レンジ・オーブン","電気ポット","コーヒーメーカー","洗濯機","掃除機","洗濯乾燥機","高圧洗浄機","アイロン・スチーマー","布団乾燥機","ミシン","シェーバー・バリカン","ドライヤー","電動歯ブラシ","美顔器","屋内照明","電球・蛍光灯","懐中電灯","屋外照明","携帯充電器","乾電池","マウス","キーボード"]
big_four = BigFour.find_by(name: "家具・家電")
genres.each do |genre|
    Genre.create(big_four_id: big_four.id, name: genre)
end

genres = ["ボールペン","シャープペンシル","万年筆","消しゴム","鉛筆","ノート","ハサミ","マスキングテープ","のり","ファイル","電卓","ペンケース","ホッチキス","手帳","ファインダー","修正液"]
big_four = BigFour.find_by(name: "文房具")
genres.each do |genre|
    Genre.create(big_four_id: big_four.id, name: genre)
end