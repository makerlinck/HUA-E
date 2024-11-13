import { ListItemModel } from './ListItem'

export function initList():ListItemModel[] {
  let listItemArray: ListItemModel[] = [];
  ListTitleData.forEach((item: ListItemModel) => {
    listItemArray.push(new ListItemModel(item.image,item.title,item.target));
  })
  return listItemArray;
}

const ListTitleData: ListItemModel[] = [
  new ListItemModel($r('app.media.more'),$r('app.string.setting_general'),''),
  new ListItemModel($r('app.media.more'),$r('app.string.setting_account'),''),
  new ListItemModel($r('app.media.more'),$r('app.string.setting_message'),''),
  new ListItemModel($r('app.media.more'),$r('app.string.setting_about'),'pages/Sys/SysInfoPage'),
];