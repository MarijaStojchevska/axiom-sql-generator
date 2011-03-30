require 'spec_helper'

describe SQL::Compiler::Generator::Logic, '#visit_veritas_logic_proposition_true' do
  subject { object.visit_veritas_logic_proposition_true(true_proposition) }

  let(:described_class)  { Class.new(SQL::Compiler::Visitor) { include SQL::Compiler::Generator::Logic } }
  let(:true_proposition) { Logic::Proposition::True.instance                                             }
  let(:object)           { described_class.new                                                           }

  it_should_behave_like 'a generated SQL expression'

  its(:to_s) { should eql('1 = 1') }
end
