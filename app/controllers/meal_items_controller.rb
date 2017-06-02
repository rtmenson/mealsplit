class MealItemsController < ApplicationController
  def index
    @meal_items = MealItem.all

    render("meal_items/index.html.erb")
  end

  def show
    @meal_item = MealItem.find(params[:id])

    render("meal_items/show.html.erb")
  end

  def new
    @meal_item = MealItem.new

    render("meal_items/new.html.erb")
  end

  def create
    @meal_item = MealItem.new

    @meal_item.item_name = params[:item_name]
    @meal_item.picture = params[:picture]
    @meal_item.price = params[:price]
    @meal_item.order_id = params[:order_id]

    save_status = @meal_item.save

    if save_status == true
      redirect_to("/meal_items/#{@meal_item.id}", :notice => "Meal item created successfully.")
    else
      render("meal_items/new.html.erb")
    end
  end

  def edit
    @meal_item = MealItem.find(params[:id])

    render("meal_items/edit.html.erb")
  end

  def update
    @meal_item = MealItem.find(params[:id])

    @meal_item.item_name = params[:item_name]
    @meal_item.picture = params[:picture]
    @meal_item.price = params[:price]
    @meal_item.order_id = params[:order_id]

    save_status = @meal_item.save

    if save_status == true
      redirect_to("/meal_items/#{@meal_item.id}", :notice => "Meal item updated successfully.")
    else
      render("meal_items/edit.html.erb")
    end
  end

  def destroy
    @meal_item = MealItem.find(params[:id])

    @meal_item.destroy

    if URI(request.referer).path == "/meal_items/#{@meal_item.id}"
      redirect_to("/", :notice => "Meal item deleted.")
    else
      redirect_to(:back, :notice => "Meal item deleted.")
    end
  end
end
