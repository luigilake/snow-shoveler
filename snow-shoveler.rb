# Luigi Lake
# 7.15.17

# Pricing Chart
# 0 - 49 cubic ft:  $20
# 50 - 149 cubic ft: $50
# 150 - 299 cubic ft: $100
# 300+ cubic ft: $150

# GIVEN: The driveway of your neighbor's house is 8 ft wide and 20 ft long. The last snowstorm dropped 8 inches of snow in total.

# Neighbor's driveway
width = 8
length = 20
# Inches of now (feet)
height = 8 / 12.to_f

cubicft_to_shovel = width * length * height

price = case cubicft_to_shovel.round
when 0..49 then 20
when 50..149 then 50
when 150..299 then 100
else 150
end

puts "Cupic Feet: #{cubicft_to_shovel.round(2)}\nQuote price: $#{price}"
