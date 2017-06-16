class MessageSerializer < ActiveModel::Serializer
  attributes :id, :poker_table_id, :user_id, :content
  has_one :user
  has_one :poker_table
end
