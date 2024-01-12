@Entry
@Component
struct CheckForNewVersionsPage {
  @State message: string = '这是{检查新版本}页面。'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
      }
      .width('100%')
    }
    .height('100%')
  }
}