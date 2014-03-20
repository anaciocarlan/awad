require 'spec_helper'

describe "quotes/show" do
  before(:each) do
    @quote = assign(:quote, stub_model(Quote,
      :id => 1,
      :author => "Author",
      :quote => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Author/)
    rendered.should match(/MyText/)
  end
end
