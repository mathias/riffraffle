class TicketSerializer < ActiveModel::Serializer
  attributes :id, :name, :count, :won
end
