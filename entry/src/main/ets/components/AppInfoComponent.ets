import {ListItemData} from "../model/ListItemData"
import router from '@ohos.router';

/**
 * AppInfo component shows the relevant information of the application.
 */
@Component
export struct AppInfoComponent {
  private appInfoData: Array<ListItemData>;

  build() {
    Column() {
      List() {
        ForEach(this.appInfoData, (item: ListItemData) => {
          ListItem() {
            Column() {
              AppInfoItem({
                appInfoItem: item
              })
              Divider()
                .color('#0D182431')
                .strokeWidth('0.5vp')
                .margin({
                  left: '12vp',
                  right: '12vp'
                })
            }
          }
        }, item => JSON.stringify(item))
      }
    }
    .padding({
      left: '12vp',
      right: '12vp'
    })
  }
}

@Component
struct AppInfoItem {
  private appInfoItem: ListItemData;

  build() {
    Flex({
      direction: FlexDirection.Row,
      alignItems: ItemAlign.Center,
      justifyContent: FlexAlign.SpaceBetween
    }) {
      Text(this.appInfoItem.title)
        .fontSize('16vp')
        .fontColor('#182431')
        .fontWeight(500)
      Image($rawfile(this.appInfoItem.icon))
        .objectFit(ImageFit.Contain)
        .height('48vp')
        .width('24vp')
        .align(Alignment.End)
    }
    .margin({
      left: '24vp',
      right: '12vp'
    })
    .height('48vp')
    .onClick(()=>{
      if (this.appInfoItem.id == 1){
        router.pushUrl({url: 'pages/FunctionIntroductionPage'})
      }
      else if (this.appInfoItem.id == 2){
        router.pushUrl({url: 'pages/ComplaintPage'})
      }
      else if (this.appInfoItem.id == 3){
        router.pushUrl({url: 'pages/CheckForNewVersionsPage'})
      }
    })
  }
}