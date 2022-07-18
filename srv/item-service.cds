using { sap.ui.itemList as my } from '../db/schema';
@path: 'service/item'
service ItemService {
  entity Items as projection on my.Items;
    annotate Items with @odata.draft.enabled;
}