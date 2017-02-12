def change_coins(amount)
  coins = []
  [200, 100, 50, 20, 10, 5, 2, 1].each do |coin| 
   while amount >= coin
     amount -= coin
     coins << coin
    end
  end
  coins
end

describe :change do
# [ 200, 100, 50, 20, 10, 5, 2, 1]
# change(23) = [ 10, 10, 2, 1 ]
  it 'gives nothing for 0' do
    expect(change_coins(0)).to eq []
  end
  
  it 'gives 1 2p coin and 1 1p coin for 3' do
    expect(change_coins(3)).to eq [2, 1]
  end

  it 'gives 2 2p coins for 4' do
    expect(change_coins(4)).to eq [2, 2]
  end

[200, 100, 50, 20, 10, 5, 2, 1].each do  |coin|
  it "gives 1 #{coin}p coin for #{coin}" do
    expect(change_coins(coin)).to eq [coin]
  end
  end
end

