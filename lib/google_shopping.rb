# Ruby uses 'require' to load gems
require 'json'

# Ruby variables just require a name. No 'var'
current_directory = File.dirname(__FILE__)
file = File.read(current_directory + '/products.json')

# We use snake_case in Ruby. No camelCase.
google_data = JSON.parse(file)

# Use 'inspect' to see the contents of an array or hash
# Hashes are similar to objects in JavaScript
#puts google_data.inspect

# Hashes require bracket syntax
# puts google_data['items'][0]['product']['title']

# Put your answers below here

# 1.) The kind of results you're are dealing are shopping#products. Go through the items and find all results 
#that have kind of shopping#product. How many are there? Where else is this count information stored in the search results?

item_array = google_data['items']

# item_array.each do |child| 
#   puts child["product"]["title"]
# end

# puts google_data['currentItemCount']


# 2.) Find all items with a backorder availability in inventories.

# item_array.each do |child| 
#   if child["product"]["inventories"][0]["availability"] == "inStock"
#     puts child["product"]["title"]
#   end
# end

# 3.) Find all items with more than one image link.

# item_array.each do |child| 
#   if child["product"]["images"].count > 1
#     puts child["product"]["title"]
#   end
# end

# 4.) Find all canon products in the items (careful with case sensitivity).

# item_array.each do |child| 
#   if child["product"]["brand"] == "Canon"
#     puts child["product"]["title"]
#   end
# end

# 5.) Find all items that have product author name of "eBay" and are brand "Canon".

# item_array.each do |child| 
#   if child["product"]["author"]["name"].include? "eBay"
#     if child["product"]["brand"] == "Canon"
#       puts child["product"]["title"]
#     end
#   end
# end

# 6.) Print all the products with their brand, price, and a image link

# item_array.each do |child|
#   puts child['product']['brand']
#   puts child['product']['inventories'][0]['price']
#   puts child['product']['images'][0]['link']
# end

