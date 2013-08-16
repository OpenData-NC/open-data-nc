django.jQuery(document).ready(function($){

    // Removes ':' from form labels.
    $('.form-row label').each(function(){
        $(this).text($(this).text().replace(':', ''));
    });

    // Shows and hides cities and counties dynamically.
    $('#id_agency_type').bind('change', HideShowFields);
    function HideShowFields(evt){
        var options = evt.target,
            value = options.value;
        switch(value){
            case "county":
                $(".field-cities").addClass("hidden");
                $(".field-counties").removeClass("hidden");
                break;
            case "city":
                $(".field-cities").removeClass("hidden");
                $(".field-counties").addClass("hidden");
                break;
            default:
                $(".field-cities").addClass("hidden");
                break;
        }
    }

    $('#id_agency_type').trigger('change');

    // Add department id to division raw id field
    $('#lookup_id_division').bind('mouseover', addDepartmentId);

    function addDepartmentId(evt){
        var newHref;
        var divisionLookupLink = $('#lookup_id_division');
        var href = divisionLookupLink.attr('href');
        var departmentId = $('#id_department').val()
        newHref = updateQueryStringParameter(href, 'department', departmentId)
        divisionLookupLink.attr('href', newHref) // new division lookup link
    };
    function updateQueryStringParameter(uri, key, value) {
        var separator;
        var re = new RegExp("([?|&])" + key + "=.*?(&|$)", "i");
        separator = uri.indexOf('?') !== -1 ? "&" : "?";
        if (uri.match(re)) {
            return uri.replace(re, '$1' + key + "=" + value + '$2');
        }
        else {
            return uri + separator + key + "=" + value;
        }
    }

    $('#id_department').trigger('mouseover');
});