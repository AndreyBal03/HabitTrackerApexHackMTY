prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Db Habits'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.actions.add([{',
'    name: "like",',
'    action: (event, element, args) => {',
'        apex.items.P1_ACTION_ID.value = args.id;',
'        apex.event.trigger(document, ''action-like'');',
'    }',
'}]);',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38445067326071585534)
,p_plug_name=>'Timeline'
,p_region_name=>'timeline'
,p_region_css_classes=>'t-Chat'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(38770798879006744959)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
' p.id,',
' p.created_by AS user_name,',
' p.description AS comment_text,',
' p.picture,',
' p.file_mime,',
'',
' apex_util.get_since(p.created) post_date,',
'',
' (',
'     select count(*) from SM_REACTIONS smr',
'     where smr.post_id=p.id',
' ) as REACTIONS,',
'',
' (',
'     select ''user-has-liked'' from SM_REACTIONS smr',
'     where smr.post_id=p.id and created_by=:APP_USER',
' ) USER_REACTION_CSS',
'',
' from SM_HABITS p',
' where p.status = ''Public''',
'',
'',
' order by p.created desc'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(38445067478209585535)
,p_region_id=>wwv_flow_imp.id(38445067326071585534)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'USER_NAME'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'POST_DATE'
,p_body_adv_formatting=>false
,p_body_column_name=>'COMMENT_TEXT'
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'USER_NAME'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
,p_media_source_type=>'BLOB'
,p_media_blob_column_name=>'PICTURE'
,p_media_display_position=>'FIRST'
,p_media_appearance=>'WIDESCREEN'
,p_media_sizing=>'COVER'
,p_media_css_classes=>'selectDisable'
,p_media_description=>'&COMMENT_TEXT.'
,p_pk1_column_name=>'ID'
,p_mime_type_column_name=>'FILE_MIME'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38445068153586585542)
,p_name=>'action-like'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'action-like'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38445068257353585543)
,p_event_id=>wwv_flow_imp.id(38445068153586585542)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'LIKE - update UI (adjust count + heart color)'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const button = $(''[data-id="''+ apex.items.P1_ACTION_ID.value +''"] .js-heart-button''); // get the card',
'',
'    const label = button.find(''.a-CardView-buttonLabel''); // get the likes count section',
'',
'    const icon = button.find(''.a-CardView-buttonIcon''); // gets the element if its liked already',
'',
'    let likeCount = label.text(); // get the like count',
'',
'    if (icon.hasClass(''user-has-liked'')) {',
'        // user has liked this already, and they are unliking it now -- decrement',
'        label.text(--likeCount);',
'',
'    } else {',
'        // user is liking the post -- increment',
'        label.text(++likeCount);',
'    }',
'',
'    icon.toggleClass(''user-has-liked''); // either add this class or remove it'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38445068365255585544)
,p_event_id=>wwv_flow_imp.id(38445068153586585542)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'LIKE -- do database work'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    -- try to store this posts'' reaction from this user',
'    insert into SM_REACTIONS (post_id, reaction, lat, lon)',
'        values (:P1_ACTION_ID, ''LIKED'', :P1_LAT, :P1_LON);',
'    exception when dup_val_on_index then',
'        -- remove it as it already existed',
'        delete from SM_REACTIONS where',
'            post_id=:P1_ACTION_ID and created_by=:APP_USER;',
'    end;'))
,p_attribute_02=>'P1_LAT,P1_LON'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
