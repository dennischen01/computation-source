App = {
  web3Provider: null,
  contracts: {},

  init: async function() {
    // Load pets.
    $.getJSON('../source.json', function(data) {
      var sourceRow = $('#sourceRow');
      var sourceTemplate = $('#sourceTemplate');

      for (i = 0; i < data.length; i ++) {
        sourceTemplate.find('.panel-title').text(data[i].name);
        sourceTemplate.find('img').attr('src', data[i].picture);
        sourceTemplate.find('.pet-owner').text(data[i].owner);
        sourceTemplate.find('.pet-age').text(data[i].age);
        sourceTemplate.find('.pet-location').text(data[i].location);
        sourceTemplate.find('.btn-adopt').attr('data-id', data[i].id);
        sourceRow.append(sourceTemplate.html());
      }
    });

    return await App.initWeb3();
  },

  initWeb3: async function() {
    /*
     * Replace me...
     */

    return App.initContract();
  },

  initContract: function() {
    /*
     * Replace me...
     */

    return App.bindEvents();
  },

  bindEvents: function() {
    $(document).on('click', '.btn-adopt', App.handleAdopt);
  },

  markAdopted: function(adopters, account) {
    /*
     * Replace me...
     */
  },

  handleAdopt: function(event) {
    event.preventDefault();

    var petId = parseInt($(event.target).data('id'));

    /*
     * Replace me...
     */
  }

};

$(function() {
  $(window).load(function() {
    App.init();
  });
});
