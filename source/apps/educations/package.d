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
  AppRegistry.register("apps.educations",   
    App("educationsApp", "/apps/educations")
      .importTranslations()
      .addRoutes(
        Route("", HTTPMethod.GET, IndexPageController),
        Route("/", HTTPMethod.GET, IndexPageController)
      )
    );
}