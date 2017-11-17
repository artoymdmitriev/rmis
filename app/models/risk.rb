class Risk < ApplicationRecord
  enum type: {
      internal: 'Внутренний',
      external: 'Внешний'
  }
  enum category: {
      c1: 'Desc of category 1',
      c2: 'Desc of category 2',
      c3: 'Desc of category 3',
      c4: 'Desc of category 4',
      c5: 'Desc of category 5',
      c6: 'Desc of category 6',
      c7: 'Desc of category 7',
      c8: 'Desc of category 8',
      c9: 'Desc of category 9'
  }

  belongs_to :user
end