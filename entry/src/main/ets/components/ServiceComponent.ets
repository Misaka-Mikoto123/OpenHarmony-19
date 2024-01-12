import {ServiceInfo} from "../model/ServiceInfo"

@Component
export struct ServiceCeilComponent{
  private img: string
  private text: string
  private info: string
  private color: string = '#ffffffff'

  build(){
    Shape(){
      Rect().width('307px').height('380px').fill(this.color).radius(20)
      Column(){
        Image($rawfile(this.img))
          .width('150px')
          .height('150px')
        Text(this.text)
          .fontSize('16vp')
          .margin({top: '20px'})
          .width('400px')
          .textAlign(TextAlign.Center)
        Text(this.info)
          .fontSize('14vp')
          .margin({top: '10px'})
          .fontColor("#ffaeaeae")
          .width('400px')
          .textAlign(TextAlign.Center)
      }
      .margin({top: '70px'})
    }
  }
}

@Component
export struct ServiceItemComponent{
  private title: string = ''
  private ServiceGroup: Array<ServiceInfo>
  private color: string = '#ffffffff'
  private cols: number = 4
  private rows: number = 1
  build(){
    Shape(){
      Rect().width('100%').height(this.title == '' ? `${this.rows * 380}px` : `${this.rows * 380 + 100}px`).fill(this.color).radius(20)
      Column(){
        Text('  ' + this.title)
          .fontSize('16vp')
          .fontColor("#ff929292")
          .width("100%")
          .height(this.title == '' ? '0' : '80px')
          .margin({top: this.title == '' ? '0' : '20px'})
        GridRow({columns: this.cols}){
          ForEach(this.ServiceGroup, (item) => {
            GridCol(){
              Row(){
                ServiceCeilComponent({img: item.img, text: item.text, info:item.info, color: this.color})
              }
            }
          })
        }
      }
    }
  }
}