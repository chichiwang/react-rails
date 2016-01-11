@TodoList = React.createClass
  render: ->
    <div className="todo-list">
      <h2>Todo:</h2>
      <TodoItem />
      <TodoItem />
    </div>