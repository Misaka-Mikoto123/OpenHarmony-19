import { Title2, MyDivider } from "../components/CommonStyle"
import { SettingItemComponent, SettingItemComponent2 } from "../components/ItemComponent"
import { ContactItemStyle } from '../components/WCContactItemComponent'

@Entry
@Component
struct SettingPage {
  build() {
    Column(){
      Title2({text: '企业联系人'})

      Scroll(){
        Column(){
          ContactItemStyle({ imageSrc: "head1.png", text: "皮卡丘" })
          ContactItemStyle({ imageSrc: "head2.png", text: "汤姆猫" })
          ContactItemStyle({ imageSrc: "head3.png", text: "马里奥" })
          ContactItemStyle({ imageSrc: "head4.png", text: "杰瑞鼠" })
          ContactItemStyle({ imageSrc: "head5.png", text: "妙蛙种子" })
          ContactItemStyle({ imageSrc: "head7.png", text: "胖虎" })
          ContactItemStyle({ imageSrc: "head8.png", text: "哆啦美" })
          ContactItemStyle({ imageSrc: "head9.png", text: "哆啦A梦" })
          ContactItemStyle({ imageSrc: "head10.png", text: "静香" })
          ContactItemStyle({ imageSrc: "head11.png", text: "大雄" })
          ContactItemStyle({ imageSrc: "head12.png", text: "小夫" })
          ContactItemStyle({ imageSrc: "head13.png", text: "小黄人" })
          ContactItemStyle({ imageSrc: "head15.png", text: "海绵宝宝" })
          ContactItemStyle({ imageSrc: "head16.png", text: "派大星" })
          ContactItemStyle({ imageSrc: "head17.png", text: "蟹老板" })
          ContactItemStyle({ imageSrc: "head18.png", text: "珊迪" })
          ContactItemStyle({ imageSrc: "head19.png", text: "痞老板" })
          ContactItemStyle({ imageSrc: "head20.png", text: "章鱼哥" })

          Text("18个企业联系人")
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