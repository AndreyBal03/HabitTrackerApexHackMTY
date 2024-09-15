prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 228327
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.3'
,p_default_workspace_id=>38702546320165184656
,p_default_application_id=>228327
,p_default_id_offset=>0
,p_default_owner=>'WKSP_BUGBYTE'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(38771061263424745150)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.1'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(38770770934054744951)
,p_default_dialog_template=>wwv_flow_imp.id(38770762651797744948)
,p_error_template=>wwv_flow_imp.id(38770746141804744942)
,p_printer_friendly_template=>wwv_flow_imp.id(38770770934054744951)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(38770746141804744942)
,p_default_button_template=>wwv_flow_imp.id(38770970077972745026)
,p_default_region_template=>wwv_flow_imp.id(38770896484837744988)
,p_default_chart_template=>wwv_flow_imp.id(38770896484837744988)
,p_default_form_template=>wwv_flow_imp.id(38770896484837744988)
,p_default_reportr_template=>wwv_flow_imp.id(38770896484837744988)
,p_default_tabform_template=>wwv_flow_imp.id(38770896484837744988)
,p_default_wizard_template=>wwv_flow_imp.id(38770896484837744988)
,p_default_menur_template=>wwv_flow_imp.id(38770908849838744994)
,p_default_listr_template=>wwv_flow_imp.id(38770896484837744988)
,p_default_irr_template=>wwv_flow_imp.id(38770886604003744983)
,p_default_report_template=>wwv_flow_imp.id(38770934803797745007)
,p_default_label_template=>wwv_flow_imp.id(38770967525710745024)
,p_default_menu_template=>wwv_flow_imp.id(38770971644756745027)
,p_default_calendar_template=>wwv_flow_imp.id(38770971716755745027)
,p_default_list_template=>wwv_flow_imp.id(38770951443297745015)
,p_default_nav_list_template=>wwv_flow_imp.id(38770963220744745022)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(38770963220744745022)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(38770957853626745019)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(38770791403846744957)
,p_default_dialogr_template=>wwv_flow_imp.id(38770786756982744956)
,p_default_option_label=>wwv_flow_imp.id(38770967525710745024)
,p_default_required_label=>wwv_flow_imp.id(38770968859201745025)
,p_default_navbar_list_template=>wwv_flow_imp.id(38770957454664745019)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/24.1/')
,p_files_version=>65
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/
