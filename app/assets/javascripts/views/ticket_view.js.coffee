Riffraffle.TicketView = Ember.View.extend({
  templateName: 'ticket'
  winnerBinding: 'Riffraffle.TicketsController.lastWinner'
  classNameBindings: ['animated', 'animation']

  animated: 'animated'

  animation: 'flipInY'
})
