# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(name: '前田侑哉',email: 'm@m',password: 'mmmmmm')
User.create!(
  [
    {
      name: '赤井大輝',
      email: 'a@a',
      password: 'aaaaaa',
    },
    {
      name: '井上真紀',
      email: 'i@i',
      password: 'iiiiii',
    },
    {
      name: '神田忠',
      email: 'k@k',
      password: 'kkkkkk',
    },
    {
      name: '佐々木勇気',
      email: 's@s',
      password: 'ssssss',
    },
    {
      name: '富田雄二',
      email: 't@t',
      password: 'tttttt',
    },
    {
      name: '永田小百合',
      email: 'n@n',
      password: 'nnnnnn',
    },
    {
      name: '元木健二郎',
      email: 'm@m',
      password: 'mmmmmm',
    }
  ]
)
ClassName.create!(
  [
    {
      name: 'さくら組',
      admin_id: 1,
      children_attributes:[ {
      	name: '赤井太輔',
      	user_id: '1',
      	_destroy: false
      },
       {
      	name: '井上優希',
      	user_id: '2',
      	_destroy: false
      },
       {
      	name: '神田浩介',
      	user_id: '3',
      	_destroy: false
      },
       {
      	name: '佐々木琴美',
      	user_id: '4',
      	_destroy: false
      },
       {
      	name: '富田カレン',
      	user_id: '5',
      	_destroy: false
      },
       {
      	name: '永田正樹',
      	user_id: '6',
      	_destroy: false

      },
       {
      	name: '元木優',
      	user_id: '7',
      	_destroy: false
      }]
    }
  ]
)