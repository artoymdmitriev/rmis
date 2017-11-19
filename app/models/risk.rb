class Risk < ApplicationRecord
  paginates_per  5
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

  def self.open_file(file)
    case File.extname(file.original_filename)
      when ".csv" then Roo::CSV.new(file.path, options={})
      when ".xls" then Roo::Excel.new(file.path, options={})
      when ".xlsx" then Roo::Excelx.new(file.path, options={})
      else raise "Unknown file type: #{file.original_filename}"
    end
  end

  def self.to_csv(options = {})
    attributes = %w{category name danger_rate origin_type occured_at description}
    CSV.generate(options) do |csv|
      csv << attributes
      all.each do |risk|
        csv << risk.attributes.values_at(*attributes)
      end
    end
  end

  def self.import(file, user_id: 1)
    attributes = %w{category name danger_rate origin_type occured_at description}
    opened_file = open_file(file)
    (1..opened_file.last_row).each do |i|
      row = opened_file.row(i)
      Risk.create! attributes.zip(row).to_h.merge(user_id: user_id)
    end
  end
end