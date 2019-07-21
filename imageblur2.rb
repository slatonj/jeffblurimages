class Image

	def initialize(image)
		@image = image
	end

    def location
        location = []
        @image.each_with_index do |array, vert|
        array.each_with_index do |num, horz|

          if num == 1
            location << [vert, horz]
          end
        end
      end
     location
    end

  def blur
    ones = location
          ones.each do |vert_index, horz_index|          
            @image[vert_index][horz_index -1] = 1 unless horz_index == 0
            @image[vert_index][horz_index +1] = 1 unless horz_index == 3
            @image[vert_index -1][horz_index] = 1 unless vert_index == 0
            @image[vert_index +1][horz_index] = 1 unless vert_index == 3
          end        
  end
  
  
  
  def output_image
	  @image.each do |x|
		 puts x.join(" ") 
		end
  end
end

    
image = Image.new([
        [0, 0, 0, 0],
        [0, 1, 0, 0],
        [0, 0, 0, 1],
        [0, 0, 0, 0]
			])
			image.output_image
			puts
			image.blur

      image.output_image
			
			