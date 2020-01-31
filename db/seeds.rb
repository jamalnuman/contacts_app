# Contact.create!([
#   {firstname: "Burns", lastname: "Numan", email: "jnuman82@gmail.com", phone_number: "510-555-5555", middlename: "Flowers", bio: "From California"},
#   {firstname: "Jamal", lastname: "Numan", email: "jnuman82@gmail.com", phone_number: "510-555-5555", middlename: "Lottery", bio: "Lucky man"},
#   {firstname: "Jamal", lastname: "numan", email: "jnuman82@gmail.com", phone_number: "555 555 5555", middlename: "dont have one", bio: nil},
#   {firstname: "Yasmeen", lastname: "Bob", email: "ya@aol.com", phone_number: "510-555-5555", middlename: "Doesnt have", bio: "Im in the 30's"},
#   {firstname: "Ajmal", lastname: "Bob", email: "ajnuman@aol.com", phone_number: "510-555-5555", middlename: "FLOWERS", bio: "Im in the 30's"},
#   {firstname: "JAMAL", lastname: "Bob", email: "JNUMAN82@GMAIL.COM", phone_number: "[:phone_number]", middlename: "Henry", bio: "Im in the 30's"},
#   {firstname: "jamal", lastname: "Bob", email: "jnuman82@gamail.com", phone_number: "55555555555", middlename: "Skinny", bio: "Im in the 30's"},
#   {firstname: "Barney", lastname: "Bob", email: "jnumann82@gamail.com", phone_number: "55555555555", middlename: "HUH", bio: "Im in the 30's"},
#   {firstname: "jamal", lastname: "numan", email: "jnnumann82@gamail.com", phone_number: "55555555555", middlename: "Bob", bio: "Im in the 30's"}
# ])

# ["family", "work"]
# [[9, "jamal"], [15, "JAMAL"], [16, "jamal"], [18, "jamal"], [10, "Burns"], [11, "Jamal"], [13, "Yasmeen"], [14, "Ajmal"], [17, "Barney"], [19, "Burns"], [20, "Jamal"], [22, "Yasmeen"], [23, "Ajmal"], [25, "jamal"], [26, "Barney"], [27, "jamal"], [28, "Burns"], [29, "Jamal"], [32, "Ajmal"], [33, "JAMAL"], [35, "Barney"], [36, "jamal"], [3, "Burns"], [4, "Jamal"], [7, "Jamal"], [2, "Yasmeen"], [6, "JAMAL"], [8, "jamal"], [12, "Jamal"], [30, "Jamal"], [24, "JAMAL"], [31, "Yasmeen"], [34, "jamal"], [1, "Ajmal"], [5, "Barney"], [21, "Jamal"]]

# [["family", 1], ["work", 2]]

GroupContact.create(contact_id: 9, group_id: 1)
GroupContact.create(contact_id: 22, group_id: 1)
GroupContact.create(contact_id: 23, group_id: 2)
GroupContact.create(contact_id: 31, group_id: 2)
GroupContact.create(contact_id: 1, group_id: 1)
GroupContact.create(contact_id: 17, group_id: 2)

