SnowMobileRaffle.TicketsRoute = Ember.Route.extend(
  model: ->
    return SnowMobileRaffle.Ticket.find()
)
