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
      Column() {
        Image($r('app.media.nick'))
          .width('100%')
          .borderRadius({
            topLeft: 5,
            topRight: 5
          })
        Text('今晚吃这个 | 每日艺术分享 No.43')
          .fontSize(14)
          .fontWeight(600)
          .lineHeight(22)
          .height(60)
        Row() {
          Row({
            space: 5
          }) {
            Image($r('app.media.user'))
              .width(16)
              .borderRadius(8)
            Text('插画师分享聚集地')
              .fontSize(10)
          }
          .layoutWeight(1)
          Row({
            space: 5
          }) {
            Image($r('app.media.ic_like'))
              .width(12)
              .fillColor('#999')
            Text('2300')
              .fontSize(10)
              .fontColor('#666')
          }
        }
        .justifyContent(FlexAlign.SpaceBetween)
        .width('100%')
        .padding({
          left: 15,
          right: 15
        })
      }
      .width(200)
      .backgroundColor('#fff')
      .padding({
        bottom: 10
      })
    }
    .padding(10)
    .width('100%')
    .height('100%')
    .backgroundColor('#ccc')
  }
}