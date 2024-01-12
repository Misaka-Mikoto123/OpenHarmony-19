import { Title2 } from '../components/CommonStyle'
import { ChatComponent } from '../components/ChatComponents'
import { getChatRecord } from '../model/ChatRecord'
import router from '@ohos.router'

@Entry
@Component
export struct ChatPage {
  private name: string = router.getParams()?.['name']
  private portrait: string = router.getParams()?.['portrait']
  private chatrecord = getChatRecord()

  build() {
    Column() {
      //
      Title2({text: this.name})
      Divider()
        .vertical(false)
        .color("#848484")
        .strokeWidth('50px')
      //
      Scroll() {
        Column({ space: 20 }){
          ForEach(this.chatrecord, (item) => {
            ChatComponent({ portrait: this.portrait, speaker: item.speaker ,chatInfo: item.chatInfo, time: item.time})
          })
          Divider()
            .vertical(false)
            .color("#848484")
            .height('50px')
        }
      }
      .backgroundColor("#848484")
      .scrollBarColor(Color.Black)          // 设置滚动条颜色
      .scrollBarWidth(10)                   // 设置滚动条宽度
      .scrollBar(BarState.Auto)             // 设置滚动条自动显示
      .width('100%')
      .height('2100px')

      Row({space:10}){
        Image($rawfile("voice.jpg"))
          .width('110px')
          .height('110px')
          .objectFit(ImageFit.Contain)
          .border( {
            radius: 4
          })
        TextArea()
          .width("800px")
          .height('110px')
          .fontColor(Color.Black)
          .fontStyle(FontStyle.Italic)
          .caretColor(Color.Black)

        Image($rawfile("emoji.jpg"))
          .width('110px')
          .height('110px')
          .objectFit(ImageFit.Contain)
          .border( {
            radius: 4
          })

        Image($rawfile("tj.jpg"))
          .width('110px')
          .height('110px')
          .objectFit(ImageFit.Contain)
          .border( {
            radius: 4
          })
      }
      .justifyContent(FlexAlign.SpaceEvenly)

    }
  }
}