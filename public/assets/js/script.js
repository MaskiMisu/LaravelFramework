var app = {};
(function(application){
  application.TILE_SIZE = 256,
  application.init = function (){
    tinymce.init({
      selector: "textarea#content",
      theme: "modern",
      height: 300,
      plugins: [
      "advlist autolink link image lists charmap print preview hr anchor pagebreak",
      "searchreplace wordcount visualblocks visualchars insertdatetime media nonbreaking spellchecker",
      "table contextmenu directionality emoticons paste textcolor code"
      ],
      relative_urls: false,
      filemanager_title:"Upload image",
      filemanager_crossdomain: true,
      external_filemanager_path: APP_URL + "library/filemanager/",
      external_plugins: {"filemanager" : APP_URL + "library/filemanager/plugin.min.js" } ,
      image_advtab: true,
      toolbar1: "undo redo | bold italic underline | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | styleselect",
      toolbar2: " | image | media | link unlink anchor | print preview | code"
    });
    tinymce.init({
      selector: "textarea#short",
      theme: "modern",
      height: 300,
      plugins: [
      "advlist autolink link image lists charmap print preview hr anchor pagebreak",
      "searchreplace wordcount visualblocks visualchars insertdatetime media nonbreaking spellchecker",
      "table contextmenu directionality emoticons paste textcolor code"
      ],
      relative_urls: false,
      filemanager_title:"Upload image",
      filemanager_crossdomain: true,
      external_filemanager_path: APP_URL + "library/filemanager/",
      external_plugins: {"filemanager" : APP_URL + "library/filemanager/plugin.min.js" } ,
      image_advtab: true,
      toolbar1: "undo redo | bold italic underline | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | styleselect",
      toolbar2: " | image | media | link unlink anchor | print preview | code"
    });
    $('#picture').change(function(){
      app.readURL(this);
    });
    $('#picture_other').change(function(){
      app.readURL(this, 'other');
    });
    $( "#sortable" ).sortable({});
    $( "#sortable" ).disableSelection();
  },
  application.checkAll = function(){
    var ids = document.getElementsByName('ids[]');
    $("#checkAll").change(function(){
      for (var i = 0; i < ids.length; i++) {
        $(ids[i]).prop('checked', $(this).prop("checked"));
      }

    });
  },
  application.readURL = function (input,type) {
    if(type == 'other'){
      $('#pictureOtherTmp').empty();
    }else{
      $('#pictureTmp').empty();
    }
    if(input.files.length > 1){
      console.log(input.files.length);
      for (var i = 0; i < input.files.length; i++) {
       if (input.files[i]) {
          var reader = new FileReader();
          reader.onload = function (e) {
            var picture = '<div style="border: 1px solid #d3e0e9; padding: 5px;display:inline-block;margin: 5px"><img src="'+e.target.result+'" style="width: 100px; height: 100px;"></div>';
            if(type == 'other'){
              $('#pictureOtherTmp').append(picture);
            }else{
              $('#pictureTmp').append(picture);
            }
          }
          reader.readAsDataURL(input.files[i]);
        }
      }
    }else{
      if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
          var picture = '<div style="border: 1px solid #d3e0e9; padding: 5px;display:inline-block;margin: 5px"><img src="'+e.target.result+'" style="width: 100px; height: 100px;"></div>';
          if(type == 'other'){
            $('#pictureOtherTmp').append(picture);
          }else{
            $('#pictureTmp').append(picture);
          }
        }
        reader.readAsDataURL(input.files[0]);
      }
    }

  }
  app.countChar = function(ele){
    var str = $(ele).val();
    $(ele).closest('.form-group').find('.bind-char').text(str.length);
  },
  app.removeImage = function(ele, id){
    $.ajax({
      type : "POST",
      url : APP_URL + "/backend/ajax/product/removeImage",
      dataType: 'JSON',
      data : {
          'id' : id,
          "_token" : $('input[name=_token]').val()
      },
      success : function(response) {
        $(ele).closest('.image-item').remove();
        $.notify({
          title: '<strong>'+response.title+' !!!</strong>',
          message: response.message
        },{type: (response.status == 0) ? 'danger' : 'success'});
      }
    });
  },
  app.showImage = function(ele){
    var url = $(ele).data('url');
    $('#productImageShowModal img').attr('src', url);
    $('#productImageShowModal').modal('show');
  },
  app.editImage = function(ele){
    var url = $(ele).data('url');
    var title = $(ele).data('title');
    var id = $(ele).data('id');
    $('#productImageEditModal img').attr('src', url);
    $('#productImageEditModal #alt').val(title);
    $('#productImageEditModal #imageId').val(id);
    $('#productImageEditModal').modal('show');
  },
  app.editImageHandle = function(id){
    var alt = $('#alt').val();
    $.ajax({
      type : "POST",
      url : APP_URL + "backend/ajax/product/editAlt",
      dataType: 'JSON',
      data : {
          'id' : id,
          'alt' : alt,
          "_token" : $('input[name=_token]').val()
      },
      success : function(response) {
        $('#productImageEditModal').modal('hide');
        $('.image-list #image_'+ id).find('.aEdit').data('title', alt);
        $.notify({
          title: '<strong>'+response.title+' !!!</strong>',
          message: response.message
        },{type: (response.status == 0) ? 'danger' : 'success'});
      }
    });
  },
  application.addLink = function(){
    var html = $('#links-dup #links-row').clone();
    $('.list-links .empty_row').addClass('hide');
    $('.list-links').append(html);
  },
  application.removeLink = function (ele){
    $(ele).closest('#links-row').remove();
    if($('.list-links #links-row').length == 0){
      $('.list-links .empty_row').removeClass('hide');
    }
  },
  application.changeLink = function(ele){
    var value = $(ele).val();
    value_arr = value.split(';');
    var generateArr = ['product_group', 'product', 'page', 'blog'];
    var html = '';
    if(value_arr[0] == 'web'){
      $(ele).closest('#links-row').find('#link-generate #linksSlug').addClass('hide');
      $(ele).closest('#links-row').find('#link-generate #linksWeb').removeClass('hide');
    }else if(generateArr.indexOf(value_arr[0]) >= 0){
      var url = APP_URL + 'ajax/links/'+ value_arr[0];
      $.ajax({
      type : "POST",
      url : APP_URL + "/backend/ajax/links/"+ value_arr[0],
      dataType: 'JSON',
      data : {
          "_token" : $('input[name=_token]').val()
      },
      success : function(response) {
        if(response.status == 1){
          html = '<option value="">'+ response.choose +'</option>';
          for( row in response.data){
            var item = response.data[row];
            html += '<option value="'+ item['slug'] +'">'+ item['title'] +'</option>'
          }
          $(ele).closest('#links-row').find('#link-generate #linksSlug').empty();
          $(ele).closest('#links-row').find('#link-generate #linksSlug').append(html);
        }
      }
    });

      $(ele).closest('#links-row').find('#link-generate #linksWeb').addClass('hide');
      $(ele).closest('#links-row').find('#link-generate #linksSlug').removeClass('hide');
    }else{
      $(ele).closest('#links-row').find('#link-generate #linksWeb').addClass('hide');
      $(ele).closest('#links-row').find('#link-generate #linksSlug').addClass('hide');
    }
  },
  application.getMap = function(ele){
    var address = $(ele).val();
    $.ajax({
      type : "POST",
      url : APP_URL + "/backend/ajax/contact_maps/getmap",
      dataType: 'JSON',
      data : {
          "address" : address,
          "_token" : $('input[name=_token]').val()
      },
      success : function(response) {
        if(response.status == 1){
          $(ele).val(response.data.formatted_address);
          $('#lat').val(response.data.lat);
          $('#lng').val(response.data.lng);
          application.initMap(response.data.lat, response.data.lng, response.data.formatted_address)
        }
      }
    });
  },
  application.initMap = function (lat, lng, formatted_address){
    var chicago = new google.maps.LatLng(lat, lng);
    var map = new google.maps.Map(document.getElementById('map'), {
      center: chicago,
      zoom: 16,
    });

    var coordInfoWindow = new google.maps.InfoWindow();
    coordInfoWindow.setContent(application.createInfoWindowContent(chicago, map.getZoom(), formatted_address));
    coordInfoWindow.setPosition(chicago);
    coordInfoWindow.open(map);

    map.addListener('zoom_changed', function() {
      coordInfoWindow.setContent(application.createInfoWindowContent(chicago, map.getZoom(), formatted_address));
      coordInfoWindow.open(map);
    });
  },
  application.createInfoWindowContent = function(latLng, zoom, formatted_address){
    var scale = 1 << zoom;
    var worldCoordinate = application.project(latLng);
    var pixelCoordinate = new google.maps.Point(
        Math.floor(worldCoordinate.x * scale),
        Math.floor(worldCoordinate.y * scale));
    var tileCoordinate = new google.maps.Point(
        Math.floor(worldCoordinate.x * scale / application.TILE_SIZE),
        Math.floor(worldCoordinate.y * scale / application.TILE_SIZE));
    return [formatted_address].join('<br>');
  },
  application.project = function(latLng){
    var siny = Math.sin(latLng.lat() * Math.PI / 180);
    siny = Math.min(Math.max(siny, -0.9999), 0.9999);
    return new google.maps.Point(
        application.TILE_SIZE * (0.5 + latLng.lng() / 360),
        application.TILE_SIZE * (0.5 - Math.log((1 + siny) / (1 - siny)) / (4 * Math.PI)));
  }
})(app);
app.checkAll();
app.init();


