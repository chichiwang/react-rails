#= require classnames/index.js

@TodoItem = React.createClass
  _itemClassnames: ->
    classNames
      'todo-item': true
      'active': @state.active

  _itemEnter: ->
    @setState { active: true }
  _itemLeave: ->
    @setState { active: false }

  _doneClick: ->
    console.log 'Done Clicked!'

  _deleteClick: ->
    console.log 'Delete Clicked!'

  getInitialState: ->
    {
      active: false
    }

  render: ->
    <div className={ @_itemClassnames() } onMouseEnter={ @_itemEnter } onMouseLeave={ @_itemLeave }>
      <p className="todo-text">TodoItem</p>
      <div className="todo-buttons">
        <span className="todo-done" onClick={ @_doneClick }>✓</span>
        <span className="todo-delete" onClick={ @_deleteClick }>X</span>
      </div>
    </div>