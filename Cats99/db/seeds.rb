# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cat.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!(:cats)

kitty1 = Cat.create(name: 'snowball', birth_date: '2010/01/20',color: 'black',sex: 'M',description: 'He hates his name')
kitty2 = Cat.create(name: 'reginald', birth_date: '2000/01/20',color: 'brown',sex: 'F',description: 'How tall is this cat really?')
kitty3 = Cat.create(name: 'Sam', birth_date: '2022/03/30',color: 'black',sex: 'M',description: 'This cat is a fatty')
kitty4 = Cat.create(name: 'Keenan', birth_date: '2014/01/20',color: 'white',sex: 'F',description: 'This cat is a fatty')
kitty5 = Cat.create(name: 'Khan', birth_date: '2012/07/06',color: 'brown',sex: 'M',description: 'when the wind can move mountains like dust')
kitty6 = Cat.create(name: 'Sissy', birth_date: '2003/04/12',color: 'brown',sex: 'F',description: 'this cats heart is guarded')
kitty7 = Cat.create(name: 'Garfield', birth_date: '2018/01/15',color: 'orange',sex: 'F',description: 'This cat is famous')
kitty8 = Cat.create(name: 'White Bulgar', birth_date: '2020/04/20',color: 'brown',sex: 'M',description: 'Whitey Bulgar is a criminal')
kitty9 = Cat.create(name: 'Billy the Cat', birth_date: '2008/03/14',color: 'black',sex: 'M',description: 'Billy is a cool cat')
