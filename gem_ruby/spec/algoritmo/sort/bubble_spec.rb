require "algoritmo/sort/bubble"

RSpec.describe "Bublle sort" do
	it "retorna array ordenado" do
		list = [64, 34, 25, 12, 22, 11, 90] 
		
		list_ord = Algoritmo::Sort::Bubble.new(list).sort

		expect(list_ord).to eq(list.sort)
	end

	it "retorna array ordenedo2" do 
		list = [130, 260, 539, 3, 97, 33, 1]
		list_ord = Algoritmo::Sort::Bubble.new(list).sort
		expect(list_ord).to eq(list.sort)
	end

end

