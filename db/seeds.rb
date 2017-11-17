# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Risk.create(name: 'Плохой персонал', description: 'Персонал организации не выполняет обязанности', category: :c1,
            occured_at: Date.parse('12-07-2017'), danger_rate: 3, origin_type: :internal, user_id: 1)

Risk.create(name: 'Тупой персонал', description: 'Персонал организации не выполняет обязанности', category: :c2,
            occured_at: Date.parse('13-07-2017'), danger_rate: 2, origin_type: :internal, user_id: 1)

Risk.create(name: 'Отсутствие СЭД', description: 'СЭД\'а нет!!', category: :c2,
            occured_at: Date.parse('13-07-2017'), danger_rate: 2, origin_type: :external, user_id: 1)

Risk.create(name: 'Плохой персонал', description: 'Персонал организации не выполняет обязанности', category: :c1,
            occured_at: Date.parse('12-07-2017'), danger_rate: 4, origin_type: :internal, user_id: 1)

Risk.create(name: 'Плохой персонал', description: 'Персонал организации не выполняет обязанности', category: :c1,
            occured_at: Date.parse('12-07-2017'), danger_rate: 3, origin_type: :internal, user_id: 1)

Risk.create(name: 'Плохой персонал', description: 'Персонал организации не выполняет обязанности', category: :c1,
            occured_at: Date.parse('14-07-2017'), danger_rate: 5, origin_type: :external, user_id: 1)

Risk.create(name: 'Плохой персонал', description: 'Персонал организации не выполняет обязанности', category: :c1,
            occured_at: Date.parse('15-07-2017'), danger_rate: 3, origin_type: :internal, user_id: 1)

Risk.create(name: 'Плохой персонал', description: 'Персонал организации не выполняет обязанности', category: :c1,
            occured_at: Date.parse('15-07-2017'), danger_rate: 1, origin_type: :external, user_id: 1)

Risk.create(name: 'Плохой персонал', description: 'Персонал организации не выполняет обязанности', category: :c1,
            occured_at: Date.parse('16-07-2017'), danger_rate: 2, origin_type: :external, user_id: 1)

Risk.create(name: 'Плохой персонал', description: 'Персонал организации не выполняет обязанности', category: :c1,
            occured_at: Date.parse('16-07-2017'), danger_rate: 3, origin_type: :internal, user_id: 1)

Risk.create(name: 'Плохой персонал', description: 'Персонал организации не выполняет обязанности', category: :c1,
            occured_at: Date.parse('16-07-2017'), danger_rate: 3, origin_type: :external, user_id: 1)

Risk.create(name: 'Плохой персонал', description: 'Персонал организации не выполняет обязанности', category: :c1,
            occured_at: Date.parse('16-07-2017'), danger_rate: 4, origin_type: :internal, user_id: 1)

Risk.create(name: 'Плохой персонал', description: 'Персонал организации не выполняет обязанности', category: :c1,
            occured_at: Date.parse('16-07-2017'), danger_rate: 3, origin_type: :internal, user_id: 1)

Risk.create(name: 'Плохой персонал', description: 'Персонал организации не выполняет обязанности', category: :c1,
            occured_at: Date.parse('19-07-2017'), danger_rate: 5, origin_type: :external, user_id: 1)

Risk.create(name: 'Плохой персонал', description: 'Персонал организации не выполняет обязанности', category: :c1,
            occured_at: Date.parse('18-07-2017'), danger_rate: 3, origin_type: :internal, user_id: 1)

Risk.create(name: 'Плохой персонал', description: 'Персонал организации не выполняет обязанности', category: :c1,
            occured_at: Date.parse('18-07-2017'), danger_rate: 3, origin_type: :external, user_id: 1)

Risk.create(name: 'Плохой персонал', description: 'Персонал организации не выполняет обязанности', category: :c1,
            occured_at: Date.parse('19-07-2017'), danger_rate: 2, origin_type: :internal, user_id: 1)
