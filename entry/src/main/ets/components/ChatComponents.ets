import router from '@ohos.router'
import { WeChatColor } from '../model/WeChatData'

@Component
export struct  ChatComponent {

  private portrait: string
  private speaker: string
  private chatInfo: string
  private time: string



  build() {
      Column() {
        if(this.speaker =='me'){
          Flex({direction: FlexDirection.RowReverse,wrap: FlexWrap.NoWrap,justifyContent: FlexAlign.Start,alignItems: ItemAlign.Start}) {
            Image($rawfile('mine.jpg'))
              .width('120px')
              .height('120px')
              .margin({right: '50px'})
              .border( {
                radius: 4
              })
            Stack({alignContent: Alignment.TopEnd}) {
              if(this.chatInfo.length>14){
                Shape() {
                  Rect().width(260).height(20+20*(this.chatInfo.length+13)/14).radius(5)
                }
                .fill('#b2e281')

                Text(this.chatInfo)
                  .width(240)
                  .margin({right: 10,top:10})
                  .fontSize('18fp')
              }
              else{
                Shape() {
                  Rect().width(20*this.chatInfo.length+20).height(40).radius(5)
                }
                .fill('#b2e281')

                Text(this.chatInfo)
                  .width(20*this.chatInfo.length)
                  .margin({right: 10,top:10})
                  .fontSize('18fp')
              }

            }.margin({right: '50px'})
          }
        }
        else {
          Flex({direction: FlexDirection.Row,wrap: FlexWrap.NoWrap,justifyContent: FlexAlign.Start,alignItems: ItemAlign.Start}) {
            Image($rawfile(this.portrait))
              .width('120px')
              .height('120px')
              .margin({left: '50px'})
              .border( {
                radius: 4
              })
            Stack({alignContent: Alignment.TopStart}) {
              if(this.chatInfo.length>14){
                Shape() {
                    Rect().width(260).height(20*(this.chatInfo.length+13)/14+20).radius(5)
                }
                .fill(Color.White)

                Text(this.chatInfo)
                  .width(240)
                  .margin({left:10,top:10})
                  .fontSize('18fp')
              }
              else{
                Shape() {
                    Rect().width(20*this.chatInfo.length+20).height(40).radius(5)
                }
                .fill(Color.White)

                Text(this.chatInfo)
                  .width(20*this.chatInfo.length)
                  .margin({left:10,top:10})
                  .fontSize('18fp')
              }
            }.margin({left: '50px'})
          }
        }
    }
  }
}