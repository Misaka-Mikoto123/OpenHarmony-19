/**
 * Logo and version component on top page.
 */
@Component
export struct LogoAndVersionComponent {
  build() {
    Column() {
      Image($r("app.media.icon"))
        .height('72vp')
        .width('72vp')
        .borderRadius('16vp')
      Text('微信')
        .fontSize('16vp')
        .fontColor('#182431')
        .fontWeight(500)
        .padding({ top: '8vp' })
      Text('Version 8.0.44')
        .fontSize('14vp')
        .fontColor('#99182431')
    }
    .alignItems(HorizontalAlign.Center)
    .align(Alignment.Top)
    .padding({
      top: '62vp',
      bottom: '62vp'
    })
  }
}