#require "test_helper"

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save order without name" do
    category = Category.new("testCategory")
    order = Order.new("TL","", 15, 10, category)
    assert_not order.save, "Saved the order without a name"
  end

  test "sale should not be more than price" do
    category = Category.new("testCategory")
    order = Order.new("TL","Name Surname",10, 15, category)
    assert_not order.save, "Saved the order without a sale more than price"
  end

  test "should not save order with a name less than two words" do
    category = Category.new("testCategory")
    order = Order.new("TL","Name", 15, 10, category)
    assert_not order.save, "Saved the order with a name less than two words"
  end

  test "should not save order with a currency type other than tl, usd ,eur" do
    category = Category.new("testCategory")
    order = Order.new("GBP","Name Surname", 15, 10, category)
    assert_not order.save, "Saved the order with a currency type other than tl, usd ,eur"
  end

  test "should not save order without a currency" do
    category = Category.new("testCategory")
    order = Order.new("","Name Surname", 15, 10, category)
    assert_not order.save, "Saved the order without a currency"
  end

  test "should not save order without previously saved category" do
    category = Category.new("testCategory")
    order = Order.new("TL","Name Surname", 15, 10, "otherCategory")
    assert_not order.save, "Saved the order without previously saved category"
  end
end
