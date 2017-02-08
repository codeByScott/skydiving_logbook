@Log = React.createClass
  render: ->
    React.DOM.tr null,
      React.DOM.td null, @props.log.jump_number
      React.DOM.td null, @props.log.date
      React.DOM.td null, @props.log.location
      React.DOM.td null, @props.log.aircraft
      React.DOM.td null, @props.log.equipment
      React.DOM.td null, @props.log.altitude
      React.DOM.td null, @props.log.delay_time
      React.DOM.td null, @props.log.total_time
      React.DOM.td null, @props.log.maneuver
      React.DOM.td null, @props.log.description
      React.DOM.td null, @props.log.signature
