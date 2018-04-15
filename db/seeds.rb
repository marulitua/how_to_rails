# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create({
  name: 'Erwin Maruli Tua Pakpahan',
  dob: 'October 3rd 1991',
  position: 'Software Engineer',
  enthusiast: 'Linux Enthusiast',
  address: 'Taman Srikandi Residence D12, Kec. Kuta Utara, Bali 80117, Indonesia',
  quote: 'Be the light',
  about: "I'm a dedicated programmer and I live for making great code that helps people. I fully support the Open Source philosophy. I desire to work for a company where my talents can be practiced to create great products for users and add value to my employer, where I can be stretched and encouraged to learn new things",
  contacts_attributes: [
    {
      key: 'phone',
      value: '(+62) 852-1092-0535'
    },
    {
      key: 'email',
      value: 'erwinmaruli@gmail.com'
    },
    {
      key: 'github',
      value: 'marulitua'
    },
    {
      key: 'linkedin',
      value: 'https://www.linkedin.com/in/marulitua/'
    },
    {
      key: 'skype',
      value: 'erwinmaruli'
    }]
})

Education.create({
  degree: 'B.S. in Computer Science and Engineering',
  institution: 'UMN(Universitas Multimedia Nusantara)',
  location: 'Banten, Indonesia',
  from: 'September 2009',
  until: 'June 2014',
  user: user
})

Skill.create([{
  category: 'Programming Category',
  item: 'PHP, Python, Node.JS, C/C++, Rust, JAVA, Ruby, LaTeX, Bash',
  user: user
}, {
  category: 'Web Category',
  item: 'Ruby on Rails, Vue.js, Laravel, Lumen, Symfony2, Yii, HTML5, LESS, SASS',
  user: user
}, {
  category: 'CI',
  item: 'Jenkins, Gitlab CI, Travi CI, CircleCI',
  user: user
}, {
  category: 'Database Category',
  item: 'MySql, MariaDB, PostgreSQL, MongoDB, sqlite, Oracle',
  user: user
}, {
  category: 'Languages Category',
  item: 'Indonesia, English, Deutsch, Batak',
  user: user
}])

Experience.create([
  {
    company: 'PT Nata Solutio Pratama',
    position: 'Web Developer',
    location: 'Jakarta, Indonesia',
    from: 'July 2012',
    until: 'December 2013',
    user: user,
    achivements_attributes: [
      {
        item: "Part of the team that developed a tax information system for Pajak Bumi dan Bangunan (Indonesia's tax office), implemented in PHP with Yii framework and Oracle database"
      },
      {
        item: 'Part of the team that developed "Hotele" a hotel management system, implemented in PHP with Yii framework and MySQL database'
      }
    ]
  },
  {
    company: 'PT Renaissance',
    position: 'Web Developer',
    location: 'Jakarta, Indonesia',
    from: 'January 2014',
    until: 'June 2014',
    user: user,
    achivements_attributes: [
      {
        item: "Part of the team that developed an internal application for PT. BSA, implemented in PHP with Code Igniter framework and MySQL database"
      }
    ]
  },
  {
    company: "PT Vibiz",
    position: "Web Developer",
    location: 'Jakarta, Indonesia',
    from: "August 2014",
    until: "May 2015",
    user: user,
    achivements_attributes: [
      {
        item: "Part of the team that built visijobs.com, a job search portal, implemented in PHP with Symfony2 framework and MySQL database"
      }
    ]
  },
  {
    company: "PT Domikado",
    position: "Web Developer",
    location: "Jakarta, Indonesia",
    from: "June 2015",
    until: "January 2017",
    user: user,
    achivements_attributes: [
      {
        item: "Part of the team that built and maintained Fourseason's internal purchasing and inventory system"
      },
      {
        item: "Improving and maintaning popazop.com, an e-commerce platform"
      },
      {
        item: "Part of the team that built ciptadana.com company's profile with custom CMS"
      },
      {
        item: "Building REST api and backend for iTaxi's network ads, implemented in Ruby on Rails framework and MySQL database"
      }
    ]
  },
  {
    company: "PT Bonofactum",
    position: "DevOp & Web Developer",
    location: "Bali, Indonesia",
    from: "February 2017",
    until: "present",
    user: user,
    achivements_attributes: [
      {
        item: "Implemented real-time performance and health monitoring of servers"
      },
      {
        item: "Implemented Distributed Message Processing"
      },
      {
        item: "Implemented automation of database, deployment and build"
      },
      {
        item: "Encorage team members to use testable code and Design Pattern"
      },
      {
        item: "Built and deployed overall service infrastructure utilizing Docker container, Gitlab CI, Digital Ocean and Domain Factory"
      }
    ]
  }
])

Honor.create([{
  award: '2nd Place',
  event: 'Hotel Amaris Front Office Systems Competition',
  location: 'Jakarta, Indonesia',
  year: '2013',
  user: user
}, {
  award: '1st Place',
  event: 'Game Development Competition UMN Protowar',
  location: 'Jakarta, Indonesia',
  year: '2012',
  user: user
}])

Reference.create([{
  name: 'Maria Irmina',
  organization: 'UMN(Universitas Multimedia Nusantara)',
  location: 'Banten, Indonesia',
  position: 'Head of Information and Technology Faculty',
  contacts_attributes: [{
    key: 'phone',
    value: '(+62) 215-4220-808'
  }, {
    key: 'email',
    value: 'maria@unimedia.ac.id',
  }]
}, {
  name: 'Satya Wicaksana',
  organization: 'PT. Panca Amara Utama',
  location: 'Jakarta, Indonesia',
  position: 'Technical Consultant',
  contacts_attributes: [{
    key: 'phone',
    value: '(+62) 821-1701-4024',
  }, {
    key: 'linkedin',
    value: 'https://www.linkedin.com/in/satya-wicaksana-74163471'
  }]
}, {
  name: 'Gian Febrian',
  organization: 'cicilan.co.id',
  location: 'Jakarta, Indonesia',
  position: 'Go developer',
  contacts_attributes: [{
    key: 'phone',
    value: '(+62) 812-9699-3888'
  }, {
    key: 'linkedin',
    value: 'https://www.linkedin.com/in/gian-febrian-3a9241106'
  }]
}, {
  name: 'Teja Sophista',
  organization: 'Mindvalley',
  location: 'Kuala Lumpur',
  position: 'Web developer',
  contacts_attributes: [{
    key: 'phone',
    value: '(+62) 857-2039-5525',
  }, {
    key: 'linkedin',
    value: 'https://www.linkedin.com/in/teja-sophista-67349532/'
  }]
}])
