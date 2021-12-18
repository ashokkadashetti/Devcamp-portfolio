// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"


Rails.start()
Turbolinks.start()
ActiveStorage.start()

require("jquery")

require("coffee/portfolios.coffee")



require("customjs/htmlsortable")
require("customjs/cable")








//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require cable
//= require rails-ujs
//= require_tree .

// app/javascripts/cable.js
//= require action_cable
//= require_self
//= require_tree ./channels
