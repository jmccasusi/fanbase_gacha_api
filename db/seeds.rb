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
        email_address: 'email1@address'
    }, 
    {
        username: 'sampleuser2',
        password: 'password',
        email_address: 'email2@address'
    }, 
    {
        username: 'sampleuser3',
        password: 'password',
        email_address: 'email3@address'
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
    }
])

GroupCategoryRelation.create([
    {
        group_id: 1,
        category_id: 1
    },
    {
        group_id: 1,
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
        card_id: 3,
        group_id: 1
    },
    {
        user_id: 2,
        card_id: 4,
        group_id: 1
    }
])
