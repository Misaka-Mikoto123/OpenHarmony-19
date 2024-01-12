import {LogoAndVersionComponent} from "../components/LogoAndVersionComponent"
import {AppInfoComponent} from "../components/AppInfoComponent"
import {TechSupportComponent} from "../components/TechSupportComponent"
import {Title2} from "../components/CommonStyle"

@Entry
@Component
struct AboutPage {
  build() {
    Column() {
      Title2({text:''})

      Scroll() {
        Column() {
          LogoAndVersionComponent()

          AppInfoComponent({
            appInfoData: [
              {id: 1, title: '功能介绍', icon: 'arrow.png'},
              {id: 2, title: '投诉', icon: 'arrow.png'},
              {id: 3, title: '检查新版本', icon: 'arrow.png'}
          ]})

          Blank()

          TechSupportComponent()
        }
        .height('100%')
        .constraintSize({ minHeight: '700vp' })
      }
      .layoutWeight(1)
    }
  }
}