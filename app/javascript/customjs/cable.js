//= require action_cable
//= require_self
//= require_tree ./channels
//= require ./blogs.coffee

(function () {

  this.App || (this.App = {});
  alert("Hey there");
  App.cable = ActionCable.createConsumer()
}).call(this);