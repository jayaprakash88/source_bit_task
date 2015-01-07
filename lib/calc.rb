module Source_bit
  class Calc
    def initialize(file=nil)
      @file_value = YAML.load_file(file)
    end

    def max_price
      size_one_max_price =  @file_value["1*3"]["prices"].max
	#raise @lucarative_advertisement["1*3"].inspect
      size_two_max_price = @file_value["2*3"]["prices"].max
      size_three_max_price = @file_value["3*3"]["prices"].max

      if (size_one_max_price + size_two_max_price > size_three_max_price)
        {" 1*3 " => size_one_max_price, " 2*3 " =>  size_two_max_price}
      else
        {"3*3" => size_three_max_price}
      end
    end
  
  end
end
