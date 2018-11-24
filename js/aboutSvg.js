(() => {
    const aboutme = document.querySelectorAll('.aboutSvg');
    
    function getData(){
            console.log(this);
            let targetURL = `includes/connect.php?Title=${this.id}`; //whenever we click on a thumbnail, pass its id to the php query
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
                const { Title, Description } = data; //destructuring assignment => MDN JS destructuring
                //grab the elements we need, and populate them with data
                document.querySelector('.Title').textContent = Title;
                document.querySelector('.Description').textContent = Description;
            }
        };

        aboutme.forEach(aboutme => aboutme.addEventListener("click", getData));
    
        //getData(); //trigger the getData function

    })();
    
