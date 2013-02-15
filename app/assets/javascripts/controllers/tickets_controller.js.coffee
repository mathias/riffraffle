SnowMobileRaffle.TicketsController = Ember.ArrayController.extend(
  winnerCount: ( ->
    @filterProperty('won', true).get('length')
    ).property('@each.won')

  winnerList: ( ->
    @filterProperty('won', true)
    ).property('@each.won')

  potentialWinners: ( ->
    @filterProperty('won', false)
    ).property('@each.won')

  potentialWinnerCount: ( ->
    @get('potentialWinners').get('length')
    ).property('@each.won')

  pick: ->
    if (@get('potentialWinnerCount') - 1) > 0
      @winnerLogic()

      if @winningTicketView
        @winningTicketView.set('animation', @pickAnimation())
        @winningTicketView.rerender()
      else
        @winningTicketView = SnowMobileRaffle.TicketView.create({
          animation: @pickAnimation()
        })

  pickAnimation: ->
    _.first(_.shuffle(['rollIn', 'flipInX', 'flipInY', 'flash', 'bounce', 'shake', 'wobble'
                       'fadeIn', 'fadeInUp', 'fadeInDown', 'bounceInDown', 'bounceInUp',
                       'bounceInLeft', 'bounceInRight', 'rotateIn', 'rotateInDownLeft',
                       'rotateInDownRight', 'rotateInUpLeft', 'rotateInUpRight']))

  winnerLogic: ->
    winnerIndex = _.random(@get('potentialWinnerCount') - 1)
    winner = @get('potentialWinners').objectAt(winnerIndex)
    winner.set('won', true)
    @set('lastWinner', winner)
    @get('store').commit()
)
