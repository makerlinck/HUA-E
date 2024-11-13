export  class CollectBoxItemModel {
  title: string | Resource;
  origin: string | Resource;
  image: Resource;
  target:  string;

  constructor(image: Resource ,title: string | Resource,origin: string | Resource,target: string) {
    this.title = title;
    this.origin = origin;
    this.image = image;
    this.target = target;
  }
}
