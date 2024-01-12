import { WeChatTitle } from '../components/CommonStyle'
import { ContactItemStyle } from '../components/WCContactItemComponent'
import { getContactInfo, WeChatColor } from '../model/WeChatData'
import router from '@ohos.router';
@Entry
@Component
export struct ContactsPage {
  private  contactsInfo = getContactInfo()

  build() {
    Column() {
      //
      WeChatTitle({text: '通讯录'})

      //
      Scroll() {
        Column() {
          // 固定列表
          ContactItemStyle({ imageSrc: "new_friend.png", text: "新的朋友" })
            .onClick(()=>{router.pushUrl({url: 'pages/NewFriendPage'})})
          ContactItemStyle({ imageSrc: "group.png", text: "群聊" })
            .onClick(()=>{router.pushUrl({url: 'pages/GroupChatPage'})})
          ContactItemStyle({ imageSrc: "biaoqian.png", text: "标签" })
            .onClick(()=>{router.pushUrl({url: 'pages/LabelPage'})})
          ContactItemStyle({ imageSrc: "gonzh.png", text: "公众号" })
            .onClick(()=>{router.pushUrl({url: 'pages/OfficialAccountPage'})})

          // 企业联系人
          Text("      我的企业及企业联系人")
            .fontSize('12fp')
            .backgroundColor(WeChatColor)
            .height('80px')
            .width('100%')
          ContactItemStyle({ imageSrc: "qiye.png", text: "企业联系人" })
            .onClick(()=>{router.pushUrl({url: 'pages/CorporateContactsPage'})})

          // 微信好友
          Text("      我的微信好友")
            .fontSize('12fp')
            .backgroundColor(WeChatColor)
            .height('80px')
            .width('100%')

          ContactItemStyle({ imageSrc: "head14.png", text: "SpiderMan" })
            .onClick(()=>{router.pushUrl({url: 'pages/ContactUserInfoPage'})})
          List() {
            ForEach(this.contactsInfo, (item) => {
              ListItem() {
                ContactItemStyle({ imageSrc: item.portrait, text: item.nickName })
              }
            }, item => item.userId.toString())
          }
        }
      }
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}