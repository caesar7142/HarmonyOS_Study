import router from '@ohos.router';
import featureAbility from '@ohos.ability.featureAbility';
import fs from '@ohos.file.fs';

export default {
    data: {
        title: ""
    },
    onInit() {
        this.title = "Hello World";
    },
    createDirPromise() {
        let context = featureAbility.getContext()
        context.getFilesDir()
            .then(data => {
                console.log('fsdir 获取目录data目录', data)
                let dirPath = data + '/testDir'
                fs.mkdir(dirPath)
                    .then(() => {
                        console.log('fsdir 创建目录成功')
                    })
                    .catch(err => {
                        console.log('fsdir 创建目录失败')
                    })
            })
            .catch(err => {
                console.log('fsdir 获取目录失败')
            })
    }

,
    createDircallback() {
        let context = featureAbility.getContext()
        context.getFilesDir((err, data) => {
            if (data) {
                console.log('fsdir 获取目录data目录', data)

                let dirPath = data + '/testDir'
                fs.mkdir(dirPath, err => {
                    if (!err) {
                        console.log('fsdir 创建目录成功')
                    }
                    else {
                        console.log('fsdir 创建目录失败')
                    }
                })
            } else {
                console.log('fsdir 获取目录失败', JSON.stringify(data))
            }
        })

    }


,
    readDir() {
        let context = featureAbility.getContext()
        context.getFilesDir()
            .then(data => {
                console.log('fsdir 获取目录data目录', data)
                let options = {
                    recursion: false,
                    listNum: 0
                }
                fs.listFile(data, options)
                    .then(filenames => {
                        console.log('fsdir 读取目录下的文件', JSON.stringify(filenames))
                    })
                    .catch()

            })
            .catch(err => {
                console.log('fsdir 获取目录失败')
            })
    }



    ,writeFile() {
        let context = featureAbility.getContext()
        context.getFilesDir()
            .then(path=>{
                let file=fs.openSync(path+'/test.txt',fs.OpenMode.READ_WRITE|fs.OpenMode.CREATE)
                fs.write(file.fd,'hahahah',(err,length)=>{
                    if(!err){
                        console.log('fsdir 写入成功',length)
                    }
                    else{
                        console.log('fsdir 写入失败',JSON.stringify(err))
                    }
                })
            })
            .catch(err=>{
                console.log('fsdir 写入失败2',err)
            })
    }

,readFile() {
        let context = featureAbility.getContext()
        context.getFilesDir()
            .then(path=>{
                let file=fs.openSync(path+'/test.txt',fs.OpenMode.READ_WRITE)
                let buf=new ArrayBuffer(4096)
                fs.read(file.fd,buf,(err,readline)=>{
                    if(!err){
                        console.log('fsdir 读取成功',readline)
                      let char= buf.slice(0,readline)
                      let di=  new Uint8Array(char)
                      let fileinfo=  String.fromCharCode.apply(null,di)
                        console.log('fsdir 读取成功',fileinfo)
                    }
                    else{
                        console.log('fsdir 写入失败',JSON.stringify(err))
                    }
                })
            })
            .catch(err=>{
                console.log('fsdir 写入失败2',err)
            })
    }
}
