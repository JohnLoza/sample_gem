module ErickLoza
  class Matrix
    def initialize(length, depth)
      @length = length
      @depth = depth
      @matrix = Array.new

      @length.times do
        @matrix << Array.new
        @depth.times do
          @matrix.last.push nil
        end
      end
    end

    def length
      [@matrix.length, @matrix.first.length]
    end

    def get(x, y)
      @matrix[x][y]
    end

    def set(x, y, value)
      @matrix[x][y] = value
    end

    def last_value
      x, y = length
      self.get(x - 1, y - 1)
    end

    def prepare_for_edit_distance!
      @matrix.each_with_index { |sub_array, i| sub_array[0] = i }
      @matrix.first.each_with_index { |val, i| @matrix.first[i] = i }
    end

    def to_s
      str = ''
      @matrix.each do |sub_array|
        str += sub_array.to_s + "\n"
      end

      return str
    end
  end
end
