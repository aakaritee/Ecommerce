document.addEventListener("turbolinks:load", function(){

    var BookImage = document.querySelector('.book-image');

    function handleFileSelect(evt) {
        var files = evt.target.files;

        //Loop through the filelist and render image files as thumbnails.
        for (var i = 0, f; f = files[i]; i++) {

            if (!f.type.match('image.*')) {
                continue;
            }

            var reader = new FileReader();

            //Closure
            reader.onload = (function (theFile) {
                return function (e) {
                    var span = document.createElement('span');
                    span.innerHTML = ['<img class="instrument-preview-thumb" sec="',
                        e.target.result, '"title="', escape(theFile.name), '"/>'].join('');
                    document.getElementById('list').insertBefore(span, null);
                };
            })(f);

            //Read in the image file as a data URL
            reader.readAsDataURL(f);
        }
    }

    if (bookImage) {
        this.addEventListener('change', handleFileSelect, false);
    }
});
