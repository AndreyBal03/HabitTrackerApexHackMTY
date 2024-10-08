prompt --application/shared_components/files/icons_app_icon_32_png
begin
--   Manifest
--     APP STATIC FILES: 228327
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.3'
,p_default_workspace_id=>38702546320165184656
,p_default_application_id=>228327
,p_default_id_offset=>0
,p_default_owner=>'WKSP_BUGBYTE'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE900000248494441545847ED954D68D36018C7FF69D2A6DFA95DB776B40C9D636E1EB6A1A76D768ABB0922A24711C1AB17F5B4A327BD88';
wwv_flow_imp.g_varchar2_table(2) := '17AF831D3C2A43F03A94D58FDBA4131D0667B176359D6BBBD8AFA5CD872483486B6982B60E21EF25F0F2E47D7FF9FD9FF70D91BF33A7E00007610158062C03FF85015901B8AA02673082BD0287889B808DE8CEE561EA1ED8AD896026CE80F630102A3CF8';
wwv_flow_imp.g_varchar2_table(3) := 'F517DAEE52DF90F624F369045CD41F1199063834390FBBDB8B46B58C627205726818D1D397B44DB3AB4FC094D2D8965D608E9F02FFE125066C3553964C01A811141517287F0852298F00AA280787119EBEA001E4DE3C859C6511BDB1082A7C14626E135B';
wwv_flow_imp.g_varchar2_table(4) := '0FAF9BB2620AA02448A8D4255D314DD940517660700C501410391662A38EE8CD47A0823188850CB61E5CE90E00BF27C237360367A05F07287C61514CBD839DB469736A43FA690A426804EE2353A8A5DEC2BB9BEA4E045CA98EA1F8C5A606CB7E7A8FD8EC';
wwv_flow_imp.g_varchar2_table(5) := '7910E47EE349420DECB34538C58A5EE77190F0D1A461631A46D00EA0B09343FF445C5F9CDF4C8239790E8EC353FA9CF0790DDB4BB7E077763E1D5D01F8BE9E40F4EABDDFBEF6E3C21C223E47470B8600822823C30B189FBFFCAB075A0CF41440DDB53586';
wwv_flow_imp.g_varchar2_table(6) := '8D95C7084FC6F518FE39403AB10CEFF84C13402E99C089FBAF744B6BB767116368A847B6D3308CA09D81AF8965785A00CA1BAF71ECEEAABE9799FCD56253003B9506A8C1517D718963418F4E3719E829403B85DFA801F822FB3FA33297068A99DE1930BC';
wwv_flow_imp.g_varchar2_table(7) := '4D00A89698B3D7F4D21FCF97D0E7B61BBE6A2A02C355FEA2C002B00C58060EDCC04FFEAC35905859BAF70000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(38771085100672745166)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
