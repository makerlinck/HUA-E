@Entry
struct StartUp {

  build() {
   Row() {
     Column() {
       Text('花易').fontSize(60)
     }.width('100%')
   }.width('100%').height('100%').backgroundColor($r('app.color.topic_color_light')).expandSafeArea()
  }
}