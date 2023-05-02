# c = Company.create(name: "ac", img_url: "adsf", location: "asdf", email: "asdf@gmial.com", password: "asdfasdf", bio: "adsfqetbfzxcvaefd")

# c.save

# s = Singer.create(name: "ac", img_url: "adsf", music_genre: "asdf", email: "asdkflm@a;l.asdp", password: "asdfasdf", bio: "adsfqetbfzxcvaefd")

# s.save

# v = c.venues.create(location: "adf", platinaum_seat_count: 2,img_url: "adf",name: "asd", gold_seats_count: 2, siliver_seats_count: 2)

# v.save

# concert = Concert.create(date: "2021-05-02", start_time: "2021-05-02 14:58:51", end_time: "2021-05-02 14:58:51", platinum_ticket_price: 2, gold_ticket_price: 2, siliver_ticket_price: 2, singer_id: s.id, venue_id: v.id)

# concert.save
c = Company.create(name: "ac", img_url: "adsf", location: "asdf", email: "asdf@gmial.com", password: "asdfasdf", bio: "adsfqetbfzxcvaefd")
s = Singer.create(name: "ac", img_url: "adsf", music_genre: "asdf", email: "asdkflm@a;l.asdp", password: "asdfasdf", bio: "adsfqetbfzxcvaefd")
v = Venue.create(location: "adf", platinaum_seat_count: 2, img_url: "adf", name: "asd", gold_seats_count: 2, siliver_seats_count: 2, company: c)
concert = Concert.create(date: "2021-05-02", start_time: "2021-05-02 14:58:51", end_time: "2021-05-02 14:58:51", platinum_ticket_price: 2, gold_ticket_price: 2, siliver_ticket_price: 2, singer_id: s.id, venue: v)
