@LogForm = React.createClass
  getInitialState: ->
    jump_number: ''
    date: ''
    location: ''
    aircraft: ''
    equipment: ''
    altitude: ''
    delay_time: ''
    total_time: ''
    maneuver: ''
    description: ''
    signature: ''

  handleChange: (e) ->
    name = e.target.name
    @setState "#{ name }" : e.target.value

  handleSubmit: (e) ->
    e.preventDefault()
    $.post '', { log: @state }, (data) =>
      @props.handleNewLog data
      @setState @getInitialState()
    , 'JSON'


  valid: ->
    @state.jump_number &&
    @state.date &&
    @state.location &&
    @state.aircraft &&
    @state.equipment &&
    @state.altitude &&
    @state.delay_time &&
    @state.maneuver &&
    @state.description

  render: ->
    React.DOM.form
      className: 'form-inline'
      onSubmit: @handleSubmit
      React.DOM.div
        className: 'form-group'
        React.DOM.input
          type: 'number'
          className: 'form-control'
          placeholder: 'Jump No.'
          name: 'jump_number'
          value: @state.jump_number
          onChange: @handleChange
        React.DOM.div
          className: 'form-group'
          React.DOM.input
            type: 'date'
            className: 'form-control'
            placeholder: 'Date'
            name: 'date'
            value: @state.date
            onChange: @handleChange
        React.DOM.div
          className: 'form-group'
          React.DOM.input
            type: 'text'
            className: 'form-control'
            placeholder: 'Location'
            name: 'location'
            value: @state.location
            onChange: @handleChange
        React.DOM.div
          className: 'form-group'
          React.DOM.input
            type: 'text'
            className: 'form-control'
            placeholder: 'Type of Aircraft'
            name: 'aircraft'
            value: @state.aircraft
            onChange: @handleChange
        React.DOM.div
          className: 'form-group'
          React.DOM.input
            type: 'text'
            className: 'form-control'
            placeholder: 'Type of Equipment'
            name: 'equipment'
            value: @state.equipment
            onChange: @handleChange
        React.DOM.div
          className: 'form-group'
          React.DOM.input
            type: 'number'
            className: 'form-control'
            placeholder: 'Exit Altitude'
            name: 'altitude'
            value: @state.altitude
            onChange: @handleChange
        React.DOM.div
          className: 'form-group'
          React.DOM.input
            type: 'number'
            className: 'form-control'
            placeholder: 'Delay Time'
            name: 'delay_time'
            value: @state.delay_time
            onChange: @handleChange
        React.DOM.div
          className: 'form-group'
          React.DOM.input
            type: 'text'
            className: 'form-control'
            placeholder: 'AFF, Free Fly, Belly'
            name: 'maneuver'
            value: @state.maneuver
            onChange: @handleChange
        React.DOM.div
          className: 'form-group'
          React.DOM.input
            type: 'text'
            className: 'form-control'
            placeholder: 'What did you do?'
            name: 'description'
            value: @state.description
            onChange: @handleChange
        React.DOM.div
          className: 'form-group'
          React.DOM.input
            type: 'text'
            className: 'form-control'
            placeholder: 'Who witnessed the magic?'
            name: 'signature'
            value: @state.signature
            onChange: @handleChange
        React.DOM.button
          type: 'submit'
          className: 'btn btn-primary'
          disabled: !@valid()
          'Add Jump'
