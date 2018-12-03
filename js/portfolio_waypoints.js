window.onload = function(){
  console.log("Hello friends");

  var waypoint = new Waypoint({
    element:document.getElementById("p1nav"),
    handler:function(direction){
        this.element.classList.add("fadeInRight");
        this.element.classList.add("animated");
        this.element.classList.add("visible");
    }
  })

  
};