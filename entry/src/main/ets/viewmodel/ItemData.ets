export default class PageResource {
  title: string;
  description: string;
  img: Resource;

  constructor(title: string, description: string, img: Resource,) {
    this.title = title;
    this.img = img;
    this.description = description;
  }
}