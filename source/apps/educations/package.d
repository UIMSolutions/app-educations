module apps.educations;

mixin(ImportPhobos!());

public { // required uim libraries
  import uim.core;
  import uim.oop;
  import uim.apps;
}

public { // admin-educations libraries
  import apps.educations.controllers;
  import apps.educations.views;
}
