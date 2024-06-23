@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  /**
   * 1. 排版（思考布局）
   * 2. 内容（基础组件）
   * 3. 美化（属性方法）
   */
  build() {
    Column() {
      Row() {
        Column({
          space: 8
        }) {
          Text('玩一玩')
            .fontSize(20)
            .fontWeight(700)
          Text('签到兑礼 | 超多大奖 超好玩')
            .fontSize(12)
            .fontColor('#999')
        }
        .alignItems(HorizontalAlign.Start)
        .margin(20)
        Row({
          space: 15
        }) {
          Image($r('app.media.tree'))
            .width(50)
            .backgroundColor('#efefef')
            .borderRadius(5)
          Image($r('app.media.ic_arrow_right'))
            .width(20)
            .fillColor('#999')
        }
        .padding({
          left: 15,
          right: 15
        })
      }
      .justifyContent(FlexAlign.SpaceBetween)
      .width('100%')
      .height(80)
      .backgroundColor('#fff')
      .borderRadius(5)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ccc')
    .padding(10)
  }
}