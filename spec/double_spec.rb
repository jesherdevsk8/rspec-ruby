RSpec.describe 'Random double' do
  it 'only allows defined methods to be invoked' do
    # football_team = double("Corinthians", screaming_goal: 'GOOOOOOAL!!!', champion: true)
    # expect(football_team.screaming_goal).to eq('GOOOOOOAL!!!')
    # expect(football_team.champion).to be_truthy

    # football_team = double("Corinthians")
    # allow(football_team).to receive(:screaming_goal).and_return('GOOOOOAL')
    # expect(football_team.screaming_goal).to eq('GOOOOOAL')

    football_team = double("Corinthians")
    allow(football_team).to receive_messages(screaming_goal: 'GOOOOOAL', champion: true)
    expect(football_team.screaming_goal).to eq('GOOOOOAL')
    expect(football_team.champion).to eq(true)
  end
end