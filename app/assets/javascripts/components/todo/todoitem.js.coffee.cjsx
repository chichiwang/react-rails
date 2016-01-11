#= require classnames/index.js

@TodoItem = React.createClass
  _itemClassnames: ->
    classNames
      'todo-item': true
      'active': @state.itemActive
  _itemEnter: ->
    @setState { itemActive: true }
  _itemLeave: ->
    @setState { itemActive: false }

  _doneClassnames: ->
    classNames
      'todo-done': true
      'active': @state.doneActive
  _doneEnter: ->
    @setState { doneActive: true }
  _doneLeave: ->
    @setState { doneActive: false }
  _doneClick: ->
    console.log 'Done Clicked!'

  _deleteClassnames: ->
    classNames
      'todo-delete': true
      'active': @state.deleteActive
  _deleteEnter: ->
    @setState { deleteActive: true }
  _deleteLeave: ->
    @setState { deleteActive: false }
  _deleteClick: ->
    console.log 'Delete Clicked!'

  getInitialState: ->
    {
      itemActive: false
      doneActive: false
      deleteActive: false
    }

  render: ->
    <div className={ @_itemClassnames() } onMouseEnter={ @_itemEnter } onMouseLeave={ @_itemLeave }>
      <p className="todo-text">TodoItem</p>
      <input type="text" className="todo-input"></input>
      <div className="todo-buttons">
        <span className={ @_doneClassnames() } onClick={ @_doneClick } onMouseEnter={ @_doneEnter } onMouseLeave={ @_doneLeave }>
          ✓
        </span>
        <span className={ @_deleteClassnames() } onClick={ @_deleteClick } onMouseEnter={ @_deleteEnter } onMouseLeave={ @_deleteLeave }>
          X
        </span>
      </div>
    </div>