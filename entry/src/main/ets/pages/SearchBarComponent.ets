import { Constants } from '../common/Constants';
import { router } from '@kit.ArkUI';
import { BusinessError } from '@kit.BasicServicesKit';
import { CollectBoxItemModel } from '../viewmodel/CollectBoxItem'


@Component
struct SearchBar {
  build() {
    Row() {
      Search({ placeholder:$r('app.string.search_holder') }).margin(Constants.MARGIN_SIXTEEN).border({width:2}).backgroundColor(Color.White)
    }
  }
}
@Component
struct MessageSearch {


  build() {
    Row() {
      Search({ placeholder:$r('app.string.message_search_holder') }).margin(Constants.MARGIN_SIXTEEN).backgroundColor(Color.White)
    }
  }
}
@Component
struct SysTab_Top {


  build() {
    Row() {
      Button({type: ButtonType.Normal}) {
        Text(' ＜ ').fontSize(30).fontWeight("bolder").fontColor(Color.White)
      }.onClick(() => {
        console.info(`Succeeded in clicking the 'Back' button.`)
        try {
          // 返回第一页
          router.back()
          console.info('Succeeded in returning to the first page.')
        } catch (err) {
          let code = (err as BusinessError).code;
          let message = (err as BusinessError).message;
          console.error(`Failed to return to the first page. Code is ${code}, message is ${message}`)
        }
      })
      .width(60).height('100%').padding(5).linearGradient({
        angle: 90,
        colors: [
          [$r('app.color.topic_color_light'), 0.0],
          [$r('app.color.topic_color'), 1.0],]})

    }.alignItems(VerticalAlign.Center).width('100%').height(60).backgroundColor($r('app.color.topic_color'))
  }
}

@Component
struct Topic_Top {
  @State topicColor:ResourceColor = $r('app.color.topic_color')
  build() {
    Row() {
      SearchBar()
    }.backgroundColor(this.topicColor).width('100%').height(140).linearGradient({
      angle: 0,
      colors: [
        [Color.White, 0.0],
        [this.topicColor, 1.0],]})

  }
}

@Component
struct Message_Top {
  @State topicColor:ResourceColor = $r('app.color.topic_color')
  build() {
    Row() {
      MessageSearch()
    }.backgroundColor(this.topicColor).width('100%').height(140).linearGradient({
      angle: 0,
      colors: [
        [Color.White, 0.0],
        [this.topicColor, 1.0],]})

  }
}
@Preview
@Component
struct CollectBox {

  build() {
    Row() {
      Image($rawfile('community/media/test.png'))
    }.padding(15).borderRadius(30)
  }
}


export {CollectBox}
export {SearchBar}
export {MessageSearch}
export {SysTab_Top}
export {Topic_Top}
export {Message_Top}