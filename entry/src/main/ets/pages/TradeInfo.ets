@Preview
@Component
struct TradeInfo {
  @State stan_radius:Length = 15;
  @Builder
  TradeInfoItem() {
    Button({type: ButtonType.Normal}) {
      Column() {
        Text('15').fontSize(25)
        Text('DEV').fontSize(15)
      }
    }.backgroundColor(Color.White).width('24%').height(60).borderRadius(15).margin(5).shadow({ radius: 15, color: Color.Gray, offsetX: 0, offsetY: 15 })
  }

  @Builder
  TradeInfoBox() {
    Flex({ justifyContent: FlexAlign.SpaceBetween }) {
      this.TradeInfoItem()
      this.TradeInfoItem()
      this.TradeInfoItem()
      this.TradeInfoItem()
    }
  }


  build() {

    this.TradeInfoBox()

  }

}

export {TradeInfo}