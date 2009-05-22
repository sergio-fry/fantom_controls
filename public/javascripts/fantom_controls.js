jQuery.show_fantom_blocks = function ()
{
  var groups = new Array();
  var group_prefix = "fantom_access_group_";
  
  if(jQuery.cookie("fantom_access_groups"))
  {
    groups = jQuery.cookie("fantom_access_groups").split(",");
  }
  for(var i=0; i<groups.length; i++)
  {
    jQuery(class1="." + group_prefix + groups[i]).each(function(){jQuery(this).show()});
  }

  return true;
}


jQuery(document).ready(
    function() { jQuery.show_fantom_blocks(); }
    );


