import { Title2, MyDivider } from "../components/CommonStyle"
import { SettingItemComponent, SettingItemComponent2 } from "../components/ItemComponent"
import { ContactItemStyle } from '../components/WCContactItemComponent'

@Entry
@Component
struct SettingPage {
  build() {
    Column(){
      Title2({text: '群聊'})

      Scroll(){
        Column(){
          ContactItemStyle({ imageSrc: "group1.png", text: "幼儿园扛把子" })
          ContactItemStyle({ imageSrc: "group2.png", text: "亲亲一家" })
          ContactItemStyle({ imageSrc: "group3.png", text: "傻子管理局" })
          ContactItemStyle({ imageSrc: "group4.png", text: "家有儿女" })
          ContactItemStyle({ imageSrc: "group5.png", text: "亲亲一家" })
          ContactItemStyle({ imageSrc: "group6.png", text: "屋檐下" })
          ContactItemStyle({ imageSrc: "group7.png", text: "养老院" })
          ContactItemStyle({ imageSrc: "group8.png", text: "快乐星球" })
          ContactItemStyle({ imageSrc: "group9.png", text: "贫民窟" })
          ContactItemStyle({ imageSrc: "group10.png", text: "回寝的诱惑" })

          Text("10个群聊")
            .textAlign(TextAlign.Center)
            .fontSize('18fp')
            .fontColor("#ff999999")
            .backgroundColor("#ededed")
            .height('120px')
            .width('100%')

          Divider()
            .vertical(false)
            .color("#ededed")
            .strokeWidth('300px')

        }
      }
      .scrollBar(BarState.Off)
    }
  }
}