collection @benefits
attributes :id, :name, :description, :begin_date, :end_date, :benefit_type_id, :business_id
node(:benefit_type_name) { |benefit| benefit.benefit_type.name }

node(:begin_date) { |benefit| benefit.begin_date.strftime('%-d/%b/%Y') }
node(:end_date) { |benefit| benefit.end_date.strftime('%-d/%b/%Y') }
