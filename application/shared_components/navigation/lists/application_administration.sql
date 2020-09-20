prompt --application/shared_components/navigation/lists/application_administration
begin
--   Manifest
--     LIST: Application Administration
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>40171281895718717287
,p_default_application_id=>68980
,p_default_id_offset=>0
,p_default_owner=>'ARNOB77APEX'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(40182893793786255452)
,p_name=>'Application Administration'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(40182894139890255453)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'History'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'Manage component'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
