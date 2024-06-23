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
        Image($r('app.media.ic_arrow_left'))
          .width(30)
        Text('个人中心')
        Image($r('app.media.ic_more'))
          .width(25)
      }
      .justifyContent(FlexAlign.SpaceBetween)
      .padding({
        left: 10,
        right: 10
      })
      .width('100%')
      .height(40)
      .backgroundColor(Color.White)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#ccc')
  }
}