class Cart < ApplicationRecord

has_many :line_items, dependent: :destroy

def add_cube(cube)
	current_item = line_items.find_by(cube_id: cube.id)
	if current_item
		current_item.increment(:quantity)
	else
		current_item = line_items.build(cube_id: cube.id) # return new object instatntiated with cube_id attribute
	end
	current_item
end


end
