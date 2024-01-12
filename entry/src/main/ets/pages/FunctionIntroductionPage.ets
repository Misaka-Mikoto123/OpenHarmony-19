@Entry
@Component
struct FunctionIntroductionPage {
  @State message: string = '这是{功能介绍}页面。'

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