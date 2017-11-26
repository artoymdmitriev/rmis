class Risk < ApplicationRecord
  enum type: {
      internal: 'Внутренний',
      external: 'Внешний'
  }
  enum category: {
      c41: 'Понимание организации и ее контекста',
      c42: 'Понимание потребностей и ожиданий заинтересованных сторон',
      c43: 'Определение области применения системы менеджмента качества',
      c44: 'Система менеджмента качества и ее процессы',
      c51: 'Лидерство и приверженность',
      c52: 'Политика',
      c53: 'Роли, обязанности и полномочия в организации',
      c61: 'Действия по рассмотрению рисков и возможностей',
      c62: 'Цели в области качества и планирование их достижения',
      c63: 'Планирование изменений',
      c71: 'Ресурсы',
      c72: 'Компетентность',
      c73: 'Осведомленность',
      c74: 'Коммуникации',
      c81: 'Документированная информация',
      c82: 'Требования к продукции и услугам',
      c83: 'Проектирование и разработка продукции и услуг',
      c84: 'Управление предоставляемыми извне процессами, продукцией и услугами',
      c85: 'Предоставление продукции и услуг',
      c86: 'Выпуск продукции и услуг',
      c87: 'Управление несоответствующими выходами',
      c9: 'Оценивание пригодности',
      c10: 'Улучшение'
  }

  belongs_to :user

  def self.open_file(file)
    case File.extname(file.original_filename)
      when ".csv" then Roo::CSV.new(file.path, csv_options: { encoding: Encoding::UTF_8 })
      when ".xls" then Roo::Excel.new(file.path, xls_options: { encoding: Encoding::UTF_8 })
      when ".xlsx" then Roo::Excelx.new(file.path, xlsx_options: { encoding: Encoding::UTF_8 })
      else raise "Unknown file type: #{file.original_filename}"
    end
  end

  def self.to_csv(options = {})
    attributes = %w{category name danger_rate origin_type occured_at description}
    CSV.generate(encoding: Encoding::WINDOWS_1251) do |csv|
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