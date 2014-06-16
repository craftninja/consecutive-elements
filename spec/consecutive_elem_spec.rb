require_relative '../lib/consecutive_elements'

describe ConsecutiveElements do

  it 'counts consecutive elements (up to 2)' do
    schedule = ["archery", "swimming", "swimming", "crafts", "archery", "archery", "crafts"]
    consec_elem = ConsecutiveElements.new (schedule)
    actual = consec_elem.consecutive_count
    expected = [ ["archery", 1], ["swimming", 2], ["crafts", 1], ["archery", 2], ["crafts", 1], ]

    expect(actual).to eq(expected)
  end

  it 'counts consecutive elements (up to 3)' do
    schedule = ["archery", "swimming", "swimming", "swimming", "crafts", "archery", "archery", "crafts"]
    consec_elem = ConsecutiveElements.new (schedule)
    actual = consec_elem.consecutive_count
    expected = [ ["archery", 1], ["swimming", 3], ["crafts", 1], ["archery", 2], ["crafts", 1], ]

    expect(actual).to eq(expected)
  end

end
