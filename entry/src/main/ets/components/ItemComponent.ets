
@Component
export struct UserInfoItemComponent {
  private text: string
  private info: string
  private arrow: string = "arrow.png"

  build() {
    Column() {
      Flex({justifyContent: FlexAlign.Center, alignItems: ItemAlign.Center}){
        Text(this.text)
          .fontSize('18vp')
          .margin({left: '50px'})
          .flexGrow(1)
        Text(this.info)
          .fontSize('18vp')
          .margin({right: '20px'})
          .fontColor("#ffaeaeae")
        Image($rawfile(this.arrow))
          .width('75px')
          .height('75px')
          .margin({right: '20px'})
      }
      .height('150px')
      .width('100%')
    }
  }
}

@Component
export struct SettingItemComponent {
  private text: string
  private info: string
  private arrow: string = "arrow.png"

  build() {
    Column() {
      Flex({justifyContent: FlexAlign.Center, alignItems: ItemAlign.Center}){
        Text(this.text)
          .fontSize('18vp')
          .margin({left: '50px'})
          .flexGrow(1)
        Text(this.info)
          .fontSize('18vp')
          .margin({right: '20px'})
          .fontColor("#ffaeaeae")
        Image($rawfile(this.arrow))
          .width('75px')
          .height('75px')
          .margin({right: '20px'})
      }
      .height('150px')
      .width('100%')
    }
  }
}

@Component
export struct SettingItemComponent2 {
  private text: string

  build() {
    Column() {
      Flex({justifyContent: FlexAlign.Center, alignItems: ItemAlign.Center}){
        Text(this.text)
          .fontSize('18vp')
        }
      .height('150px')
      .width('100%')
    }
  }
}