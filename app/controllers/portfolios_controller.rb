class PortfoliosController < ApplicationController

	before_action :set_portfolio_item, only: [:show, :edit, :update, :destroy]

	  access all: [:show, :index, :angular], user: {except: [:destroy, :new, :create, :edit, :update, :sort]}, site_admin: :all


	layout "portfolio"

	def index
		@portfolio_items=Portfolio.by_position
	end

#........................................................................................

	def sort
		params[:order].each do |key, value|
			Portfolio.find(value[:id]).update(position: value[:position])
		end

		render nothing: true
	end

#........................................................................................
	def angular
		@angular_portfolio_items=Portfolio.angular
	end

#........................................................................................	

	def new
		@portfolio_items=Portfolio.new

		2.times { @portfolio_items.technologies.build }
	end

#........................................................................................

	def create
		@portfolio_items=Portfolio.new(portfolio_params)

		respond_to do |format|
			if @portfolio_items.save
				format.html{ redirect_to portfolios_path, 
							 notice: 'Portfolio created successfully.'}
			else
        		format.html { render :new}
			end
		end	
	end

#........................................................................................

	def edit
	end

#........................................................................................

  	def update
    	respond_to do |format|
      		if @portfolio_items.update(portfolio_params)
        		format.html { redirect_to portfolios_path,
        					  notice: "Portfolio was successfully updated." }
      		else
        		format.html { render :edit}
      		end
    	end
  	end

#........................................................................................

  	def show
  		
  	end

#........................................................................................

  	def destroy
    	@portfolio_items.destroy
    	respond_to do |format|
      		format.html { redirect_to portfolios_url,
      					  notice: "Record was successfully destroyed." }
    	end
  	end

#........................................................................................S

  	private

  	def portfolio_params
  		params.require(:portfolio).permit(:title,
  										  :subtitle,
  										  :body,
  										  technologies_attributes: [:name]
  										  )
  	end

  	def set_portfolio_item
  		@portfolio_items=Portfolio.find(params[:id])
  	end

end
