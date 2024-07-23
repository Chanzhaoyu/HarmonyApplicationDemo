import Home from '../views/home'
import Sorter from '../views/sorter'
import Mine from '../views/mine'

@Entry
@Component
struct Index {
  @State currentIndex: number = 0;
  private tabsController: TabsController = new TabsController();

  @Builder
  TabBuilder(title: string, index: number, selectedImg: Resource, normalImg: Resource) {
    Column() {
      Image(this.currentIndex === index ? selectedImg : normalImg)
        .width('25vp')
        .height('25vp')

      Text(title)
        .margin({ top: '4vp' })
        .fontSize('10fp')
        .fontColor(this.currentIndex === index ? '#0a59f7' : '#6B6B6B')
    }
    .justifyContent(FlexAlign.Center)
    .height('56vp')
    .width('100%')
    .onClick(() => {
      this.currentIndex = index;
      this.tabsController.changeIndex(this.currentIndex);
    })
  }

  build() {
    Tabs({
      barPosition: BarPosition.End,
      controller: this.tabsController
    }) {
      TabContent() {
        Home()
      }.padding({ left: '12vp', right: '12vp' })
      .backgroundColor('#F1F3F5')
      .tabBar(this.TabBuilder('首页', 0, $r('app.media.home_selected'), $r('app.media.home_normal')))

      TabContent() {
        Sorter()
      }.padding({ left: '12vp', right: '12vp' })
      .backgroundColor('#F1F3F5')
      .tabBar(this.TabBuilder('分类', 1, $r('app.media.sorter_selected'), $r('app.media.sorter_normal')))

      TabContent() {
        Mine()
      }.padding({ left: '12vp', right: '12vp' })
      .backgroundColor('#F1F3F5')
      .tabBar(this.TabBuilder('我的', 2, $r('app.media.mine_selected'), $r('app.media.mine_normal')))
    }
  }
}