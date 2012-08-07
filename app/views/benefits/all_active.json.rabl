collection @benefits
attributes :id, :name, :description, :begin_date, :end_date, :benefit_type_id
node(:benefit_type_name) { |benefit| benefit.benefit_type.name }
