class Palmeiras < Campeonato
  def self.mundial?
    false
  end

  def self.comemorar
    Campeonato.gritar if self.mundial?
  end
end

class Corinthians < Campeonato
  def self.mundial?
    true
  end

  def self.comemorar
    Campeonato.gritar if self.mundial?
  end
end

class Campeonato
  def self.gritar
    'VAAAI CORINTHIAAAAAAANS'
  end
end

describe 'qualquer coisa' do
  it { is_expected.to be_a(Class).and respond_to(:comemorar) }
end
