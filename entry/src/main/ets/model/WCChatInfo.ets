let ChatId: number = 1

export class ChatInfo {

  speaker: string
  chatInfo: string
  time: string

  constructor( speaker: string, chatInfo: string, time: string) {
    this.speaker = speaker
    this.chatInfo = chatInfo
    this.time = time
  }
}


