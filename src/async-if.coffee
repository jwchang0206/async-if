async = require "async"

###
condition = true or false // true
errMsg = "Absolutely True"

async.waterfall
###

async.if = (condition, errMsg, callback) ->
	if condition
		callback null
	else
		callback new Error errMsg

###
data = {
  [{
  	message: "error message 1",
  	action: function() { /* work 1 */ }
  },
  {
  	message: "error message 2",
  	action: function() { /* work 2 */ }
  }
};
###

async.endif = (err, data, callback) ->
	for datum in data
		if datum.msg is err.message
			datum.action()
			break

	callback?()

module.exports = -> async