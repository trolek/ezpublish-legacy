{* DO NOT EDIT THIS FILE! Use an override template instead. *}
{let selected_id_array=$attribute.content
     doshow=false}
{section var=Options loop=$attribute.class_content.options}{section show=$selected_id_array|contains( $Options.item.id )}{section show=$doshow|eq( true )}<br/>{/section}{$Options.item.name|wash( xhtml )}{set doshow=true}{/section}{/section}
{/let}
