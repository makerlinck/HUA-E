
import { SearchBar } from './SearchBarComponent'
import { Constants } from '../common/Constants'

@Component
struct Discover {

  build() {
    Row () {
      SearchBar()
        .margin(Constants.MARGIN_SIXTEEN)

      List() {
        ListItem()
      }
    }.width('100%').height('100%')
  }

}

export {Discover}