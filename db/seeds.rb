User.create!([
  {email: "derek@email.com", encrypted_password: "$2a$10$Tg6ThGxCQtiGMaWKeafTgu2Z23/FW3SQPreEgGpOzCtRd/Cn4pg8y", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-10-05 05:06:16", last_sign_in_at: "2014-10-05 05:06:16", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  {email: "katrina@email.com", encrypted_password: "$2a$10$gK2Z4/PcYh3S87XgEcsM3Oo.Umr55kFsYxRdL3COlNS1aFX3Z9Ivm", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-10-05 05:09:15", last_sign_in_at: "2014-10-05 05:09:15", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  {email: "roy@email.com", encrypted_password: "$2a$10$TbXuU9XX9eaI5UtYZNWt/uEdc6yBnGW1tffouYFxYgljtYXCqzbV2", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-10-05 05:09:42", last_sign_in_at: "2014-10-05 05:09:42", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"}
])
Article.create!([
  {title: "Balboa", body: "Balboa is a dance invented in California when people didn't have space on the dance floor. Related to Lindy Hop, it is generally danced to fast songs. \r\n "},
  {title: "Lindy Hop", body: "Lindy Hop is a dance from the 40's done to Jazz music at speeds usually between 100 and 200 bpm. "},
  {title: "Blues", body: "Blues dancing is usually done to much slower music. "}
])
