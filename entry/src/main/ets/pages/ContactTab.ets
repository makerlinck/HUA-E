import { MessageSearch, Message_Top } from './SearchBarComponent'
@Preview
@Component
struct ContactTab {
  build() {
    Column() {
      Message_Top()

      List() {
        ListItem() {
          Scroll() {
            Column() {
              Row() {
                Row().width(60).height(60).backgroundColor(Color.Gray).borderRadius(30).shadow({radius:5})
                Text('你好')
              }.padding(5).width('100%').margin(10)
              Row() {
                Row().width(60).height(60).backgroundColor(Color.Gray).borderRadius(30).shadow({radius:5})
                Text('测试文本1')
              }.padding(5).width('100%').margin(10)
              Row() {
                Row().width(60).height(60).backgroundColor(Color.Gray).borderRadius(30).shadow({radius:5})
                Text('测试文本2')
              }.padding(5).width('100%').margin(10)
              Row() {
                Row().width(60).height(60).backgroundColor(Color.Gray).borderRadius(30).shadow({radius:5})
                Text('测试文本3')
              }.padding(5).width('100%').margin(10)
            }
          }
        }.backgroundColor($r('app.color.tab_gray_background_color'))
      }
    }.height('100%')
  }
}

export {ContactTab}