class Campeonato
  def self.gritar
    'É CAMPEÃO PORRAAAAAAAAA'
  end
end

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

RSpec.describe Corinthians do
  it { expect(Corinthians.mundial?).to be_truthy }
  it { expect(Corinthians.gritar).to respond_to(:length) }
  it { expect(Corinthians.gritar).to start_with('É CAMPEÃO') }
  it { expect(Corinthians.comemorar).to start_with('É CAMPEÃO') }
  it { expect(Corinthians).to respond_to(:class) }
end

RSpec.describe Palmeiras do
  it { expect(Palmeiras.mundial?).to be_falsy }
  it { expect(Palmeiras.gritar).to respond_to(:length) }
  it { expect(Palmeiras.gritar).to start_with('É CAMPEÃO') }
  it { expect(Palmeiras.comemorar).to be_nil }
  it { expect(Palmeiras).to respond_to(:class) }
end