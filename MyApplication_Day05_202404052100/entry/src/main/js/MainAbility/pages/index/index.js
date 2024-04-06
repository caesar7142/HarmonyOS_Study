export default {
    data: {
        title: ""
    },
    onInit() {


        function aa() {
            return new Promise((resolvo, reject) => {
                let random = Math.floor(Math.random() * 10) + 1;
                // @ts-ignore
                if (random % 2!=0) {
                    resolvo(random)
                }
                else {
                    reject(`fail number is ${random} `)
                }

            })

        }

        let myp =aa();
        myp.then(res=>{

            console.log("succes num is ",res)
        })
            .catch(res=>{

                console.log("fail num is ",res)
            })

       async  function add(x,y){
           await console.log('add', x + y)
        }

        add(2,3)




        async  function add2(){
           return '1'
        }

        add2().then(tes=>{
            console.log('add2',tes)
        })

    }


}



