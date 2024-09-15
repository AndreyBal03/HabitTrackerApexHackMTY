prompt --application/pages/page_00020
begin
--   Manifest
--     PAGE: 00020
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.3'
,p_default_workspace_id=>38702546320165184656
,p_default_application_id=>228327
,p_default_id_offset=>0
,p_default_owner=>'WKSP_BUGBYTE'
);
wwv_flow_imp_page.create_page(
 p_id=>20
,p_name=>'Calendar'
,p_alias=>'CALENDAR'
,p_step_title=>'Calendar'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.event-yes {',
'    background-color: #28a745;',
'    color: white; ',
'}',
'',
'.event-no {',
'    background-color: #C22309;',
'    color: white; ',
'}',
'',
'.event-default {',
'    background-color: #6c757d; /* Gris para casos por defecto */',
'    color: white; /* Color del texto */',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'08'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38886674109857667139)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(38770908849838744994)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(38770727316539744933)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(38770971644756745027)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38886674833869667140)
,p_plug_name=>'Calendar'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(38770896484837744988)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    e.HABIT_ID, ',
'    e.FOLLOW_DATE, ',
'    u.NAME AS NAME,',
'    CASE ',
'        WHEN e.DONE = ''YES'' THEN ',
'        ''event-yes'' ',
'        WHEN e.DONE = ''NO'' THEN ''event- ',
'        no'' ',
'        ELSE ''event-default'' ',
'    END AS css_class',
'FROM ',
'    SM_FOLLOWS e',
'JOIN ',
'    SM_HABITS u ',
'ON ',
'    e.HABIT_ID = u.ID;',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'additional_calendar_views', 'list:navigation',
  'css_class', 'CSS_CLASS',
  'display_column', 'NAME',
  'end_date_column', 'FOLLOW_DATE',
  'event_sorting', 'AUTOMATIC',
  'maximum_events_day', '10',
  'multiple_line_event', 'Y',
  'show_time', 'N',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'FOLLOW_DATE')).to_clob
);
wwv_flow_imp.component_end;
end;
/
