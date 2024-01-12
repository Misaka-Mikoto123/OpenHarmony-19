
import { ChatInfo } from './WCChatInfo'

const ChatRecord: any[] = [
  {
    "speaker": "me",
    "chatInfo": "漂亮的让我面红的可爱女人",
    "time": "21:21"
  },
  {
    "speaker": "h",
    "chatInfo": "晚霞真好看",
    "time": "18:30"
  },
  {
    "speaker": "me",
    "chatInfo": "新出的动漫针不戳",
    "time": "17:29"
  },
  {
    "speaker": "me",
    "chatInfo": "生活不止眼前的苟且",
    "time": "17:28"
  },
  {
    "speaker": "me",
    "chatInfo": "我的屋子前有两棵树",
    "time": "16:27"

  },
  {
    "speaker": "h",
    "chatInfo": "临高兵变，互相开火！",
    "time": "15:26"
  },
  {
    "speaker": "h",
    "chatInfo": "存钱吃利息",
    "time": "14:25"
  },
  {
    "speaker": "me",
    "chatInfo": "老夫掐指一算，这个月你桃花运很旺啊",
    "time": "13:24"
  },
  {
    "speaker": "h",
    "chatInfo": "他的手术做完了吗？",
    "time": "11:23"
  },
  {
    "speaker": "me",
    "chatInfo": "杰伦新歌一般般啊",
    "time": "10:22"
  },
  {
    "speaker": "h",
    "chatInfo": "今天又没来实验室？",
    "time": "10:21"
  },
  {
    "speaker": "h",
    "chatInfo": "今天又交到了几个新朋友，晚上一起认识认识？",
    "time": "10:20"
  },
  {
    "speaker": "me",
    "chatInfo": "孩子，你无敌了",
    "time": "10:19"
  }
]

export function getChatRecord(): Array<ChatInfo> {
  let chatRecord: Array<ChatInfo> = []
  ChatRecord.forEach(item => {
    chatRecord.push(new ChatInfo( item.speaker, item.chatInfo, item.time))
  })
  return chatRecord
}

export const WeChatColor:string = "#ededed"