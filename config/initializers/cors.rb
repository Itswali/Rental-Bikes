Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
<<<<<<< HEAD
      origins 'http://localhost:3000'  # front-end URL
=======
      origins 'http://localhost:3002'
>>>>>>> api-doc
      resource '*',
        headers: :any,
        methods: [:get, :post, :put, :patch, :delete, :options, :head],
        credentials: true
    end
    #allow do
    #    origins 'http://localhost:3000'
    #    resource '*',
    #      headers: :any,
    #      methods: [:get, :post, :put, :patch, :delete, :options, :head],
    #      credentials: true
    #  end
  end
