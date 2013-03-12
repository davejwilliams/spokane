class PageController < ApplicationController
	def home
	end

	def contact
		@name  = params[:name]
		@email = params[:email]
		@age   = params[:age]
		@food  = params[:food]

		if params[:commit]
			flash.now[:error] = ''
			if @name.nil? || @name.empty?
				flash.now[:error] << 'Name cannot be blank<br>'
			end
			if @email.nil? || @email.empty?
				flash.now[:error] << 'Email cannot be blank<br>'
			end
		end

	end

	def recipes
		@recipes = Recipe.all
	end

	def products
		@products = ['red tomatoes', 'beef', 'bread', 'dough', 'spices', 'green grapes']
		@year     = params[:year]
		@month    = params[:month].capitalize
	end

	def articles
	end

	def calendar
		@my_time = Time.now
		@my_name = 'dave williams'
	end

	def blog
	end

	def login
	end
end



