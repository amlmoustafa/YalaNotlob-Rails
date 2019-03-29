// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require turbolinks

//= require jquery3
//= require jquery-ui
//= require popper
//= require bootstrap
//= require_tree .
// alert("hhhh")

  App.notification.received = (data)=>{
    
                        var textnode = document.createTextNode(data['message']);
                        // var name = data['message'].split(",")[1];
                        var name= data['message'].substr(0, data['message'].indexOf(',')); 
                        document.getElementById("allNotifications").appendChild(textnode);
                        var a = document.createElement("a");
                        var newItem = document.createElement("li");

                        a.textContent = "accept invitation";
                        a.setAttribute('href', `/joinedOrder/${name}`);
                        newItem.appendChild(a);
                        document.getElementById("allNotifications").appendChild(newItem);

                        

}
