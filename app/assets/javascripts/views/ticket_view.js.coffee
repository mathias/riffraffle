SnowMobileRaffle.TicketView = Ember.View.extend({
  templateName: 'ticket'
  winnerBinding: 'SnowMobileRaffle.TicketsController.lastWinner'
  classNameBindings: ['animated', 'animation']

  animated: 'animated'

  animation: 'flipInY'
})
