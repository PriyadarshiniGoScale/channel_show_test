# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


channel = Channel.create(name: 'channel_1')
Show.create(name: 'channel_1_show_1', start_time: '11/02/2020 6:00 PM', end_time: '11/02/2020 7:00 PM', channel_id: channel.id)
Show.create(name: 'channel_1_show_2', start_time: '12/02/2020 6:00 PM', end_time: '12/02/2020 7:00 PM', channel_id: channel.id)
Show.create(name: 'channel_1_show_3', start_time: '12/02/2020 7:00 PM', end_time: '12/02/2020 8:00 PM', channel_id: channel.id)
Show.create(name: 'channel_1_show_4', start_time: '12/02/2020 8:00 PM', end_time: '12/02/2020 9:00 PM', channel_id: channel.id)
channel1 = Channel.create(name: 'channel_2')
Show.create(name: 'channel_2_show_1', start_time: '11/02/2020 6:00 PM', end_time: '11/02/2020 7:00 PM', channel_id: channel1.id)
Show.create(name: 'channel_2_show_2', start_time: '11/02/2020 7:00 PM', end_time: '11/02/2020 8:00 PM', channel_id: channel1.id)
channel2 = Channel.create(name: 'channel_3')
Show.create(name: 'channel_3_show_1', start_time: '12/02/2020 6:00 PM', end_time: '12/02/2020 7:00 PM', channel_id: channel2.id)

channel3 = Channel.create(name: 'test_channel_1')
Show.create(name: 'test_channel_1_show_1', start_time: '11/02/2020 6:00 PM', end_time: '11/02/2020 7:00 PM', channel_id: channel3.id)
Show.create(name: 'test_channel_1_show_2', start_time: '11/02/2020 7:00 PM', end_time: '11/02/2020 8:00 PM', channel_id: channel3.id)
Show.create(name: 'test_channel_1_show_3', start_time: '11/02/2020 8:00 PM', end_time: '11/02/2020 9:00 PM', channel_id: channel3.id)
Show.create(name: 'test_channel_1_show_4', start_time: '11/02/2020 9:00 PM', end_time: '11/02/2020 10:00 PM', channel_id: channel3.id)


channel4 = Channel.create(name: 'test_channel_2')
Show.create(name: 'test_channel_2_show_1', start_time: '12/02/2020 6:00 PM', end_time: '12/02/2020 7:00 PM', channel_id: channel4.id)
Show.create(name: 'test_channel_2_show_2', start_time: '12/02/2020 7:00 PM', end_time: '12/02/2020 8:00 PM', channel_id: channel4.id)
Show.create(name: 'test_channel_2_show_3', start_time: '12/02/2020 8:00 PM', end_time: '12/02/2020 9:00 PM', channel_id: channel4.id)


channel5 = Channel.create(name: 'tv_channel_1')
Show.create(name: 'tv_channel_1_show_1', start_time: '13/02/2020 6:00 PM', end_time: '13/02/2020 7:00 PM', channel_id: channel5.id)
Show.create(name: 'tv_channel_1_show_2', start_time: '13/02/2020 7:00 PM', end_time: '13/02/2020 8:00 PM', channel_id: channel5.id)
Show.create(name: 'tv_channel_1_show_3', start_time: '13/02/2020 8:00 PM', end_time: '13/02/2020 9:00 PM', channel_id: channel5.id)


channel6 = Channel.create(name: 'tv_channel_2')
Show.create(name: 'tv_channel_2_show_1', start_time: '13/02/2020 6:00 PM', end_time: '13/02/2020 7:00 PM', channel_id: channel6.id)
Show.create(name: 'tv_channel_2_show_2', start_time: '13/02/2020 7:00 PM', end_time: '13/02/2020 8:00 PM', channel_id: channel6.id)
Show.create(name: 'tv_channel_2_show_3', start_time: '13/02/2020 8:00 PM', end_time: '13/02/2020 9:00 PM', channel_id: channel6.id)
