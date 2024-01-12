
import { NewFriendInfo } from './NewFriendInfo'

const NewFriendContactInfo: any[] = [
  {
    "portrait": "xlxj.png",
    "nickName": "多笑一笑",
    "chatInfo": "我是多笑一笑",
    "state": "已添加"
  },
  {
    "portrait": "hkfg.jpg",
    "nickName": "花开富贵",
    "chatInfo": "你好呀！",
    "state": "已添加"
  },
  {
    "portrait": "uu.jpg",
    "nickName": "uu",
    "chatInfo": "我是uu",
    "state": "已添加"
  },
  {
    "portrait": "yy.jpg",
    "nickName": "遥远",
    "chatInfo": "怎么把我删了？",
    "state": "已添加"
  },
  {
    "portrait": "zzm.jpg",
    "nickName": "马前卒",
    "chatInfo": "猜猜我是谁",
    "state": "已添加"
  },
  {
    "portrait": "xh.jpg",
    "nickName": "星河",
    "chatInfo": "我是星河",
    "state": "已添加"
  },
  {
    "portrait": "xd.jpg",
    "nickName": "绣刀",
    "chatInfo": "我是绣刀",
    "state": "已添加"
  },
  {
    "portrait": "s.jpg",
    "nickName": "天师",
    "chatInfo": "哦哦哦",
    "state": "已添加"
  },
  {
    "portrait": "lc.jpg",
    "nickName": "小梁",
    "chatInfo": "我是梁XX",
    "state": "已添加"
  },
  {
    "portrait": "jl.jpg",
    "nickName": "jay十年老粉",
    "chatInfo": "嗨！！",
    "state": "已添加"
  },
  {
    "portrait": "cxlx.jpg",
    "nickName": "夏日星",
    "chatInfo": "哇哦！",
    "state": "已添加"
  },
  {
    "portrait": "berry.jpg",
    "nickName": "天灰灰",
    "chatInfo": "认识认识？",
    "state": "已添加"
  },
  {
    "portrait": "x.jpg",
    "nickName": "乐",
    "chatInfo": "我是乐",
    "state": "已添加"
  }
]

export function getNewFriendContactInfo(): Array<NewFriendInfo> {
  let newFriendContactList: Array<NewFriendInfo> = []
  NewFriendContactInfo.forEach(item => {
    newFriendContactList.push(new NewFriendInfo(item.nickName, item.portrait, item.chatInfo, item.state))
  })
  return newFriendContactList
}

export const WeChatColor:string = "#ededed"