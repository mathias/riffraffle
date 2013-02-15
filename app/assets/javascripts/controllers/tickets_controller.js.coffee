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

  potentialWinnersDepleted: ( ->
    console.log @get('potentialWinnerCount')
    @get('potentialWinnerCount') == 0
    ).property('@each.won')

  pick: ->
    if (@get('potentialWinnerCount')) > 0
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
    winner =  @randomTicket()
    winner.set('won', true)
    @set('lastWinner', winner)
    @get('store').commit()

  makeWeightedTickets: ->
    weightedTickets = new Array
    for ticket in @get('potentialWinners')
      for n in [1..ticket.get('count')]
        weightedTickets.push ticket

    weightedTickets

  randomizedTickets: ->
    _.shuffle(@makeWeightedTickets())

  randomTicket: ->
    _.first(@randomizedTickets())
)
