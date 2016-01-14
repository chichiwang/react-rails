@Counter = React.createClass

  _counterClick: ->
    newCount = @math.add @state.count, 1
    @setState { count: newCount }
  
  getInitialState: ->
    {
      count: 0
    }

  render: ->
    <div className="counter" onClick={ @_counterClick } >
      { @state.count }
    </div>

  componentDidMount: ->
    @math = require('util/math')