@Observed
class NewsAuthor{
  name:string
  age:number

  constructor(  name:string
  ,age:number) {
    this.name=name
    this.age=age
  }
}
@Observed
class News{
  title:string
  viewCount:number
  author:NewsAuthor

  constructor(title:string
  ,viewCount:number
  ,author:NewsAuthor) {
    this.title=title
    this.viewCount=viewCount
    this.author=author
  }
}

@Entry
@Component
struct F1{
@State n1:News=new News(  '标题',
  200,
  new NewsAuthor( 'tom',
    20))
  build() {
    Column(){
      F2({a:this.n1.author})
//Text(this.n1.title+"this.n1.title").onClick(()=>{this.n1.title='change'})
      Button(this.n1.viewCount+"this.n1.viewCount").onClick(()=>{this.n1.viewCount++})
    //  Text(this.n1.author.name+"this.n1.author.name").onClick(()=>{this.n1.author.name='author.name'})
      Button(this.n1.author.age+"this.n1.author.age").onClick(()=>{this.n1.author.age+=8})
    }
  }
}





@Component
struct F2{
  @ObjectLink a:NewsAuthor
  build() {
    Column(){
        Button(this.a.age+"son.author.age").onClick(()=>{this.a.age+=8})
    }
  }
}