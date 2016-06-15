$(function(){

  mermaid.initialize({startOnLoad:true});

  var mermaid_str = '';
  $("code.mermaid.syntaxhl").each(function() {
    mermaid_str = $(this).children("span.CodeRay").text();
    $(this).replaceWith('<div class="mermaid">' + mermaid_str + '</div>');
  });
});
