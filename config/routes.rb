Rails.application.routes.draw do
    get 'hello_world/index'

    root 'hello_world/index.html.erb'

end