export default {
    data: {
        title: "",
        keyframs: [],
        options: {}, anmation: '',animation:''
    },
    onInit() {
        this.title = "Hello World";
        this.keyframs = [
            {
            width: '100px',
                backgroundColor: 'red',

            transform: {
                translate: '10px 10px', scale: 1, rotate: 0
            }}, {
            width: '100px',
            backgroundColor: 'green',
            transform: {
                translate: '10px 20px', scale: 1, rotate: 1800
            }}
        ]
        this.options = {
            duration: 4000}

    },
    onPlay() {
     this.animation=   this.$element('ani').animate(this.keyframs, this.options)
        this.animation.play()
    },
    onEnd() {
        // 这两种写法的差异
         this.$element('ani').animate(this.keyframs, this.options).cancel()
       //  this.animation.cancel()
    },
    onPurse() {
        this.animation.pause()
       // this.$element('ani').animate(this.keyframs, this.options).pause()
    },
    onResv() {
        this.animation.reverse()
    }
}
