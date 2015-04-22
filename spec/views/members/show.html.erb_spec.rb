require 'rails_helper'

RSpec.describe "members/show", type: :view do
  before(:each) do
    @member = assign(:member, Member.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :email => "my@email.com",
      :mobile => "Mobile",
      :password => "Mysringpass"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Mobile/)
  end
end
