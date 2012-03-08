class Dessert
	attr_accessor :name
	attr_accessor :calories
def initialize(name, calories)
	@name = name
	@calories = calories
end
def healthy?
	@calories < 200
end
def delicious?
	self.kind_of?(Dessert)
end
end

class JellyBean < Dessert
	attr_accessor :flavor
def initialize(name, calories, flavor)
	super(name,calories)
	@flavor = flavor
end
def delicious?
	if @flavor == 'black licorice'
		false
	else
		super
	end
end
end