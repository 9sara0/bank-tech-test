require "statement"

describe Statement do
  let(:log)           { double :log }
  subject(:statement) { described_class.new(log) }

end
