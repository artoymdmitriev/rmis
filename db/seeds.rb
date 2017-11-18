# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Risk.create(name: 'Плохой персонал', description: 'Персонал организации не выполняет обязанности', category: :c1,
            occured_at: Date.parse('20-07-2017'), danger_rate: 3, origin_type: :internal, user_id: 1)

Risk.create(name: 'Тупой персонал', description: 'Персонал организации не выполняет обязанности', category: :c2,
            occured_at: Date.parse('21-07-2017'), danger_rate: 2, origin_type: :internal, user_id: 1)

Risk.create(name: 'Плохой персонал', description: 'Персонал организации не выполняет обязанности', category: :c1,
            occured_at: Date.parse('23-07-2017'), danger_rate: 4, origin_type: :internal, user_id: 1)

Risk.create(name: 'Тупой персонал', description: 'Персонал организации не выполняет обязанности', category: :c2,
            occured_at: Date.parse('22-07-2017'), danger_rate: 5, origin_type: :internal, user_id: 1)

Risk.create(name: 'Плохой персонал', description: 'Персонал организации не выполняет обязанности', category: :c3,
            occured_at: Date.parse('25-07-2017'), danger_rate: 3, origin_type: :internal, user_id: 1)

Risk.create(name: 'Тупой персонал', description: 'Персонал организации не выполняет обязанности', category: :c4,
            occured_at: Date.parse('26-07-2017'), danger_rate: 1, origin_type: :internal, user_id: 1)

Risk.create(name: 'Плохой персонал', description: 'Персонал организации не выполняет обязанности', category: :c4,
            occured_at: Date.parse('30-07-2017'), danger_rate: 3, origin_type: :internal, user_id: 1)

Risk.create(name: 'Тупой персонал', description: 'Персонал организации не выполняет обязанности', category: :c3,
            occured_at: Date.parse('18-07-2017'), danger_rate: 3, origin_type: :internal, user_id: 1)

Risk.create(name: 'Плохой персонал', description: 'Персонал организации не выполняет обязанности', category: :c2,
            occured_at: Date.parse('25-07-2017'), danger_rate: 5, origin_type: :internal, user_id: 1)

Risk.create(name: 'Тупой персонал', description: 'Персонал организации не выполняет обязанности', category: :c5,
            occured_at: Date.parse('23-07-2017'), danger_rate: 2, origin_type: :internal, user_id: 1)

Risk.create(name: 'Тупой персонал', description: 'Персонал организации не выполняет обязанности', category: :c6,
            occured_at: Date.parse('27-07-2017'), danger_rate: 4, origin_type: :internal, user_id: 1)

Risk.create(name: 'Тупой персонал', description: 'Персонал организации не выполняет обязанности', category: :c3,
            occured_at: Date.parse('26-07-2017'), danger_rate: 2, origin_type: :internal, user_id: 1)

Risk.create(name: 'Тупой персонал', description: 'Персонал организации не выполняет обязанности', category: :c5,
            occured_at: Date.parse('22-07-2017'), danger_rate: 3, origin_type: :internal, user_id: 1)

Risk.create(name: 'Тупой персонал', description: 'Персонал организации не выполняет обязанности', category: :c5,
            occured_at: Date.parse('28-07-2017'), danger_rate: 2, origin_type: :internal, user_id: 1)
