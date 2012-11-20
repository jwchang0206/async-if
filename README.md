Async If
=====

####If Statement Extension to Async

Read `async` Documentation from https://github.com/caolan/async

---

### Installation

<pre>
  npm install async-if
</pre>

or

<pre>
  git clone git://github.com/InspiredJW/async-if.git
</pre>

### Example Usage
```javascript
async.waterfall([
    function(callback) {
      async.if(true || false, "Absolutely True", function() {
        // Do Works If condition has passed
      });
    }
  ], function(err) {
    var actions = [
      {
        message: "That is Not True",
        action: function() {
          return console.log("That is Not True");
        }
      }, {
        message: "That is Not True 2",
        action: function() {
          return console.log("That is Not True 2");
        }
      }
    ];
    async.endif(err, actions, function() {
      // Do Works Other Than If Cases
    });
  });
```