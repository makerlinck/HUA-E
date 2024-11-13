
import { initTabTuData } from '../viewmodel/BottomTabViewModel';
import { BottomTabModel } from '../viewmodel/BottomTabItem';
import { Constants } from '../common/Constants';
import { MainPage } from './MainTab'
import { Discover } from './DiscoverTab'
import { ContactTab } from './ContactTab'
import { AboutMeComponent } from './AboutMeTab'
@Preview
@Entry
struct RudderStyleTab {

  @State full_w: Length = '100%';
  @State stan_h: Length = 140;
  @State tabArray: Array<BottomTabModel> = initTabTuData();
  @State currentIndex: number = 0;
  @State iconOffset: number = 0;
  @State initNumber: number = 0;
  private controller: TabsController = new TabsController()

  @Builder
  Tab(selectImage: Resource, defaultImage: Resource, title: string | Resource, middleMode: boolean, index: number) {
    Column() {
      if (index === Constants.TAB_INDEX_TWO) {
        Image(defaultImage)
          .size({ width: 56, height: 56 })
          .offset({ y: -15 })
      } else {
        Image(this.currentIndex === index ? selectImage : defaultImage)
          .size({ width: 40, height: 40 })
          .offset({
            y: (this.currentIndex === index && this.currentIndex !== Constants.TAB_INDEX_TWO)
              ? this.iconOffset : this.initNumber
          })
          .objectFit(ImageFit.Contain)
          .animation({
            duration: Constants.ANIMATION_DURATION,
            curve: Curve.Ease,
            playMode: PlayMode.Normal
          })
      }
      if (!middleMode) {
        Text(title)
          .fontSize(15)
          .margin({ top: 6 })
          .fontColor(this.currentIndex === index ? '#3388ff' : '#E6000000')
      }
    }
    .padding({ top: 11 })
    .width(this.full_w)
    .backgroundColor($r('app.color.tab_gray_background_color'))
    .height(90)
    .translate({ y: 40 })
    .onClick(() => {
      if (index !== Constants.TAB_INDEX_TWO) {
        this.currentIndex = index;
        this.controller.changeIndex(index);
        this.iconOffset = Constants.ICON_Offset;
      }
    }).offset({y:-40})

  }


  build() {
    Stack({ alignContent: Alignment.BottomStart }) {
      Tabs({ barPosition: BarPosition.End, controller: this.controller }) {
        ForEach(this.tabArray, (item: BottomTabModel, index: number) => {
          if (index === Constants.TAB_INDEX_ZERO) {
            TabContent() {MainPage()}
          }

          else if (index === Constants.TAB_INDEX_ONE) {
            TabContent() {Discover()}
          }
          else if (index === Constants.TAB_INDEX_THREE) {
            TabContent() {ContactTab()}
          }
          else if (index === Constants.TAB_INDEX_FOUR) {
            TabContent() {AboutMeComponent()}
          }
          else {
            TabContent() {}.backgroundColor(Color.White)
          }
        }, (item: BottomTabModel, index: number) => JSON.stringify(item) + index)
      }
      .scrollable(false).barHeight(this.initNumber).animationDuration(0).offset({ y: -45 })


      Flex() {
        ForEach(this.tabArray, (item: BottomTabModel, index: number) => {
          this.Tab(item.selectImage, item.defaultImage, item.title, item.middleMode, index)
        }, (item: BottomTabModel, index: number) => JSON.stringify(item) + index)
      }.offset({y:40})
    }
  }
}