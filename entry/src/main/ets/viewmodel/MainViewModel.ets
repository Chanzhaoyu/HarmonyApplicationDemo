import ItemData from './ItemData';

export class MainViewModel {
  getSwiperImages(): Array<Resource> {
    let swiperImages: Resource[] = [
      $r('app.media.banner_pic1'),
      $r('app.media.banner_pic2'),
      $r('app.media.banner_pic3'),
      $r('app.media.banner_pic4'),
      $r('app.media.banner_pic5'),
    ];
    return swiperImages;
  }

  getHotData(): Array<ItemData> {
    let hotData: ItemData[] = [
      new ItemData(
        'MetaBook D 16 SE版',
        '2024 13代酷睿i5 16GB 1TB 14英寸护眼全面屏',
        $r('app.media.enablement_pic1')
      ),
      new ItemData(
        'MetaBook D 16 SE版',
        '2024 13代酷睿i5 16GB 1TB 14英寸护眼全面屏',
        $r('app.media.enablement_pic2')
      ),
      new ItemData(
        'MetaBook D 16 SE版',
        '2024 13代酷睿i5 16GB 1TB 14英寸护眼全面屏',
        $r('app.media.enablement_pic3')
      ),
      new ItemData(
        'MetaBook D 16 SE版',
        '2024 13代酷睿i5 16GB 1TB 14英寸护眼全面屏',
        $r('app.media.enablement_pic4')
      ),
      new ItemData(
        'MetaBook D 16 SE版',
        '2024 13代酷睿i5 16GB 1TB 14英寸护眼全面屏',
        $r('app.media.enablement_pic5')
      ),
      new ItemData(
        'MetaBook D 16 SE版',
        '2024 13代酷睿i5 16GB 1TB 14英寸护眼全面屏',
        $r('app.media.enablement_pic6')
      ),
      new ItemData(
        'MetaBook D 16 SE版',
        '2024 13代酷睿i5 16GB 1TB 14英寸护眼全面屏',
        $r('app.media.enablement_pic7')
      ),
      new ItemData(
        'MetaBook D 16 SE版',
        '2024 13代酷睿i5 16GB 1TB 14英寸护眼全面屏',
        $r('app.media.enablement_pic8')
      ),
    ]
    return hotData;
  }

  getRecommendData(): Array<ItemData> {
    let recommendData: ItemData[] = [
      new ItemData(
        'MetaBook E Go 性能版',
        'WIFI 16GB+1TB 星云灰 华为夏季全场景新品发布会',
        $r('app.media.tutorial_pic1')
      ),
      new ItemData(
        'MetaBook E Go 性能版',
        'WIFI 16GB+1TB 星云灰 华为夏季全场景新品发布会',
        $r('app.media.tutorial_pic2')
      ),
      new ItemData(
        'MetaBook E Go 性能版',
        'WIFI 16GB+1TB 星云灰 华为夏季全场景新品发布会',
        $r('app.media.tutorial_pic3')
      ),
      new ItemData(
        'MetaBook E Go 性能版',
        'WIFI 16GB+1TB 星云灰 华为夏季全场景新品发布会',
        $r('app.media.tutorial_pic4')
      ),
      new ItemData(
        'MetaBook E Go 性能版',
        'WIFI 16GB+1TB 星云灰 华为夏季全场景新品发布会',
        $r('app.media.tutorial_pic5')
      ),
      new ItemData(
        'MetaBook E Go 性能版',
        'WIFI 16GB+1TB 星云灰 华为夏季全场景新品发布会',
        $r('app.media.tutorial_pic6')
      ),
      new ItemData(
        'MetaBook E Go 性能版',
        'WIFI 16GB+1TB 星云灰 华为夏季全场景新品发布会',
        $r('app.media.tutorial_pic7')
      ),
      new ItemData(
        'MetaBook E Go 性能版',
        'WIFI 16GB+1TB 星云灰 华为夏季全场景新品发布会',
        $r('app.media.tutorial_pic8')
      ),
      new ItemData(
        'MetaBook E Go 性能版',
        'WIFI 16GB+1TB 星云灰 华为夏季全场景新品发布会',
        $r('app.media.tutorial_pic9')
      ),
      new ItemData(
        'MetaBook E Go 性能版',
        'WIFI 16GB+1TB 星云灰 华为夏季全场景新品发布会',
        $r('app.media.tutorial_pic10')
      ),
    ];
    return recommendData;
  }
}

export default new MainViewModel();