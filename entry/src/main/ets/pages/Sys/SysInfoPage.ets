import {SysTab_Top} from '../SearchBarComponent'

@Entry
struct SysInfoPage {

  build() {
    Column() {
      SysTab_Top()
      Stack() {
        Row() {
          Column().width(60).height('100%').linearGradient({
            angle: 90,
            colors: [
              [$r('app.color.topic_color_light'), 0.0],
              [$r('app.color.topic_color'), 1.0],]})
          Column().width('100%').height('100%').backgroundColor($r('app.color.topic_color'))
        }.width('100%').height('100%').backgroundColor(Color.Black)

        Column() {
          Text('软件名: 花易')
          Text('版本号: 0.5.01(最新版本)')
          Text('软件许可使用协议')
          Text('License : All Reserved')
          Text('证照信息')
          Text('闲鱼用户服务协议')
          Text('\n\n\n\n')
          Text('联系我们: \n E-Mail:Makerlinck@outlook.com')
        }.width('80%').height('80%').backgroundColor($r('app.color.topic_color_light')).borderRadius(15).padding(15)
      }
    }.width('100%').height('110%').offset({y:-40})


  }
}
export {SysInfoPage}