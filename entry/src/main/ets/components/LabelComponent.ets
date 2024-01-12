import { WeChatColor } from '../model/WeChatData'
import { MyDivider } from './CommonStyle'
@Component
export struct LabelComponent {

  private LabelText: string
  private ContactsListText: string

  build() {
    Column() {
      Text(this.LabelText)
        .textAlign(TextAlign.Start)
        .fontSize('16fp')
        .baselineOffset(3)
        .lineHeight(20)
      Text(this.ContactsListText)
        .textAlign(TextAlign.Start)
        .fontSize('12pf')
        .width('620px')
        .maxLines(1)
        .fontColor("#c2bec2")
        .lineHeight(20)
      MyDivider({ style: '1' })
    }.alignItems(HorizontalAlign.Start)
  }
}