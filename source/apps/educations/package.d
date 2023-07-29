module apps.educations;

mixin(ImportPhobos!());

public { // required uim libraries
  import uim.core;
  import uim.oop;
  import uim.apps;
}

public { // admin-educations libraries
  import apps.educations.controllers;
  import apps.educations.helpers;
  import apps.educations.routers;
  import apps.educations.tests;
  import apps.educations.views;
}

static this() {
  auto myApp = App("educationsApp", "apps/educations");

  with (myApp) {
    importTranslations;
    addControllers([
      "edu.index": IndexPageController
    ]);
    addRoutes(
      Route("", HTTPMethod.GET, controller("edu.index")),
      Route("/", HTTPMethod.GET, controller("edu.index"))
    );
  }

  AppRegistry.register("apps.educations", myApp);
}