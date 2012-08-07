collection @businesses

attributes :id, :category_id, :name, :phone, :address, :description
node(:logo_url) { |business| business.logo.url }
