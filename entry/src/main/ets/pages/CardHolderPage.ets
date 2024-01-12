import {DiscoveryItemComponent} from "../components/DiscoveryItemComponent"
import {Title2, MyDivider} from "../components/CommonStyle"

@Entry
@Component
struct CardHolderPage {
  build() {
    Column(){
      Title2({text: '卡包'})

      DiscoveryItemComponent({ imageSrc: "moments.png", text: "会员卡" })
      MyDivider({ style: '1' })
      DiscoveryItemComponent({ imageSrc: "moments.png", text: "交通卡" })
      MyDivider()

      DiscoveryItemComponent({ imageSrc: "moments.png", text: "券和礼品卡" })
      MyDivider({ style: '1' })
      DiscoveryItemComponent({ imageSrc: "moments.png", text: "票证" })
      MyDivider()

      Text('最近30天未使用卡片')
        .margin({top: '400px'})
        .fontSize('14vx')
        .textAlign(TextAlign.Center)
    }
  }
}