require "array"

describe "Array" do
  describe "PART 1" do
    describe "#span" do
      context "when the array contains numbers as elements" do
        it "should return the difference between the largest and smallest element" do
          expect([12, 24, 23, 11, 17].span).to eq(13)
          expect([13, 10].span).to eq(3)
          expect([12].span).to eq(0)
        end
      end
