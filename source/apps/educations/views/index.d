/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module apps.educations.views.index;

import apps.educations;
@safe:

class DEDUIndexView : DView {
  mixin(ViewThis!("EDUIndexView"));

  override DH5Obj[] toH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DEDUIndexView~":DEDUIndexView("~this.name~")::toH5");
    super.toH5(options);

    return [
      H5Div("APP Educations -> Error")
    ].toH5;
  }
}
mixin(ViewCalls!("EDUIndexView"));
