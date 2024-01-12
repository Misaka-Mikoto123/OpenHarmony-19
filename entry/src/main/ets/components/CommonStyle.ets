import { WeChatColor } from '../model/WeChatData'
import router from '@ohos.router';

@Component
export struct WeChatTitle {
  private text: string

  build() {
    Flex({justifyContent: FlexAlign.Center, alignItems: ItemAlign.Center}) {
      Text(this.text)
        .fontSize('18fp')
        .padding('20px')
    }
    .height('120px')
    .backgroundColor(WeChatColor)
  }
}

@Component
export struct Title2{
  private text: string
  private arrow: string = "arrowl.png"

  build(){
    Flex({alignItems: ItemAlign.Center}){
      Image($rawfile(this.arrow))
        .height('75px')
        .width('75px')
        .margin({left: '15px'})
        .onClick(()=>{router.back()})
      Text(this.text)
        .fontSize('18vp')
        .padding('20px')
        .margin({ left: '420px' })
    }
    .height('160px')
    .backgroundColor(WeChatColor)
  }
}

@Component
export struct MyDivider {
  private style: string = ""

  build() {
    Row() {
      Divider()
        .vertical(false)
        .color(WeChatColor)
        .strokeWidth(this.style == "1" ? '3px' : '23px')
    }
    .height(this.style == "1" ? '3px' : '23px')
    .width('100%')
  }
}