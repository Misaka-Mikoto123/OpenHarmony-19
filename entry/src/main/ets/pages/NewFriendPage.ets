import { Title2, WeChatTitle } from '../components/CommonStyle'
import { NewFriendComponent } from '../components/NewFriendComponents'
import { getNewFriendContactInfo } from '../model/NewFriendData'
@Entry
@Component
export struct RecentChatPage {

  private newFriendContactsInfo = getNewFriendContactInfo()

  build() {
    Column() {
      Title2({text: '新的朋友'})

      Scroll(){
        Column(){
          //近三天
          Text("    近三天")
            .fontSize('14fp')
            .fontColor("#ff999999")
            .backgroundColor("#ededed")
            .height('120px')
            .width('100%')
          NewFriendComponent({nickName: "IronMan", portrait: "head6.png", chatInfo: "你小子敢删我！？？", state: "已拒绝"})
          NewFriendComponent({nickName: "SpiderMan", portrait: "head14.png", chatInfo: "咱们聊聊吧！", state: "已接受"})

          //三天前
          Text("    三天前")
            .fontSize('14fp')
            .fontColor("#ff999999")
            .backgroundColor("#ededed")
            .height('120px')
            .width('100%')

          List() {
            ForEach(this.newFriendContactsInfo, (item) => {
              ListItem() {
                NewFriendComponent({nickName: item.nickName, portrait: item.portrait, chatInfo: item.chatInfo, state: item.state})
              }
            },item => item.userId.toString())
          }
          .width('100%')
          .height('100%')
        }
      }
      .scrollBar(BarState.Off)
    }
  }
}