import dataPreferences from '@ohos.data.preferences';
import featureAbility from '@ohos.ability.featureAbility';
import router from '@ohos.router'
import notificationManager from '@ohos.notificationManager';

export default {
    data: {
        title: ""
    },
    onInit() {
        this.title = this.$t('strings.world');
    }
,
    linkLogin() {
        router.push({
            'url': 'pages/login/login'
        })
    }

,
    linkDemo1() {
        router.push({
            'url': 'pages/demo01/demo01'
        })
    },
    linkFs() {
        router.push({
            'url': 'pages/fs/fs'
        })
    }
,
    onShow() {
        setInterval(() => {
            // let notificationRequest = {
            //     id: 1,
            //     content: {
            //         contentType: notificationManager.ContentType.NOTIFICATION_CONTENT_BASIC_TEXT,
            //         normal: {
            //             title: '111',
            //             text: '2wwww',
            //         }
            //     },
            //     slotType: notificationManager.SlotType.SOCIAL_COMMUNICATION,
            //     isoOngoing: true
            // }


            let notificationRequest = {
                id: 1,
                content: {
                    contentType: notificationManager.ContentType.NOTIFICATION_CONTENT_LONG_TEXT,
                    longText: {
                        title: 'UC震惊部文', //通知标题
                        text: '北京一男子....', //通知内容
                        additionalText: '震惊,北京一男子竟然在大街上做这种事', //通知附加内容
                        longText: '据新闻社报道,2024年3月北京一个男子在大街上睡觉', //通知的长文本
                        briefText: '哈哈哈哈哈', //通知概要
                        expandedTitle: '北京男子公然在大街睡觉', //通知展开时的标题
                    }
                },
                slotType: notificationManager.SlotType.SOCIAL_COMMUNICATION,
                // 是否进行时通知
                isoOngoing: true,
            }
            notificationManager.publish(notificationRequest, err => {
                if (err) {
                    return
                }
            })
        }, 10000)
    }
}



