// For more information see: http://emberjs.com/guides/routing/

App.GroupsRoute = Ember.Route.extend({
  model: function() {
    return this.store.find('group');
  }
});
