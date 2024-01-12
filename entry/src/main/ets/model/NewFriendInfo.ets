let userId: number = 1

export class NewFriendInfo {
  userId: string
  nickName: string
  portrait: string
  chatInfo: string
  state: string

  constructor(nickName: string, portrait: string, chatInfo: string, state: string) {
    this.userId = `${userId++}`
    this.nickName = nickName
    this.portrait = portrait
    this.chatInfo = chatInfo
    this.state = state
  }
}