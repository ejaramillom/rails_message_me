json.extract! chatroom, :id, :sessions, :created_at, :updated_at
json.url chatroom_url(chatroom, format: :json)
