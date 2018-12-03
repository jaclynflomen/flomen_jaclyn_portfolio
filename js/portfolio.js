(() => {
    //init the vue stuff!
    const vm = new Vue({
        el : "#app",

        data : {
            message : '',
            
            artdata : [],
            singledata : [],

            arttitle : "",
            artsource : "",

            showDetails : false 
        },

        created : function() {
            //get all of the art data ib the oage load
            this.fetchArtData(null); //this is where we would fetch PHP stuff
        },

        methods : {
            login() {
                //stub
                console.log('login functionality');
            },

            fetchSingle(e) {
                //debugger;
                this.fetchArtData(e.currentTarget.dataset.art);
            },

            loadArt(e) { //use to open lightbox in portfolio
                //debugger;
                e.preventDefault(); //block a page reload (anchor tag default behaviour)
                
                dataKey = e.currentTarget.getAttribute('href');
                currentData = this.artdata.filter(art => art.imgPath === dataKey);

                this.arttitle = currentData[0].art_title;
                this.artsource = dataKey;

                this.showDetails = true;

                setTimeout(function(){ window.scrollTo(0, 1200)}, 500);
            },

            fetchArtData(movie) {
               let url = art ?`./includes/index.php?art_id=${art}` : './includes/index.php'; 
                //this is a ternary statement, shorthand if else statement. left of : is true, right is false
            
                fetch(url)
                .then(res => res.json())
                .then(data => {
                    console.log(data);

                    if (art) {
                        //store data in the single result above
                        this.singledata = data;
                    } else {
                        //initial data grab, store in the videodata array
                        this.artdata = data;
                    }
                })

                     
                .catch(function(error){
                    console.log(error);
                })

            }
        }

    })

})();