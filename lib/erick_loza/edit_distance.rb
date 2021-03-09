module ErickLoza
  class EditDistance
    def initialize(source, target)
      @s = source
      @t = target
      @matrix = ErickLoza::Matrix.new(@s.length + 1, @t.length + 1)
      @matrix.prepare_for_edit_distance!
    end

    def calculate
      (1..@s.length).each do |i|
        (1..@t.length).each do |j|
          cost = (@s[i-1] == @t[j-1]) ? 0 : 1
          costs = [
            @matrix.get(i - 1, j) + 1,       # Cost of deletion
            @matrix.get(i, j - 1) + 1,       # Cost of insertion
            @matrix.get(i - 1, j - 1) + cost # Cost of substitution
          ]
          @matrix.set(i, j, costs.min)
        end
      end

      @matrix.last_value
    end

    def matrix
      @matrix
    end
  end
end
