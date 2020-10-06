(function(){
  "use strict";

  angular
    .module("city-spa.cities")
    .factory("city-spa.cities.City", CityFactory);

  CityFactory.$inject = ["$resource", "city-spa.APP_CONFIG"];
  function CityFactory($resource, APP_CONFIG){
    return $resource(APP_CONFIG.server_url + "/api/cities/:id",
      { id: '@id' },
      {
        update: { method: "PUT",
                  transformRequest: buildNestedBody },
        save:   { method: "POST",
                  transformRequest: buildNestedBody }
      }
    );
  }

  //nests the default payload below a "city" elements
  //as required by default by Rails API resources
  function buildNestedBody(data){
    return angular.toJson({city: data})
  }

})();
