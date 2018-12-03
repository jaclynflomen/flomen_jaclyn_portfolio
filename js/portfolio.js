//JS
(() => {

    //AJAX call, change for pictures
    const art = document.querySelectorAll('.artwork');

function getData(){
        console.log(this);
        let targetURL = `includes/connectIMG.php?art_id=${this.id}`; //whenever we click on a thumbnail, pass its id to the php query =${this.id}
        fetch (targetURL) // go get the data and bring it back! good doggy 
        .then(res => res.json()) //turn the result into a plain JS object
        .then(data => {
            console.log(data);
            //run a function to parse our data
            showData(data[0]);
        }) //lets see what we got
        .catch(function(error) {
            console.log(error); //if anything broke, log it to the console
        });

        function showData(data) {
            //debugger;
            //parse the DB info and put it where it needs to go
            const { imgPath } = data; //destructuring assignment => MDN JS destructuring
            //grab the elements we need, and populate them with data
            document.querySelector('.artwork').src = imgPath;
        }
    };

    art.forEach(art => art.addEventListener("onload", getData));

})();