{Promise} = require 'es6-promise'
request = require 'request'

module.exports = (options) ->
  new Promise (resolve, reject) ->
    request options, (err, res) ->
      return reject(err) if err?
      resolve res
