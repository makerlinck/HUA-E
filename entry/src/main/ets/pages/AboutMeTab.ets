import { Constants } from '../common/Constants';
import { ListItemModel } from '../viewmodel/ListItem';
import { initList } from '../viewmodel/ListViewModel';
import { TradeInfo } from '../pages/TradeInfo';
import { router } from '@kit.ArkUI';
import { BusinessError } from '@kit.BasicServicesKit';

@Component
struct AboutMeComponent {
  @State stan_color:ResourceColor = '#6FE838';
  @State stan_light_color:ResourceColor = '#A6E885';
  @State stan_light_gray:ResourceColor = '#F1F1F1';
  @State full_w: Length = '100%';
  @State stan_h: Length = 140;

  @State settingList: Array<ListItemModel> = initList();

  @Builder
  SettingButton(image: Resource ,title: ResourceStr ,target: string) {
      Button() {
        Stack() {
          Image(image).width(30).height(30).fillColor(Color.Gray)
          Text(title).fontSize(20).letterSpacing(1).textAlign(TextAlign.Start).offset({x: 90})
        }
      }.width('100%').height(60).backgroundColor(Color.White).type(ButtonType.Normal).align(Alignment.Start).borderRadius(15).margin(5)
      .onClick(() => {

        router.pushUrl({ url:target}).then(() => {
        }).catch((err: BusinessError) => {
          console.error(`Failed to jump to the second page. Code is ${err.code}, message is ${err.message}`)
        })
      })
  }

  build() {
    List() {
      ListItem() {
        Stack() {
          Image($rawfile('hc1.jpg'))
            .width(80)
            .height(80)
            .borderRadius('40')

          Text('DEV').fontSize(24).offset({y:60})
        }
      }
      .width(this.full_w)
      .height(this.stan_h)
      TradeInfo()

      ListItem() {
        Text('广告位招租').fontSize(30)
      }.width(this.full_w).height(240).backgroundColor(Color.White).borderRadius(15).margin(5)

      ForEach(this.settingList ,(item: ListItemModel) => {
        this.SettingButton(item.image,item.title,item.target)
      })
    }.backgroundColor(this.stan_light_gray)
  }


}
export { AboutMeComponent }

