class UserController < ApplicationController
    # Index method
    def index
        users = User.all
        render :json => users
    end

    # Register method
    def register
        render 'register'
    end

    # Store method
    def store
        user = User.new
        user.name = params[:name]
        user.email = params[:email]
        user.phone_number = params[:phone]
        user.save

        response = {
            'success' => true,
            'message' => 'user has been created',
            'data' => user
        }
        render :json => response
    end

    # Update method
    def update
        id = params[:user_id]
        user = User.find_by(id: id)
        name = params[:name] ? params[:name] : user.name
        email = params[:email] ? params[:email] : user.email
        phone = params[:phone] ? params[:phone] : user.phone_number
        user.update(name: name, email: email, phone_number: phone)
        response = {
            'success' => true,
            'message' => 'user has been updated',
            'data' => user
        }
        render :json => response
    end

    def destroy
        id = params[:user_id]
        user = User.find_by(id: id)
        user.destroy
        response = {
            'success' => true,
            'message' => 'user has been deleted'
        }
        render :json => response
    end
end
