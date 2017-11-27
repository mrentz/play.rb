require 'spec_helper'

describe 'RSpecGreeter' do
  before do
    @grid_pattern = StringIO.new
  end
  
  it 'Should get user input' do
    @grid_pattern.stub!(:gets) { "phrase\n" }
    
    expect(input).to eq('k')  # Then
  end
end
