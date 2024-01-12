import { Title2, MyDivider } from "../components/CommonStyle"
import { SettingItemComponent, SettingItemComponent2 } from "../components/ItemComponent"
import router from '@ohos.router'

@Entry
@Component
struct SettingPage {
  build() {
    Column(){
      Title2({text: '设置'})

      Scroll(){
        Column(){
          SettingItemComponent({text: '账号与安全'})
          MyDivider()

          SettingItemComponent({text: '青少年模式'})
          MyDivider({ style: '1' })
          SettingItemComponent({text: '关怀模式'})
          MyDivider()

          SettingItemComponent({text: '新消息通知'})
          MyDivider({ style: '1' })
          SettingItemComponent({text: '聊天'})
          MyDivider({ style: '1' })
          SettingItemComponent({text: '通用'})
          MyDivider()

          Text("    隐私")
            .fontSize('14fp')
            .fontColor("#ff999999")
            .backgroundColor("#ededed")
            .height('120px')
            .width('100%')
          SettingItemComponent({text: '朋友权限'})
          MyDivider({ style: '1' })
          SettingItemComponent({text: '个人信息与权限'})
          MyDivider({ style: '1' })
          SettingItemComponent({text: '个人信息收集清单'})
          MyDivider({ style: '1' })
          SettingItemComponent({text: '第三方信息共享清单'})
          MyDivider()

          SettingItemComponent({text: '第三方信息共享清单'})
          MyDivider()
          SettingItemComponent({text: '第三方信息共享清单'})
          MyDivider()
          SettingItemComponent({text: '第三方信息共享清单'})
          MyDivider()

          SettingItemComponent({text: '插件', info: '输入法支持颜文字了へ(゜∇、°)へ'})
          MyDivider()

          SettingItemComponent({text: '关于微信'})
            .onClick(()=>{router.pushUrl({url: 'pages/AboutPage'})})
          MyDivider({ style: '1' })
          SettingItemComponent({text: '帮助与反馈'})
          MyDivider()

          SettingItemComponent2({text: '切换账号'})
          MyDivider()

          SettingItemComponent2({text: '退出'})
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