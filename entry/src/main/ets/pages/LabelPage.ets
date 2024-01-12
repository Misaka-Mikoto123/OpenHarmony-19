import { Title2, MyDivider } from "../components/CommonStyle"
import { SettingItemComponent, SettingItemComponent2 } from "../components/ItemComponent"
import { LabelComponent } from '../components/LabelComponent'
import { ContactItemStyle } from '../components/WCContactItemComponent'

@Entry
@Component
struct SettingPage {
  build() {
    Column(){
      Title2({text: '通讯录标签'})

      Scroll(){
        Column(){
          LabelComponent({ LabelText: "    哆啦A梦（6）", ContactsListText: "     哆啦A梦,大雄,胖虎,静香,小夫,哆啦美" })
          LabelComponent({ LabelText: "    海绵宝宝（4）", ContactsListText: "     海绵宝宝,蟹老板,痞老板,珊迪,派大星,章鱼哥" })
          LabelComponent({ LabelText: "    憨憨们（4）", ContactsListText: "     小黄人,皮卡丘,SpiderMan" })
          MyDivider()
          LabelComponent({ LabelText: "    未设置标签的朋友（40）", ContactsListText: "     多笑一笑,花开富贵,马里奥,小梁,jay十年老粉,妙蛙种子" })

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