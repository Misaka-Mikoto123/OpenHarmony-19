
import { UserInfo } from './WCUserInfo'

const ContactInfo: any[] = [
  {
    "portrait": "xlxj.png",
    "nickName": "多笑一笑",
    "chatInfo": "漂亮的让我面红的可爱女人",
    "time": "21:21"
  },
  {
    "portrait": "hkfg.jpg",
    "nickName": "花开富贵",
    "chatInfo": "晚霞真好看",
    "time": "18:30"
  },
  {
    "portrait": "uu.jpg",
    "nickName": "uu",
    "chatInfo": "新出的动漫针不戳",
    "time": "17:29"
  },
  {
    "portrait": "yy.jpg",
    "nickName": "遥远",
    "chatInfo": "生活不止眼前的苟且",
    "time": "17:28"
  },
  {
    "portrait": "zzm.jpg",
    "nickName": "马前卒",
    "chatInfo": "我的屋子前有两棵树",
    "time": "16:27"
  },
  {
    "portrait": "xh.jpg",
    "nickName": "星河",
    "chatInfo": "临高兵变，互相开火！",
    "time": "15:26"
  },
  {
    "portrait": "xd.jpg",
    "nickName": "绣刀",
    "chatInfo": "存钱吃利息",
    "time": "14:25"
  },
  {
    "portrait": "s.jpg",
    "nickName": "天师",
    "chatInfo": "老夫掐指一算，这个月你桃花运很旺啊",
    "time": "13:24"
  },
  {
    "portrait": "lc.jpg",
    "nickName": "小梁",
    "chatInfo": "他的手术做完了吗？",
    "time": "11:23"
  },
  {
    "portrait": "jl.jpg",
    "nickName": "jay十年老粉",
    "chatInfo": "杰伦新歌一般般啊",
    "time": "10:22"
  },
  {
    "portrait": "cxlx.jpg",
    "nickName": "夏日星",
    "chatInfo": "今天又没来实验室？",
    "time": "10:21"
  },
  {
    "portrait": "berry.jpg",
    "nickName": "天灰灰",
    "chatInfo": "今天又交到了几个新朋友，晚上一起认识认识？",
    "time": "10:20"
  },
  {
    "portrait": "x.jpg",
    "nickName": "乐",
    "chatInfo": "孩子，你无敌了",
    "time": "10:19"
  }
]

export function getContactInfo(): Array<UserInfo> {
  let contactList: Array<UserInfo> = []
  ContactInfo.forEach(item => {
    contactList.push(new UserInfo(item.nickName, item.portrait, item.chatInfo, item.time))
  })
  return contactList
}

export const WeChatColor:string = "#ededed"