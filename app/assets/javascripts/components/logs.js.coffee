@Logs = React.createClass
  getInitialState: ->
    logs: @props.data
  getDefaultProps: ->
    logs: []

  addLog: (log) ->
    logs = @state.logs.slice()
    logs.push log
    @setState logs: logs

  render: ->
    React.DOM.div
      className: 'logs'
      React.DOM.h2
        className: 'title'
        'Skydiving Log'
      React.createElement LogForm, handleNewLog: @addLog
      React.DOM.table
        className: 'table table-bordered'
        React.DOM.thead null,
          React.DOM.tr null,
            React.DOM.th null, 'Jump No.'
            React.DOM.th null, 'Date'
            React.DOM.th null, 'Location'
            React.DOM.th null, 'Aircraft'
            React.DOM.th null, 'Equipment'
            React.DOM.th null, 'Altitude'
            React.DOM.th null, 'Delay Time'
            React.DOM.th null, 'Total Time'
            React.DOM.th null, 'Maneuver'
            React.DOM.th null, 'Description'
            React.DOM.th null, 'Signature'
        React.DOM.tbody null,
          for log in @state.logs
            React.createElement Log, key: log.id, log: log
