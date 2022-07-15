namespace sap.ui.itemList;
using { managed } from '@sap/cds/common';

  entity Items : managed {
    key Code      : UUID  @(Core.Computed : true);
    name          : String(10);
    item01        : String(20);
    item02        : String(20);
    item03        : String(20);
    item04        : String(20);
    item05        : String(20);
    item06        : String(20);
    item07        : String(20);
    item08        : String(20);
    item09        : String(20);
    item10        : String(20);
  }