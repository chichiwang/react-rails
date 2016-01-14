@Counter = React.createClass

  _counterClick: ->
    @setState { count: @state.count + 1 }
  
  getInitialState: ->
    {
      count: 0
    }

  render: ->
    <div className="counter" onClick={ @_counterClick } >
      { @state.count }
    </div>