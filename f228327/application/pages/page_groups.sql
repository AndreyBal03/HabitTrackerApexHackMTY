prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 228327
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.3'
,p_default_workspace_id=>38702546320165184656
,p_default_application_id=>228327
,p_default_id_offset=>0
,p_default_owner=>'WKSP_BUGBYTE'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(38771087946040745171)
,p_group_name=>'Administration'
);
wwv_flow_imp.component_end;
end;
/
