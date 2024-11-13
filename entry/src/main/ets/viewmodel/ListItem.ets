
export  class ListItemModel {
  title: string | Resource;
  image:Resource;
  target: string;

  constructor(image: Resource ,title: string | Resource,target: string) {
    this.title = title;
    this.image = image;
    this.target = target;
  }
}
