require_relative 'config/environment'

Rails.application.routes.draw do
    get 'hello_world'

    root 'hello_world'
end