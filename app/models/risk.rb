class Risk < ApplicationRecord
  enum type: {
      internal: 'Internal',
      external: 'External'
  }
  enum category: {
      c1: 'Desc of type1',
      c2: 'Desc of type2',
      c3: 'Desc of type3'
  }

  belongs_to :user
end