import { UserInfoItemComponent } from '../components/ItemComponent'
import { MyDivider, Title2 } from '../components/CommonStyle'
@Entry
@Component
struct UserInfoPage {
  build() {
    Column(){
      Title2({text: '个人信息'})

      UserInfoItemComponent({text: '头像', info: '我是头像'})
      MyDivider({style: "1"})
      UserInfoItemComponent({text: '名字', info: 'I hope'})
      MyDivider({style: "1"})
      UserInfoItemComponent({text: '拍一拍', info: ''})
      MyDivider({style: "1"})
      UserInfoItemComponent({text: '微信号', info: 'w578875856'})
      MyDivider({style: "1"})
      UserInfoItemComponent({text: '二维码名片', info: '我是二维码'})
      MyDivider({style: "1"})
      UserInfoItemComponent({text: '更多信息', info: ''})
      MyDivider()

      UserInfoItemComponent({text: '来电铃声', info: ''})
      MyDivider()

      UserInfoItemComponent({text: '微信豆', info: ''})
      MyDivider()

      UserInfoItemComponent({text: '我的地址', info: ''})
      MyDivider()
    }
  }
}