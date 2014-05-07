class Expense
	attr_accessor :id, :item, :amount

	def initialize (id, item, amount)
		self.id = id
		self.item = item
		self.amount = amount
	end

	def details
		"#{self.id} #{self.item} #{self.amount}"
	end
end