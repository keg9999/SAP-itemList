using { sap.ui.itemList as my } from '../db/schema';
@path: 'service/item'
service ItemService {
  entity Items @(restrict : [
  {
      grant : ['READ'],
      to : ['ItemViewer']
  },
  {
      grant : [ '*' ],
      to : ['ItemManager']
  }
  ])as projection on my.Items;
    annotate Items with @odata.draft.enabled;
}