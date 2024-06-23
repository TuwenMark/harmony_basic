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
      // 顶部区域
      Row() {
        Image($r('app.media.jd_cancel'))
          .width(20)
        Text('帮助')
      }
      .justifyContent(FlexAlign.SpaceBetween)
      .width('100%')
      // LOGO图标
      Image($r('app.media.jd_logo'))
        .width(250)
        .height(250)
      // 国家/地址
      Row() {
        Text('国家/地址')
          .layoutWeight(1)
          .fontColor('#666')
        Text('中国(+86)')
          .fontColor('#666')
        Image($r('app.media.jd_right'))
          .width(20)
      }
      .width('100%')
      .height(40)
      .borderRadius(20)
      .backgroundColor('#fff')
      .padding({
        left: 15,
        right: 10
      })
      // 手机号
      TextInput({
        placeholder: '请输入手机号'
      })
        .width('100%')
        .height(40)
        .borderRadius(20)
        .backgroundColor('#fff')
        .placeholderColor('#666')
        .margin({
          top: 20,
          bottom: 20
        })
      // 隐私申明
      Row() {
        Checkbox()
          .width(10)
          .margin({
            top: 7
          })
        Text() {
          Span('我已经阅读并同意')
          Span('《京东隐私政策》').fontColor('#3274f6')
          Span('《京东用户服务协议》').fontColor('#3274f6')
          Span('未注册的手机号将自动创建京东账号')
        }
        .fontSize(12)
        .fontColor('#666')
        .lineHeight(20)
      }
      .alignItems(VerticalAlign.Top)
      // 登录
      Button('登录')
        .width('100%')
        .margin({
          top: 25,
          bottom: 15
        })
        .backgroundColor('#bf2838')
      // 注册等链接
      Row({
        space: 25
      }) {
        Text('新用户注册')
          .fontSize(14)
          .fontColor('#666')
        Text('账号密码登录')
          .fontSize(14)
          .fontColor('#666')
        Text('无法登录')
          .fontSize(14)
          .fontColor('#666')
      }

      // !!! 自适应弹簧组件：填充组件 —— 填充空白区域
      Blank()

      // 底部其他登录方式: 它和上面的组件有一段的距离，而且这个距离是自适应的，所以这个是单独的一个组件
      Column() {
        Text('其他登录方式').height(22).fontSize(14).fontColor('#666')
        Row() {
          Image($r('app.media.jd_huawei')).width(34)
          Image($r('app.media.jd_wechat')).width(34).fillColor('#379542')
          Image($r('app.media.jd_weibo')).width(34).fillColor('#a44137')
          Image($r('app.media.jd_QQ')).width(34).fillColor('#17a2e8')
        }
        .width('100%')
        .margin({
          top: 28,
          bottom: 30
        })
        .justifyContent(FlexAlign.SpaceAround)
      }
    }
    .width('100%')
    .height('100%')
    .padding(20)
    .backgroundImage($r('app.media.jd_login_bg'))
    .backgroundImageSize(ImageSize.Cover)
  }
}