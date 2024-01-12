import {ServiceCeilComponent, ServiceItemComponent} from "../components/ServiceComponent"
import {Title2, MyDivider} from "../components/CommonStyle"

@Entry
@Component
struct ServicePage {
  build() {
    Column(){
      Title2({text: '服务'})

      Scroll(){
        Column(){
          ServiceItemComponent(
            {title: '',
              ServiceGroup: [
                {img: 'shoufuk.jpg', text: '收付款', info: ''},
                {img: 'qianbao.jpg', text: '钱包', info: '￥0.01'}
              ],
              color: '#ff009f00',
              cols: 2
            })
          MyDivider()

          ServiceItemComponent(
            {title: '金融理财',
              ServiceGroup: [
                {img: 'xinyongkhk.jpg', text: '信用卡还款', info: ''},
                {img: 'licait.jpg', text: '理财通', info: ''},
                {img: 'baoxianfw.jpg', text: '保险服务', info: ''}
              ]
            })
          MyDivider()

          ServiceItemComponent(
            {title: '生活服务',
              ServiceGroup: [
                {img: 'shoujicz.jpg', text: '手机充值', info: ''},
                {img: 'shenghuojf.jpg', text: '生活缴费', info: ''},
                {img: 'Qbicz.jpg', text: 'Q币充值', info: ''},
                {img: 'chengshifw.jpg', text: '城市服务', info: ''},
                {img: 'tengxungy.jpg', text: '腾讯公益', info: ''},
                {img: 'yiliaojk.jpg', text: '医疗健康', info: ''}
              ],
              rows: 2
            })
          MyDivider()

          ServiceItemComponent(
            {title: '交通出行',
              ServiceGroup: [
                {img: 'chuxingfw.jpg', text: '出行服务', info: ''},
                {img: 'huochepjp.jpg', text: '火车票机票', info: ''},
                {img: 'didicx.jpg', text: '滴滴出行', info: ''},
                {img: 'jiudian.jpg', text: '酒店', info: ''}
              ]
            })
          MyDivider()

          ServiceItemComponent(
            {title: '购物消费',
              ServiceGroup: [
                {img: 'pinpaifx.jpg', text: '品牌发现', info: ''},
                {img: 'jingdonggw.jpg', text: '京东购物', info: ''},
                {img: 'meituanwm.jpg', text: '美团外卖', info: ''},
                {img: 'dianyingycwl.jpg', text: '电影演出玩乐', info: ''},
                {img: 'meituantj.jpg', text: '美团特价', info: ''},
                {img: 'pinduod.jpg', text: '拼多多', info: ''},
                {img: 'weipinhtm.jpg', text: '唯品会特卖', info: ''},
                {img: 'zhuanzhuanes.jpg', text: '转转二手', info: ''},
                {img: 'beikezf.jpg', text: '贝壳找房', info: ''}
              ],
              rows: 3
            })
          Divider()
            .vertical(false)
            .color("#ededed")
            .strokeWidth('300px')
        }
      }
      .scrollBar(BarState.Off)
      .backgroundColor('#ededed')
    }
  }
}