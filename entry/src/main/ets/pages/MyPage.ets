import { MyDivider } from '../components/CommonStyle'
import { DiscoveryItemComponent } from '../components/DiscoveryItemComponent'
import router from '@ohos.router';
@Entry
@Component
export struct MyPage {
  private imageTitle: string = "userInfo.png"

  build() {
    Column() {
      // 用户信息部分
      Image($rawfile(this.imageTitle)).height(170).width('100%')
        .onClick(()=>{router.pushUrl({url: "pages/UserInfoPage"})})
      MyDivider()

      // 列表
      DiscoveryItemComponent({ imageSrc: "pay.png", text: "服务" })
        .onClick(()=>{router.pushUrl({url: "pages/ServicePage"})})
      MyDivider()

      DiscoveryItemComponent({ imageSrc: "favorites.png", text: "收藏" })
      MyDivider({ style: '1' })
      DiscoveryItemComponent({ imageSrc: "moments2.png", text: "朋友圈" })
      MyDivider({ style: '1' })
      DiscoveryItemComponent({ imageSrc: "card.png", text: "卡包" })
        .onClick(()=>{router.pushUrl({url: "pages/CardHolderPage"})})
      MyDivider({ style: '1' })
      DiscoveryItemComponent({ imageSrc: "emoticon.png", text: "表情" })
      MyDivider()

      DiscoveryItemComponent({ imageSrc: "setting.png", text: "设置" })
        .onClick(()=>{router.pushUrl({url: 'pages/SettingPage'})})
      MyDivider()
    }
    .alignItems(HorizontalAlign.Start)
    .width('100%')
    .height('100%')
  }
}