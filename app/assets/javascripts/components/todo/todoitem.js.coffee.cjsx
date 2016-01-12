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

  _completedClassnames: ->
    classNames
      'completed-btn': true
      'active': @state.doneActive
  _completedEnter: ->
    @setState { doneActive: true }
  _completedLeave: ->
    @setState { doneActive: false }
  _completedClick: ->
    console.log 'Completed Clicked!'

  _deleteClassnames: ->
    classNames
      'delete-btn': true
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
      
      <div className="content">

        <div className="positioning">
        </div>

        <div className="task">
          <p className="text">TodoItem</p>
          <input type="text" className="input"></input>
        </div>

        <div className="buttons">
          <span className={ @_completedClassnames() } onClick={ @_completedClick } onMouseEnter={ @_completedEnter } onMouseLeave={ @_completedLeave }>
            ✓
          </span>
          <span className={ @_deleteClassnames() } onClick={ @_deleteClick } onMouseEnter={ @_deleteEnter } onMouseLeave={ @_deleteLeave }>
            X
          </span>
        </div>

      </div>

    </div>