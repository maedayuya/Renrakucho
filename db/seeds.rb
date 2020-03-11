# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create!(
  [
    {name: "園長"},
    {name: "保育士"},
    {name: "栄養士"},
    {name: "看護師"}
  ]
)
Admin.create!(
  [
    { name: '田中守',email: 't@t',password: 'tttttt' , category_id: 1},
    { name: '前田侑哉',email: 'm@m',password: 'mmmmmm', category_id: 2},
    { name: '渡辺司',email: 'w@w',password: 'wwwwww' , category_id: 3},
    { name: '久保祐奈',email: 'k@k',password: 'kkkkkk' , category_id: 4},
  ]
)
Post.create!(
  [
    {
      admin_id: 1,
      title: "園長の田中です。",
      body: "初めまして。４月より園長に就任致しました、田中守です。\r\n
      笑顔溢れる楽しい保育園になるよう努めてまいりますので、\r\n
      保護者の皆様の温かいご支援の程よろしくお願いします。",
      created_at: "2019-04-01 10:00:00"
    },
    {
      admin_id: 2,
      title: "保育士の前田です。",
      body: "初めまして！さくら組の担任をすることになりました、前田侑哉です。\r\n
      体を動かすのが好きなので、子どもたちといっぱい体を動かす活動をしていきたいな\r\n
      と思います。よろしくお願いします。",
      created_at: "2019-04-01 10:10:00"
    },
    {
      admin_id: 3,
      title: "栄養士の渡辺です。",
      body: "初めまして。栄養士の渡辺司と申します。\r\n
      日々美味しいご飯を提供し、お子さまの健康面のサポートをしていきたいと思いますので\r\n
      何卒、よろしくお願い致します。",
      created_at: "2019-04-01 10:20:00"
    },
    {
      admin_id: 4,
      title: "看護士の久保です。",
      body: "初めまして。看護士の久保と申します。\r\n
      お子さまの健康を維持し、安心して園での生活を送れるようサポートさせていただきます。\r\n
      何か気になること等あれば相談に乗りますのでお気軽にお声がけください。",
      created_at: "2019-04-01 10:20:00"
    },
  ]
)
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
      admin_id: 2,
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
ChildPost.create!(
  [
    {
      admin_id: 2,
      child_id: 1,
      title: "パソコンで大はしゃぎ！",
      body: "今日はパソコンで簡単なプログラムを作りました。\r\n
            太輔くんはプログラムがちゃんと動いて大喜びでした。",
      image: open("#{Rails.root}/app/assets/images/great.jpg"),
      condition: 4,
      created_at: "2019-04-08 16:00:00",
    },
    {
      admin_id: 2,
      child_id: 1,
      title: "きれいなしゃぼん玉",
      body: "今日は園庭でしゃぼん玉で遊びました。\r\n
            太輔くんはきれいなしゃぼん玉に釘付けでした。",
      image: open("#{Rails.root}/app/assets/images/good.jpg"),
      condition: 3,
      created_at: "2019-04-09 16:00:00",
    },
    {
      admin_id: 2,
      child_id: 1,
      title: "みんなで近くの公園へ",
      body: "今日は近くの公園まで遊びにいきました。\r\n
            太輔くんは公園でなにをして遊べばよいのかわからないのか\r\n
            じっとしている様子でした。",
      image: open("#{Rails.root}/app/assets/images/normal.jpg"),
      condition: 2,
      created_at: "2019-04-10 16:00:00",
    },
    {
      admin_id: 2,
      child_id: 1,
      title: "友達と喧嘩しちゃいました",
      body: "今日は雨だったので室内で遊んでいたのですが、\r\n
            太輔くんは他の子が遊んでいたぬいぐるみが欲しくて無理やりとって\r\n
            しまいました。「取られたお友達は嫌だったんじゃない？」と聞くと\r\n
            反省している様子でしたが、謝る勇気が出ないまま降園の時間になって\r\n
            しまいました。明日謝る約束をしているので応援してあげてください。",
      image: open("#{Rails.root}/app/assets/images/bad.jpg"),
      condition: 1,
      created_at: "2019-04-11 16:00:00",
    },
    {
      admin_id: 2,
      child_id: 1,
      title: "昨日のことを謝ったのですが、、、",
      body: "昨日の喧嘩のことを勇気を出してお友達に謝りに行ったのですが、\r\n
            お友達に「ぬいぐるみ取ってきたからいや！もう遊ばない！」と\r\n
            言われてしまいました。昨日のことでそのお友達もまだ落ち着いて\r\n
            いないところだと思うので、もう一度週明けにお話してみようと伝えてます。\r\n
            かなり気分が落ち込んでいる様子なので、ご家庭でも励ましてあげてください。",
      image: open("#{Rails.root}/app/assets/images/too_bad.jpg"),
      condition: 0,
      created_at: "2019-04-12 16:00:00",
    }
  ]
)