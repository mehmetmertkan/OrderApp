require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save category without name" do
    category = Category.new("")
    assert_not order.save, "Saved category without name"
  end
end
