SnowMobileRaffle.TicketView = Ember.View.extend({
  templateName: 'ticket'
  winnerBinding: 'SnowMobileRaffle.TicketsController.lastWinner'
  classNameBindings: ['animated', 'flipInY']

  animated: (-> 'animated').property()

  flipInY:(-> 'flipInY').property()
})
