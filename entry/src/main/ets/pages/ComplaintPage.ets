@Entry
@Component
struct ComplaintPage {
  @State message: string = '这是{投诉}页面。'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Rect().width('100%').height('380px').fill('#ffff').radius(20)
      }
      .backgroundColor('#ff5d5d5d')
      .width('100%')
    }
    .height('100%')
  }
}