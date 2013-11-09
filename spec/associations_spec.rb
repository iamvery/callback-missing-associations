require 'spec_helper'

describe 'associations' do
  let(:widget){ Widget.create! }

  Tag.before_save do
    raise 'Oops, widget should be set!' unless widget
  end

  it "doesn't blow up when using build_association followed by save" do
    expect{ widget.build_tag.save! }.to_not raise_error
  end

  it "doesn't blow up when using create_association" do
    expect{ widget.create_tag! }.to_not raise_error
  end
end
