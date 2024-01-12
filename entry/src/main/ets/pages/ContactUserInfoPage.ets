import { Title2, MyDivider } from "../components/CommonStyle"
import { SettingItemComponent, SettingItemComponent2 } from "../components/ItemComponent"
import router from '@ohos.router'
import { WeChatColor } from '../model/WeChatData'

@Entry
@Component
struct SettingPage {
  build() {
    Column(){
      Flex({alignItems: ItemAlign.Center}){
        Image($rawfile("arrowl.png"))
          .height('75px')
          .width('75px')
          .margin({left: '15px'})
          .onClick(()=>{router.back()})
        Text("...")
          .fontSize('20vp')
          .padding('20px')
          .margin({ left: '1050px' })
      }
      .height('160px')
      .backgroundColor(WeChatColor)

      Scroll(){
        Column(){
          Flex({justifyContent: FlexAlign.Center, alignItems: ItemAlign.Center}) {
            Image($rawfile("head14.png"))
              .width('140px')
              .height('140px')
              .margin({left: '50px', right: '50px'})
              .border( {
                radius: 4
              })

            Column() {
              Text("彼得.帕克")
                .fontSize('18fp')
                .baselineOffset(3)
              Text("昵称：SpiderMan")
                .fontSize('14pf')
                .width('620px')
                .maxLines(1)
                .fontColor("#c2bec2")
              Text("微信号：wxid_123456567")
                .fontSize('14pf')
                .width('620px')
                .maxLines(1)
                .fontColor("#c2bec2")
              Text("地区：美国 纽约")
                .fontSize('14pf')
                .width('620px')
                .maxLines(1)
                .fontColor("#c2bec2")
                .baselineOffset(6)
            }
            .alignItems(HorizontalAlign.Start)
            .flexGrow(1)
          }
          .width('100%')
          .height('220px')
          MyDivider({ style: '1' })
          Row() {
            Text("  标签")
              .fontSize('16pf')
              .width('240px')
              .maxLines(1)
            Text("憨憨们")
              .fontSize('16pf')
              .width('900px')
              .maxLines(1)
              .fontColor("#c2bec2")
            Image($rawfile("arrow.png"))
              .width('75px')
              .height('75px')
              .margin({right: '40px'})
          }.height('140px')

          MyDivider({ style: '1' })
          Row() {
            Text("  朋友权限")
              .fontSize('16pf')
              .width('1140px')
              .maxLines(1)
            Image($rawfile("arrow.png"))
              .width('75px')
              .height('75px')
              .margin({right: '40px'})
          }.height('140px')
          MyDivider()

          Row() {
            Text("  更多信息")
              .fontSize('16pf')
              .width('1140px')
              .maxLines(1)
            Image($rawfile("arrow.png"))
              .width('75px')
              .height('75px')
              .margin({right: '40px'})
          }.height('140px')
          MyDivider()

          Column() {
            Flex({justifyContent: FlexAlign.Center, alignItems: ItemAlign.Center}){
              Image($r('app.media.wechat_normal'))
                .width('75px')
                .height('75px')
                .margin({right: '40px'})
              Text('发消息')
                .fontSize('18vp')
            }
            .height('150px')
            .width('100%')
          }
          MyDivider()

          Column() {
            Flex({justifyContent: FlexAlign.Center, alignItems: ItemAlign.Center}){
              Image($rawfile("videoCall.png"))
                .width('75px')
                .height('75px')
                .margin({right: '40px'})
              Text('音视频通话')
                .fontSize('18vp')
            }
            .height('150px')
            .width('100%')
          }

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