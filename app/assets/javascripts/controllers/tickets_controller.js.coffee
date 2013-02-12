SnowMobileRaffle.TicketsController = Ember.ArrayController.extend(
  pick: ->
    debugger
    winner_idx = _.random(this.get('length') - 1)
    this.objectAt(winner_idx).set('won', true)
)
