halkaBox.run("gallery1");
halkaBox.run("gallery2");

(() => {
    //init the vue stuff!
    const vm = new Vue({
        el : "#app",

        data : {
            message : "",

            artdata : [],
            singledata : [],

            arttitle : "",
            artsource : "",
            artdesc : "",
            artheader : "",
            artinfo : "",

            showDetails : false,

            isHidden: true
            
        },

        created : function() {
            //get all of the movie data ib the oage load
            this.fetchArtData('category'); //this is where we would fetch PHP stuff
        },

        methods : {
            login() {
                //stub
                console.log('login functionality');
            },

            fetchSingle(e) {
                //debugger;
                this.fetchArtData(e.currentTarget.dataset.category);

            },
            fetchPersonal(e) {
                //debugger;
                this.fetchArtData(e.currentTarget.dataset.art_category = 'Personal');

            },

            fetchReel(e) {
                //debugger;
                this.fetchArtData(e.currentTarget.dataset.art_category = 'Reel');
                setTimeout(function(){ window.scrollTo(0, 1200)}, 500);

            },

            fetchSchool(e) {
                //debugger;
                this.fetchArtData(e.currentTarget.dataset.art_category = 'School');

            },

            fetchMore(e) {
                //debugger;
                this.fetchArtData(e.currentTarget.dataset.art_category = 'More');

            },

            fetchPhotography(e) {
                //debugger;
                this.fetchArtData(e.currentTarget.dataset.art_category = 'Photography');

            },

            fetchVideo(e) {
                //debugger;
                this.fetchArtData(e.currentTarget.dataset.art_category = 'Video');

            },

            fetchOther(e) {
                //debugger;
                this.fetchArtData(e.currentTarget.dataset.art_category = 'Other');

            },

            loadArt(e) { //use to open lightbox in portfolio
                //debugger;
                e.preventDefault(); //block a page reload (anchor tag default behaviour)
                
                dataKey = e.currentTarget.getAttribute('href').split("/")[1];
                currentData = this.artdata.filter(tbl_portfoliowork => tbl_portfoliowork.imgPath === dataKey);

                this.arttitle = currentData[0].art_title;
                this.artdesc = currentData[0].art_desc;
                this.artinfo = currentData[0].art_info;
                this.artsource = dataKey;

                this.showDetails = true;


            },

            closeLB() {
                this.showDetails = false;
            },

            fetchArtData(category) {
               let url = category ?`./includes/index.php?category=${category}` : './includes/index.php'; 
                //this is a ternary statement, shorthand if else statement. left of : is true, right is false
            
                fetch(url)
                .then(res => res.json())
                .then(data => {
                    console.log(data);

                    if (category) {
                        //store data in the single result above
                        this.artdata = data;
                    } else {
                        //initial data grab, store in the videodata array
                        this.artdata = data;
                    }
                })

                .catch(function(error){
                    console.log(error);
                });

            }
        }

    })


    // document.getElementById("gall"),
    // function loadLB (){
    //     this.element.classList.add("portfolioModal");
    // }

    

})();