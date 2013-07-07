Riffraffle.TicketsRoute = Ember.Route.extend(
  model: ->
    return Riffraffle.Ticket.find()
)
