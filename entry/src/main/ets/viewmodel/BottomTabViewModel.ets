import {BottomTabModel} from './BottomTabItem';

export function initTabTuData(): BottomTabModel[] {
  let tabTuDataArray: BottomTabModel[] = [];
  TabTuItemData.forEach((item: BottomTabModel) => {
    tabTuDataArray.push(new BottomTabModel(item.defaultImage, item.selectImage, item.title, item.middleMode));
  })
  return tabTuDataArray;
}

const TabTuItemData: BottomTabModel[] = [
  new BottomTabModel($r('app.media.home'), $r('app.media.activeHome'), $r('app.string.tab_homepage')),
  new BottomTabModel($r('app.media.star'), $r('app.media.activeStar'), $r("app.string.discover")),
  new BottomTabModel($r("app.media.active_ai"), $r('app.media.active_ai'), '', true),
  new BottomTabModel($r('app.media.message'), $r('app.media.activeMessage'), $r('app.string.message')),
  new BottomTabModel($r('app.media.people'), $r('app.media.activePeople'),$r('app.string.tab_mine'))
];

