// いらなくなった。

// $(function(){
//   $fileField = $('#upload-icon')

//   $($fileField).on('change', $fileField, function(e) {
//     file = e.target.files[0]
//     reader = new FileReader(),
//     $preview = $(".account-page__inner--icon__input__image2");

//     reader.onload = (function(file) {
//       return function(e) {
//         $preview.empty();
//         $preview.append($('<img>').attr({
//           src: e.target.result,
//           width: "100%",
//           class: "preview",
//           title: file.name
//         }));
//       };
//     })(file);
//     reader.readAsDataURL(file);
//   });
// });