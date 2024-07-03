$(document).ready(function() {
  $('#snippet_tag_ids_all').change(function() {
    var isChecked = $(this).is(':checked');
    $('.tag-selector').prop('checked', isChecked);
  });

  $('.tag-selector').change(function() {
    var allChecked = true;
    $('.tag-selector').each(function() {
      if (!$(this).is(':checked')) {
        allChecked = false;
        return false; // Exit the loop early if any checkbox is not checked
      }
    });
    $('#snippet_tag_ids_all').prop('checked', allChecked);
  });
});
