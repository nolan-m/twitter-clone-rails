require 'spec_helper'

describe User do
  it { should have_many :tweets }
  it { should validate_presence_of :handle }
end
