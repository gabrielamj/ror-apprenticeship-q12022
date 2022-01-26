json.extract! trainer, :id, :name, :email, :password, :created_at, :updated_at
json.url trainer_url(trainer, format: :json)
