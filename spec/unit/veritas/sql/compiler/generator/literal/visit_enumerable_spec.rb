require 'spec_helper'

describe SQL::Compiler::Generator::Literal, '#visit_enumerable' do
  subject { object.visit_enumerable(enumerable) }

  let(:described_class) { Class.new(SQL::Compiler::Visitor) { include SQL::Compiler::Generator::Literal } }
  let(:enumerable)      { [ 1, 2 ].freeze                                                                 }
  let(:object)          { described_class.new                                                             }

  it_should_behave_like 'a generated SQL expression'

  its(:to_s) { should eql('(1, 2)') }
end
