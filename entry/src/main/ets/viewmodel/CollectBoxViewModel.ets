import { CollectBoxItemModel as Box } from "./CollectBoxItem";

export function initBoxData(): Box[] {
  let boxDataArray: Box[] = [];
  BoxData.forEach((item: Box) => {
    boxDataArray.push(new Box(item.image,item.title,item.origin,item.target));
  })
  return boxDataArray;
}

const BoxData: Box[] = [
];