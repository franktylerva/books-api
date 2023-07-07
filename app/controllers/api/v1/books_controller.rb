class Api::V1::BooksController < ApplicationController
    def index
        books = Book.all 

        if books
            render json: {status: "SUCCESS", message: "Fetched all the friends successfully", data: books}, status: :ok
        else
            render json: books.errors, status: :bad_request
        end    
    end 
end