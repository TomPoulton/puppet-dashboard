require 'spec_helper'

describe "/node_classes/_actions.html.haml" do
  include NodeClassesHelper

  describe "successful render" do
    before { render }

    specify { rendered.should be_success }
    it { should have_tag('a[href=?]', new_node_class_path) }
  end
end
