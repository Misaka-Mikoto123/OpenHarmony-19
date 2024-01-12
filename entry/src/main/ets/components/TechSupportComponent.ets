import router from '@ohos.router';

/**
 * Privacy agreement and copyright statement page.
 */
@Component
export struct TechSupportComponent {
  build() {
    Column() {
      Column() {
        Text('《软件许可及服务协议》')
          .fontSize('12fp')
          .fontColor('#FF007DFF')
          .onClick(() => {
            router.pushUrl({url: 'pages/LicensePage'})
          })
        Row(){
          Text('《隐私保护指引摘要》')
            .fontSize('12fp')
            .fontColor('#FF007DFF')
            .onClick(() => {
              router.pushUrl({url: 'pages/PrivacyPage'})
            })
          Text(' 《隐私保护指引》')
            .fontSize('12fp')
            .fontColor('#FF007DFF')
            .onClick(() => {
              router.pushUrl({url: 'pages/PrivacyPage'})
            })
        }
      }

      Text('客服电话：400 670 0700')
        .fontSize('12fp')
        .fontColor('#99182431')
      Text('ICP备案号：粤B2-20090059-1621A >')
        .fontSize('12fp')
        .fontColor('#99182431')
      Text('腾讯公司 版权所有')
        .fontSize('12fp')
        .fontColor('#99182431')
      Text('Copyright © 2022-2023 Tencent All Rights Reserved.')
        .fontSize('12fp')
        .fontColor('#99182431')
    }
    .alignItems(HorizontalAlign.Center)
    .align(Alignment.Bottom)
    .margin({
      bottom: '25vp'
    })
  }
}