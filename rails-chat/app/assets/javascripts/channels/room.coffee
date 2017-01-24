App.room = App.cable.subscriptions.create 'RoomChannel',
  received: (data) ->
    $('#messages').append """
<ul class="menu">
  <li class="menu-item">
    <div class="chip">
      <div class="chip-icon">
        <img class="avatar" src="https://picturepan2.github.io/spectre/demo/img/avatar-4.png" />
      </div>
      <div class="chip-content">
        #{data['message']}
      </div>
    </div>
  </li>
</ul>
"""

  speak: (message) ->
    @perform 'speak', message: message

$(document).on 'keypress', '#room-input', (event) ->
  if event.keyCode is 13
    App.room.speak event.target.value
    event.target.value = ''
    event.preventDefault()

$(document).on 'click', '#room-button', (event) ->
  if $('#room-input').val() isnt ''
    App.room.speak $('#room-input').val()
    $('#room-input').val('')
    event.preventDefault()
