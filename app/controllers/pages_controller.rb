class PagesController < ApplicationController

before_action :set_page, only: [:show, :edit, :update, :destroy] #rails shortcut controller will call the set_page method before running any action method only for the methods we say 


  def index
    @pages = Page.all #we load a list of all page objects and store them in an instance variable
  end

  def show
  end

  def new
      @page = Page.new
  end

  def create
      @page = Page.new(page_params) #create a new page object with title body and slug attributes set
      @page.save #save a record of new page
      redirect_to @page #tells rails to redirect and request url of new page
    end


    def edit
    end

    def update
      @page.update(page_params)
      redirect_to @page
    end

    def destroy
    @page.destroy #call the model objects destroy method
    redirect_to pages_path #redirect so you know page has been deleted
    end

    private #marks methods below here as private

          def page_params #we take our page object and require the page params and access the nested params and store them in page_params
            params.require(:page).permit(:title, :body, :slug)
          end

          def set_page
          @page = Page.find(params[:id])
          end

  end
