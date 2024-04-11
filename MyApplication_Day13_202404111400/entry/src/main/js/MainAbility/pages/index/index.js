export default {
    data: {
        videoID: 'video',
        src: "/common/video/video.mp4",
        autoPlay: false,
        loop: false,
        poster: "/common/images/ic_poster.png",
        controlShow: false,
        isPlay: false,

        playIcon: "/common/images/ic_play.png",
        pauseIcon: '/common/images/ic_pause.png',
        sliderMin: 0,
        sliderMax: 10,
        sliderVal: '',
        nowTime: '00:00',
        duration: 0,
        durationTime: "00:00"
    },
    onInit() {
        this.title = this.$t('strings.world');
    },
    prepared(event) {
        this.durationTime = this.formatTime(event.duration)
        console.log('prepared  触发', this.durationTime)
    },
    start() {
        console.log('start  触发',)
        this.isPlay = true
    },
    pause() {
        console.log('pause  触发',)
        this.isPlay = false
    },
    viderPlay() {
        if (this.isPlay) {
            this.$element(this.videoID).pause()
        }
        else {
            this.$element(this.videoID).start()
        }
    },
    formatTime(time) {
        let hour = Math.floor(time / 3600);
        let min = Math.floor((time - hour * 3600) / 60)
        let sec = time - hour * 3600 - min * 60
        if (hour > 0) {
            return `${this.montageTime(hour.toString())}:${this.montageTime(min.toString())}:${this.montageTime(sec.toString())}`
        }

        else {
            return `${this.montageTime(min.toString())}:${this.montageTime(sec.toString())}`
        }
    },
    montageTime(num) {
        // 转化成字符串然后遍历
        for (var i = (num.toString()).length; i < 2; i = num.length) {
            // 最终拼接效果: 01 02 03
            num = `0${num}`
        }
        return num
    }
}



