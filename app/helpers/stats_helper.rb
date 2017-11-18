module StatsHelper
  def scatter_data
    risks_by_categories = @risks.group_by {|i| i.category}
    arr = []
    risks_by_categories.each do |k, v|
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
    arr
  end
end
