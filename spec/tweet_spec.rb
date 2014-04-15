require 'spec_helper'
describe Tweet do
  it { should ensure_length_of(:content).is_at_most(140) }
  it { should validate_presence_of :content }
  it { should belong_to :user }
  end
