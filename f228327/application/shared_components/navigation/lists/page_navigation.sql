prompt --application/shared_components/navigation/lists/page_navigation
begin
--   Manifest
--     LIST: Page Navigation
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.3'
,p_default_workspace_id=>38702546320165184656
,p_default_application_id=>228327
,p_default_id_offset=>0
,p_default_owner=>'WKSP_BUGBYTE'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(38771178681436745900)
,p_name=>'Page Navigation'
,p_list_status=>'PUBLIC'
,p_version_scn=>15569487385297
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38771179060517745901)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Habits'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38771179428587745901)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Follow'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
