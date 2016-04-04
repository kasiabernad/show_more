$("#" + "<%=params[:partial]%>").replaceWith('<%= escape_javascript(render(:partial => "#{params[:collection]}/#{params[:partial]}")) %>');
$("#" + "<%=params[:partial]%>"+ "_show_more").hide();