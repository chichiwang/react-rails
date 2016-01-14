add = ->
  total = 0
  total += val for val in arguments
  total

module.exports = {
  add: add
}