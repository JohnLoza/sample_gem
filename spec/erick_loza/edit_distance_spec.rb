RSpec.describe ErickLoza::EditDistance do

  it "should calculate the edit distance of 'sitting' and 'kitten'" do
    s = 'sitting' # source
    t = 'kitten'  # target

    ed = ErickLoza::EditDistance.new(s, t)
    distance = ed.calculate
    puts "/-/-/ matrix: \n#{ed.matrix.to_s}"

    expect(distance).to eq(3)
  end

  it "should calculate the edit distance of 'sunday' and 'saturday'" do
    s = 'sunday' # source
    t = 'saturday'  # target

    ed = ErickLoza::EditDistance.new(s, t)
    distance = ed.calculate
    puts "/-/-/ matrix: \n#{ed.matrix.to_s}"

    expect(distance).to eq(3)
  end
end
