prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
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
 p_id=>6
,p_name=>'My habits'
,p_alias=>'MY-HABITS'
,p_step_title=>'My habits'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.actions.add([{',
'    name: "delete",',
'    action: (event, element, args) => {',
'        apex.items.P2_ACTION_ID.value = args.id;',
'        apex.event.trigger(document, ''action-delete'');',
'    }',
'}]);',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38727706071579953636)
,p_plug_name=>'New habit'
,p_title=>'New habit'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(38770862946484744977)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_04'
,p_query_type=>'TABLE'
,p_query_table=>'SM_HABITS'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38810027500500851819)
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
' p.name AS name_text,',
' p.description AS description_text,',
' p.status AS status_text,',
' p.importance AS importance_text,',
' p.frecuency AS frecuency_text,',
' p.picture,',
' p.file_mime,',
'',
' apex_util.get_since(p.created) habit_date',
'',
' from SM_HABITS p',
' where p.user_id = APEX_UTIL.GET_CURRENT_USER_ID',
'',
' order by p.created desc'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(38810027606062851820)
,p_region_id=>wwv_flow_imp.id(38810027500500851819)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'NAME_TEXT'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'DESCRIPTION_TEXT'
,p_body_adv_formatting=>true
,p_body_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Frequency: &FRECUENCY_TEXT. </br>',
'Importance: &IMPORTANCE_TEXT.'))
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'NAME_TEXT'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
,p_media_source_type=>'BLOB'
,p_media_blob_column_name=>'PICTURE'
,p_media_display_position=>'FIRST'
,p_media_appearance=>'WIDESCREEN'
,p_media_sizing=>'COVER'
,p_media_css_classes=>'selectDisable'
,p_media_description=>'&STATUS_TEXT.'
,p_pk1_column_name=>'ID'
,p_mime_type_column_name=>'FILE_MIME'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(38445067541969585536)
,p_card_id=>wwv_flow_imp.id(38810027606062851820)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>10
,p_label=>'Delete'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#action$delete?id=&ID.'
,p_button_display_type=>'ICON'
,p_icon_css_classes=>'fa-trash-o'
,p_is_hot=>false
,p_condition_type=>'EXPRESSION'
,p_condition_expr1=>':USER_NAME=:APP_USER'
,p_condition_expr2=>'PLSQL'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38810026293989851806)
,p_button_sequence=>10
,p_button_name=>'New_habit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(38770970126396745026)
,p_button_image_alt=>'New Habit'
,p_button_position=>'AFTER_LOGO'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'new-post-button'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(38810026505291851809)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(38727706071579953636)
,p_button_name=>'Save'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(38770970077972745026)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'post-button'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38445067669323585537)
,p_name=>'P2_ACTION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(38810027500500851819)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38727706231949953638)
,p_name=>'P6_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(38727706071579953636)
,p_item_source_plug_id=>wwv_flow_imp.id(38727706071579953636)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38727706366952953639)
,p_name=>'P6_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(38727706071579953636)
,p_item_source_plug_id=>wwv_flow_imp.id(38727706071579953636)
,p_prompt=>'Name'
,p_source=>'NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(38770967525710745024)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38727706499206953640)
,p_name=>'P6_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(38727706071579953636)
,p_item_source_plug_id=>wwv_flow_imp.id(38727706071579953636)
,p_prompt=>'Description'
,p_source=>'DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>400
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(38770967525710745024)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38727706562397953641)
,p_name=>'P6_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(38727706071579953636)
,p_item_source_plug_id=>wwv_flow_imp.id(38727706071579953636)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov=>'STATIC:Public;Public,Private;Private'
,p_cSize=>30
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(38770967525710745024)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'CONTAINS'
,p_attribute_02=>'N'
,p_attribute_04=>'N'
,p_attribute_09=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38727706637607953642)
,p_name=>'P6_IMPORTANCE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(38727706071579953636)
,p_item_source_plug_id=>wwv_flow_imp.id(38727706071579953636)
,p_prompt=>'Importance'
,p_source=>'IMPORTANCE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov=>'STATIC:Low;Low,Medium;Medium,High;High'
,p_cSize=>30
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(38770967525710745024)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'CONTAINS'
,p_attribute_02=>'N'
,p_attribute_04=>'N'
,p_attribute_09=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38727706710922953643)
,p_name=>'P6_FRECUENCY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(38727706071579953636)
,p_item_source_plug_id=>wwv_flow_imp.id(38727706071579953636)
,p_prompt=>'Frecuency'
,p_source=>'FRECUENCY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov=>'STATIC:Daily;Daily,Weekly;Weekly,Monthly;Monthly'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(38770967525710745024)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'CONTAINS'
,p_attribute_02=>'N'
,p_attribute_04=>'N'
,p_attribute_09=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38727706856718953644)
,p_name=>'P6_START_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(38727706071579953636)
,p_item_source_plug_id=>wwv_flow_imp.id(38727706071579953636)
,p_prompt=>'Start Date'
,p_source=>'START_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(38770967525710745024)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38727706918558953645)
,p_name=>'P6_END_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(38727706071579953636)
,p_item_source_plug_id=>wwv_flow_imp.id(38727706071579953636)
,p_prompt=>'End Date'
,p_source=>'END_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(38770967525710745024)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38810026136871851805)
,p_name=>'P6_PICTURE'
,p_source_data_type=>'BLOB'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(38727706071579953636)
,p_item_source_plug_id=>wwv_flow_imp.id(38727706071579953636)
,p_prompt=>'Picture'
,p_source=>'PICTURE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(38770967525710745024)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'FILE_MIME'
,p_attribute_03=>'FILE_NAME'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
,p_attribute_11=>'image/*'
,p_attribute_12=>'DROPZONE_BLOCK'
,p_attribute_13=>'Share a picture...'
,p_attribute_15=>'10000'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38810027320156851817)
,p_name=>'P6_FILE_MIME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(38727706071579953636)
,p_item_source_plug_id=>wwv_flow_imp.id(38727706071579953636)
,p_source=>'FILE_MIME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38810027409019851818)
,p_name=>'P6_FILE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(38727706071579953636)
,p_item_source_plug_id=>wwv_flow_imp.id(38727706071579953636)
,p_source=>'FILE_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38835918683828694102)
,p_name=>'P6_USER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(38727706071579953636)
,p_item_source_plug_id=>wwv_flow_imp.id(38727706071579953636)
,p_item_default=>'APEX_UTIL.GET_CURRENT_USER_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'USER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38810026321027851807)
,p_name=>'Open new habit'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(38810026293989851806)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38810026471854851808)
,p_event_id=>wwv_flow_imp.id(38810026321027851807)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38727706071579953636)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38810026682374851810)
,p_name=>'Submit habit'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(38810026505291851809)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item(''P6_PICTURE'').value.length>0 ||',
'apex.item(''P1_NAME'').value.length>0 ||',
'apex.item(''P1_FRECUENCY'').value.length>0 ||',
'apex.item(''P1_IMPORTANCE'').value.length>0  ||',
'apex.item(''P1_STATUS'').value.length>0 ||',
'apex.item(''P1_START_DATE'').value.length>0  ||',
'apex.item(''P1_END_DATE'').value.length>0 '))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38810026785701851811)
,p_event_id=>wwv_flow_imp.id(38810026682374851810)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'Save'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38445067787858585538)
,p_name=>'action-delete'
,p_event_sequence=>30
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'action-delete'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38445067842565585539)
,p_event_id=>wwv_flow_imp.id(38445067787858585538)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('DELETE \2013 Confirm dialog')
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'You are about to delete this post. Are you sure?'
,p_attribute_02=>'Are you Sure?'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38445067989401585540)
,p_event_id=>wwv_flow_imp.id(38445067787858585538)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('DELETE \2013 do database work')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'delete from SM_REACTIONS where POST_ID = :P2_ACTION_ID and created_by=:APP_USER;',
'delete from SM_HABITS where id=:P2_ACTION_ID and created_by=:APP_USER;'))
,p_attribute_02=>'P2_ACTION_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38445068073789585541)
,p_event_id=>wwv_flow_imp.id(38445067787858585538)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('DELETE \2013 remove post in UI')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''[data-id=''+apex.items.P2_ACTION_ID.value+'']'').remove();'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38810026888736851812)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(38727706071579953636)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Insert habit'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Saved! :0'
,p_internal_uid=>38810026888736851812
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(38727706167655953637)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(38727706071579953636)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('Initialize form Tus h\00E1bitos')
,p_internal_uid=>38727706167655953637
);
wwv_flow_imp.component_end;
end;
/
