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
      Image($r('app.media.m_user')).width(100)
      Text('大王叫我来巡山').fontWeight(700).margin({
        top: 10,
        bottom: 40
      })
      Button('QQ登录').width('100%').margin({
        bottom: 10
      })
      Button('微信登录').width('100%').backgroundColor('#ddd').fontColor('#000')
    }.width('100%').padding(20)
  }
}