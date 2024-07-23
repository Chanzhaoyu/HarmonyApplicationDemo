import mainViewModel from '../viewmodel/MainViewModel';
import ItemData from '../viewmodel/ItemData';

@Component
export default struct Home {
  private swiperController: SwiperController = new SwiperController();
  private scroller: Scroller = new Scroller()

  build() {
    Scroll() {
      Column({ space: 12 }) {
        Text('首页')
          .fontWeight(FontWeight.Medium)
          .fontSize('24fp')
          .margin({ top: '24vp' })
          .width('100%')

        Swiper(this.swiperController) {
          ForEach(mainViewModel.getSwiperImages(), (img: Resource) => {
            Image(img).borderRadius($r('sys.float.corner_radius_level6'))
          }, (img: Resource) => JSON.stringify(img.id))
        }
        .autoPlay(true)

        Text('热门商品')
          .fontSize('16fp')
          .fontWeight(FontWeight.Medium)
          .width('100%')
          .margin({ top: '12vp' })

        Grid(this.scroller) {
          ForEach(mainViewModel.getHotData(), (item: ItemData) => {
            GridItem() {
              Column() {
                Image(item.img)
                  .width('100%')
                  .height('80vp')
                  .alt(item.title)

                Column() {
                  Text(item.title)
                    .fontSize('14fp')
                    .margin({ top: '12vp' })
                    .maxLines(1)
                    .textOverflow({ overflow: TextOverflow.Ellipsis })

                  Text(item.description)
                    .fontSize('10fp')
                    .margin({ top: '6vp' })
                    .lineHeight('16vp')
                    .fontColor('#999')
                    .maxLines(2)
                    .textOverflow({ overflow: TextOverflow.Ellipsis })

                }
                .alignItems(HorizontalAlign.Start)
              }
              .padding($r('sys.float.corner_radius_level6'))
              .backgroundColor('#fff')
              .borderRadius($r('sys.float.corner_radius_level5'))
              .width('100%')
            }
            .width(160)
          }, (item: ItemData) => JSON.stringify(item))
        }
        .rowsTemplate('1fr')
        .width('100%')
        .height(180)
        .columnsGap('12vp')

        Text('精选商品')
          .fontSize('16fp')
          .fontWeight(FontWeight.Medium)
          .width('100%')
          .margin({ top: '12vp' })

        List() {
          ForEach(mainViewModel.getRecommendData(), (item: ItemData) => {
            ListItem() {
              Row() {
                Column({ space: '12vp' }) {
                  Text(item.title)
                    .fontSize('14fp')
                    .maxLines(1)
                    .textOverflow({ overflow: TextOverflow.Ellipsis })

                  Text(item.description)
                    .fontSize('10fp')
                    .lineHeight('16vp')
                    .fontColor('#999')
                    .maxLines(2)
                    .textOverflow({ overflow: TextOverflow.Ellipsis })
                }
                .alignItems(HorizontalAlign.Start)
                .layoutWeight(1)
                .margin({ right: '12vp' })

                Image(item.img)
                  .width('60vp')
                  .height('60vp')
                  .alt(item.title)
              }
              .padding('12vp')
              .backgroundColor('#fff')
              .borderRadius($r('sys.float.corner_radius_level5'))
              .width('100%')
              .justifyContent(FlexAlign.SpaceBetween)
            }.margin({ bottom: '12vp' })

          }, (item: ItemData) => JSON.stringify(item))
        }
        .width('100%')
      }
    }
    .scrollBar(BarState.Off)
    .height('100%')
  }
}