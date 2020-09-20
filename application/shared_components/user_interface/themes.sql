prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 68980
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>40171281895718717287
,p_default_application_id=>68980
,p_default_id_offset=>0
,p_default_owner=>'ARNOB77APEX'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(40182544901604254766)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(40182344889757254688)
,p_default_dialog_template=>wwv_flow_api.id(40182340593635254686)
,p_error_template=>wwv_flow_api.id(40182332690613254681)
,p_printer_friendly_template=>wwv_flow_api.id(40182344889757254688)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(40182332690613254681)
,p_default_button_template=>wwv_flow_api.id(40182542138369254761)
,p_default_region_template=>wwv_flow_api.id(40182479921959254716)
,p_default_chart_template=>wwv_flow_api.id(40182479921959254716)
,p_default_form_template=>wwv_flow_api.id(40182479921959254716)
,p_default_reportr_template=>wwv_flow_api.id(40182479921959254716)
,p_default_tabform_template=>wwv_flow_api.id(40182479921959254716)
,p_default_wizard_template=>wwv_flow_api.id(40182479921959254716)
,p_default_menur_template=>wwv_flow_api.id(40182489301989254722)
,p_default_listr_template=>wwv_flow_api.id(40182479921959254716)
,p_default_irr_template=>wwv_flow_api.id(40182478060764254715)
,p_default_report_template=>wwv_flow_api.id(40182508910248254735)
,p_default_label_template=>wwv_flow_api.id(40182541056394254759)
,p_default_menu_template=>wwv_flow_api.id(40182543568673254762)
,p_default_calendar_template=>wwv_flow_api.id(40182543619784254762)
,p_default_list_template=>wwv_flow_api.id(40182525302976254747)
,p_default_nav_list_template=>wwv_flow_api.id(40182536792078254756)
,p_default_top_nav_list_temp=>wwv_flow_api.id(40182536792078254756)
,p_default_side_nav_list_temp=>wwv_flow_api.id(40182531724093254752)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(40182353552798254696)
,p_default_dialogr_template=>wwv_flow_api.id(40182352533101254696)
,p_default_option_label=>wwv_flow_api.id(40182541056394254759)
,p_default_required_label=>wwv_flow_api.id(40182541374015254759)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(40182531398138254751)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.5/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.component_end;
end;
/
