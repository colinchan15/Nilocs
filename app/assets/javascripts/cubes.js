/* This js allows images to be previewed during upload time on new/edit posts */

// declare event listener that hooks into turbolinks
document.addEventListener("turbolinks:load", function() {

  var cubeImage = document.querySelector('.cube-image');

  // function hooks into filereader api 
  function handleFileSelect(evt) {
    var files = evt.target.files; // FileList object

    // Loop through the FileList and render image files as thumbnails.
    for (var i = 0, f; f = files[i]; i++) {

      // Only process image files.
      if (!f.type.match('image.*')) {
        continue;
      }

      var reader = new FileReader();

      // Closure to capture the file information.
      reader.onload = (function(theFile) {
        return function(e) {
          // Render thumbnail.
          var span = document.createElement('span');
          span.innerHTML = ['<img class="cube-preview-thumb" src="', e.target.result,
            '" title="', escape(theFile.name), '"/>'
          ].join('');
          document.getElementById('list').insertBefore(span, null);
        };
      })(f);
      // Read in the image file as a data URL.
      reader.readAsDataURL(f);
    }
  }

  // waiting for change in event, and then handling with above func
  if (cubeImage) {
    this.addEventListener('change', handleFileSelect, false);
  }

});

