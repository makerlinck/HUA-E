import { initBoxData } from '../viewmodel/CollectBoxViewModel';
import { CollectBox, Topic_Top } from './SearchBarComponent'

@Preview
@Component
struct MainPage {
  // @State box_data: Array<CollectBox> = initBoxData();
  @State stan_color:ResourceColor = '#6FE838';
  @State stan_light_color:ResourceColor = '#A6E885';
  @State full_w: Length = '100%';
  @State stan_h: Length = 140;
  @State currentIndex: number = 0;
  @State iconOffset: number = 0;
  @State initNumber: number = 0;


  @Builder
  BoxItem() {
    Row() {
    }.width('45%').height(240).backgroundColor($r('app.color.topic_color_light')).borderRadius(15).margin(5)
  }
  build() {
    Row() {
      Column() {
        Topic_Top()
        Scroll() {
          Flex({ justifyContent: FlexAlign.SpaceEvenly , wrap: FlexWrap.Wrap }) {

            this.BoxItem()
            this.BoxItem()
            this.BoxItem()
            this.BoxItem()
            this.BoxItem()
            this.BoxItem()
            this.BoxItem()
            this.BoxItem()
            this.BoxItem()
            this.BoxItem()




          }.padding({ 'top': 10, 'bottom': 10 })
        }.scrollable(ScrollDirection.Vertical).edgeEffect(EdgeEffect.Spring).scrollBar(BarState.Off)
      }.height('100%')
    }
  }
}

export {MainPage}