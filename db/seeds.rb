# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([
    {
        username: 'sampleuser1',
        password: 'password',
        email: 'email1@address'
    }, 
    {
        username: 'sampleuser2',
        password: 'password',
        email: 'email2@address'
    }, 
    {
        username: 'sampleuser3',
        password: 'password',
        email: 'email3@address'
    }
])

Group.create([
    {
        name: 'First Group',
        is_private: false,
        roll_interval: 1,
        claim_interval: 3,
        owner_id: 1
    },
    {
        name: 'Second Group',
        is_private: false,
        roll_interval: 1,
        claim_interval: 3,
        owner_id: 1
    },
    {
        name: 'Third Group',
        is_private: false,
        roll_interval: 1,
        claim_interval: 3,
        owner_id: 2
    }
])

UserGroupRelation.create([
    {
        user_id: 1,
        group_id: 1
    },
    {
        user_id: 1,
        group_id: 2
    },
    {
        user_id: 1,
        group_id: 3
    },
    {
        user_id: 2,
        group_id: 2
    },
    {
        user_id: 2,
        group_id: 3
    },
    {
        user_id: 3,
        group_id: 1
    }
])

Room.create([
    {
        name: 'Room 1-1',
        group_id: 1
    },
    {
        name: 'Room 1-2',
        group_id: 1
    },
    {
        name: 'Room 2-1',
        group_id: 2
    },
    {
        name: 'Room 3-1',
        group_id: 3
    }
])

Message.create([
    {
        content: "Hello! This is my first message!",
        room_id: 1,
        user_id: 1
    },
    {
        content: "Second message!",
        room_id: 1,
        user_id: 1
    },
    {
        content: "3rd message!",
        room_id: 1,
        user_id: 1
    },
    {
        content: "4th!",
        room_id: 1,
        user_id: 1
    },
    {
        content: "Goodbye!",
        room_id: 2,
        user_id: 2
    },
    {
        content: "Hi world!",
        room_id: 4,
        user_id: 3
    }
])

Deck.create([
    {
        name: 'Harry Potter'
    },
    {
        name: 'Naruto'
    },
    {
        name: 'Red Velvet'
    },
    {
        name: 'iTZY'
    },
    {
        name: 'Twice'
    },
    {
        name: 'Black Pink'
    },
    {
        name: 'Korean Actor/Actress'
    },
    {
        name: 'Winner'
    },
    {
        name: 'EXO'
    },
    {
        name: 'BTS'
    },
    {
        name: 'ASTRO'
    },
    {
        name: 'Wanna One'
    },
    {
        name: 'BIGBANG'
    },
    {
        name: 'BTOB'
    },
    {
        name: 'iKon'
    }

])

Category.create([
    {
        name: 'Western Series'
    },
    {
        name: 'Anime'
    },
    {
        name: 'Live Action'
    }, 
    {
        name: 'K-POP'
    }
])

DeckCategoryRelation.create([
    {
        deck_id: 1,
        category_id: 1
    },
    {
        deck_id: 1,
        category_id: 3
    },
    {
        deck_id: 2,
        category_id: 2
    },
    {
        deck_id: 3,
        category_id: 4
    },
    {
        deck_id: 4,
        category_id: 4
    },
    {
        deck_id: 5,
        category_id: 4
    },
    {
        deck_id: 6,
        category_id: 4
    },
    {
        deck_id: 7,
        category_id: 4
    },
    {
        deck_id: 8,
        category_id: 4
    },
    {
        deck_id: 9,
        category_id: 4
    },
    {
        deck_id: 10,
        category_id: 4
    },
    {
        deck_id: 11,
        category_id: 4
    },
    {
        deck_id: 12,
        category_id: 4
    },
    {
        deck_id: 13,
        category_id: 4
    },
    {
        deck_id: 14,
        category_id: 4
    },
    {
        deck_id: 15,
        category_id: 4
    }
])

Card.create([
    {
        name: "Harry Potter",
        likes: 0,
        deck_id: 1
    },
    {
        name: "Hermione Granger",
        likes: 0,
        deck_id: 1
    },
    {
        name: "Ron Weasley",
        likes: 0,
        deck_id: 1
    },
    {
        name: "Naruto Uzumaki",
        likes: 0,
        deck_id: 2
    },
    {
        name: "Sasuke Uchiha",
        likes: 0,
        deck_id: 2
    },
    {
        name: "Hinata Hyuga",
        likes: 0,
        deck_id: 2
    },
    {
        name: "Irene (Bae Joohyun)",
        likes: 0,
        deck_id: 3,
        gender: 'female',
        img_url: 'https://i.imgur.com/FpvZOG8.jpg'
    },
    {
        name: "Yeji (Hwang Yeji)",
        likes: 0,
        deck_id: 4,
        gender: 'female',
        img_url: 'https://i.imgur.com/XiXz2Dl.jpg'
    },
    {
        name: "Ryujin (Shin Ryujin)",
        likes: 0,
        deck_id: 4,
        gender: 'female',
        img_url: 'https://i.imgur.com/HFZqrpg.jpg'
    },
    {
        name: "Dahyun (Kim Dahyun)",
        likes: 0,
        deck_id: 5,
        gender: 'female',
        img_url: 'https://i.imgur.com/4biz4RG.jpg'
    },
    {
        name: "Momo (Hirai Momo)",
        likes: 0,
        deck_id: 5,
        gender: 'female',
        img_url: 'https://i.imgur.com/m328HoI.jpg'
    },
    {
        name: "Jennie (Kim Jennie)",
        likes: 0,
        deck_id: 6,
        gender: 'female',
        img_url: 'https://i.imgur.com/lsZZLRy.jpg'
    },
    {
        name: "Lisa (Lalisa Manoban)",
        likes: 0,
        deck_id: 6,
        gender: 'female',
        img_url: 'https://i.imgur.com/nrTLiW2.jpg'
    },
    {
        name: "Nam Joohyuk",
        likes: 0,
        deck_id: 7,
        gender: 'male',
        img_url: 'https://i.imgur.com/E9CK0Fk.jpg'
    },
    {
        name: "Park Bogum",
        likes: 0,
        deck_id: 7,
        gender: 'male',
        img_url: 'https://i.imgur.com/YKqwI4j.jpg'
    },
    {
        name: "Lee Minho",
        likes: 0,
        deck_id: 7,
        gender: 'male',
        img_url: 'https://i.imgur.com/rCHkA9o.jpg'
    },
    {
        name: "Ji Changwook",
        likes: 0,
        deck_id: 7,
        gender: 'male',
        img_url: 'https://i.imgur.com/rhjgIyu.jpg'
    },
    {
        name: "Song Joongki",
        likes: 0,
        deck_id: 7,
        gender: 'male',
        img_url: 'https://i.imgur.com/x3a2oSF.jpg'
    },
    {
        name: "Lee Jongsuk",
        likes: 0,
        deck_id: 7,
        gender: 'male',
        img_url: 'https://i.imgur.com/mZAbrG3.jpg'
    },
    {
        name: "Park Seojoon",
        likes: 0,
        deck_id: 7,
        gender: 'male',
        img_url: 'https://i.imgur.com/xEiqBNy.jpg'
    },
    {
        name: "Mino (Song Minho)",
        likes: 0,
        deck_id: 8,
        gender: 'male',
        img_url: 'https://i.imgur.com/TLbEMtC.jpg'
    },
    {
        name: "Sehun (Oh Sehun)",
        likes: 0,
        deck_id: 9,
        gender: 'male',
        img_url: 'https://i.imgur.com/uL2wwoq.jpg'
    },
    {
        name: "Kai (Kim Jongin)",
        likes: 0,
        deck_id: 9,
        gender: 'male',
        img_url: 'https://i.imgur.com/BJY68F9.jpg'
    },
    {
        name: "V (Kim Taehyung)",
        likes: 0,
        deck_id: 10,
        gender: 'male',
        img_url: 'https://i.imgur.com/krhEd1e.jpg'
    },
    {
        name: "Jin (Kim Seokjin)",
        likes: 0,
        deck_id: 10,
        gender: 'male',
        img_url: 'https://i.imgur.com/4gx4q4J.jpg'
    },
    {
        name: "Jongkook (Jeon Jeongguk)",
        likes: 0,
        deck_id: 10,
        gender: 'male',
        img_url: 'https://i.imgur.com/XQZ3zQh.jpg'
    },
    {
        name: "Cha Eunwoo",
        likes: 0,
        deck_id: 11,
        gender: 'male',
        img_url: 'https://i.imgur.com/TL8gDU6.jpg'
    },
    {
        name: "Kang Daniel",
        likes: 0,
        deck_id: 12,
        gender: 'male',
        img_url: 'https://i.imgur.com/uadfFz1.jpg'
    },
    {
        name: "G-Dragon (Kwon Jiyong)",
        likes: 0,
        deck_id: 13,
        gender: 'male',
        img_url: 'https://i.imgur.com/bJCymwo.jpg'
    },
    {
        name: "Sungjae (Yook Sungjae)",
        likes: 0,
        deck_id: 14,
        gender: 'male',
        img_url: 'https://i.imgur.com/dWvX0pl.jpg'
    },
    {
        name: "B.I. (Kim Hanbin)",
        likes: 0,
        deck_id: 15,
        gender: 'male',
        img_url: 'https://i.imgur.com/0rAf2Zr.jpg'
    }

])

GroupCategoryRelation.create([
    {
        group_id: 1,
        category_id: 4
    },
    {
        group_id: 2,
        category_id: 2
    },
    {
        group_id: 2,
        category_id: 3
    }
])

UserCardRelation.create([
    {
        user_id: 1,
        group_id: 1,
        card_id: 7
    },
    {
        user_id: 1,
        group_id: 1,
        card_id: 8
    },
    {
        user_id: 2,
        group_id: 1,
        card_id: 8
    }
])
