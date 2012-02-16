require 'spec_helper'

describe "people/new.html.erb" do
  before(:each) do
    assign(:person, stub_model(Person,
      :name => "MyString",
      :surname => "MyString",
      :email => "MyString",
      :phone => 1
    ).as_new_record)
  end

  it "renders new person form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => people_path, :method => "post" do
      assert_select "input#person_name", :name => "person[name]"
      assert_select "input#person_surname", :name => "person[surname]"
      assert_select "input#person_email", :name => "person[email]"
      assert_select "input#person_phone", :name => "person[phone]"
    end
  end
end
