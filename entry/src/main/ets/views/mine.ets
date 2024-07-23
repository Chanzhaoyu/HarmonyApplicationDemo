@Component
export default struct Mine {
  build() {
    Scroll() {
      Flex({ justifyContent: FlexAlign.Center, alignItems: ItemAlign.Center }) {
        Text('我的页面')
      }
      .width('100%')
      .height('100%')
      .backgroundColor('#F1F3F5')
    }
    .scrollBar(BarState.Off)
    .height('100%')
  }
}