# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
user = User.create([
    {
        name: "ashwin",
        url: "www.ashwin.com",
        short_url: "www.ash.com"
    },
    {
        name: "binod",
        url: "www.binod.com",
        short_url: "www.bin.com"
    },
    {
        name: "chetan",
        url: "www.chetan.com",
        short_url: "www.che.com"
    },
    {
        name: "darshan",
        url: "www.darshan.com",
        short_url: "www.dar.com"
    }
])

h1 = H1.create([
    {
        heading: "Hello world",
        user_id: User.first.id
    }
])

friendship = Friendship.create([
    {
        user_id: User.first.id,
        friend_id: User.last.id
    },
    {
        user_id: User.second.id,
        friend_id: User.third.id
    }
])
