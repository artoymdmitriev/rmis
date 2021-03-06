module RisksHelper
  def scatter_data
    arr = []
    @risks.group_by {|i| i.category}.each do |k, v|
      hsh = { name: k, data: [v.group_by {|it| it.danger_rate }] }
      hsh[:data].each do |item|
        item.each do |key, val|
          item[key] = val.count
        end
      end
      hsh[:data].map! { |i| i.to_a }
      hsh[:data].flatten!(1)
      hsh[:data].each { |i| i.reverse!}
      arr << hsh
    end
    arr.each { |item| item[:name] = Risk.categories[item[:name]]}
  end

  def line_chart_data
    hash = @risks.group(:origin_type).group_by_day(:occured_at).count.each do |k, v|
      k[0] == 'external' ? k[0] = 'Внешний' : k[0] = 'Внутренний'
    end
    hash
  end
end
