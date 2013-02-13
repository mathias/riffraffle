SnowMobileRaffle.TicketsController = Ember.ArrayController.extend(
  winnerCount: ( ->
    return @filterProperty('won', true).get('length')
    ).property('@each.won')

  winnerList: ( ->
    return @filterProperty('won', true)
    ).property('@each.won')

  potentialWinners: ( ->
    return @filterProperty('won', false)
    ).property('@each.won')

  potentialWinnerCount: ( ->
    return @filterProperty('won', false).get('length')
    ).property('@each.won')

  pick: ->
    winnerIndex = _.random(@get('potentialWinnerCount') - 1)
    winner = @get('potentialWinners').objectAt(winnerIndex)
    winner.set('won', true)
    @set('lastWinner', winner)
    @get('store').commit()
)
