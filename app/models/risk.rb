class Risk < ApplicationRecord
  enum type: [:internal, :external]
  enum category: {
      type1: 't1',
      type2: 't2',
      type3: 't3'
  }
end