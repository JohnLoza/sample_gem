RSpec.describe ErickLoza::Matrix do
  before { @matrix = ErickLoza::Matrix.new(3, 3) }

  it "should create a matrix of the correct dimensions" do
    expect(@matrix.length).to eq([3, 3])
  end

  it "parses the matrix to string" do
    result = "[nil, nil, nil]\n" * 3
    expect(@matrix.to_s).to eq(result)
  end

  it "should prepare the matrix for edit distance calculations" do
    @matrix.prepare_for_edit_distance!
    result = "[0, 1, 2]\n[1, nil, nil]\n[2, nil, nil]\n"
    expect(@matrix.to_s).to eq(result)
  end

  it "should set a value for a given position" do
    val = 'new_value'
    @matrix.set(0, 2, val)
    expect(@matrix.get(0, 2)).to eq(val)
  end

  it "should retrieve the last value in the matrix" do
    val = 'last_value'
    @matrix.set(2, 2, val)
    expect(@matrix.last_value).to eq(val)
  end
end
