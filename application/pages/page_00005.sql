prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.03.31'
,p_release=>'20.1.0.00.13'
,p_default_workspace_id=>40171281895718717287
,p_default_application_id=>68980
,p_default_id_offset=>0
,p_default_owner=>'ARNOB77APEX'
);
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(40182564615153254782)
,p_name=>'Timecards'
,p_alias=>'TIMECARDS'
,p_step_title=>'Timecards'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_last_updated_by=>'ARNOB77S@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20200920181724'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40182609479421254943)
,p_plug_name=>'Timecards'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(40182478060764254715)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       EMPLOYEE_ID,',
'       ROW_VERSION,',
'       STATUS,',
'       WEEK_OF,',
'       SUNDAY,',
'       MONDAY,',
'       TUESDAY,',
'       WEDNESDAY,',
'       THURSDAY,',
'       FRIDAY,',
'       SATURDAY,',
'       SUNDAY+MONDAY+TUESDAY+WEDNESDAY+THURSDAY+FRIDAY+SATURDAY total_hours,',
'       initcap((select employee_type from employees e where e.id = m.employee_id)) employee_type,',
'       decode((select employee_type from employees e where e.id = m.employee_id), ''FULL TIME'',40,20) target_hours,',
'       COMMENTS,',
'       CONFIRMATION_CODE,',
'       CREATED,',
'       CREATED_BY,',
'       UPDATED,',
'       UPDATED_BY',
'  from TIMECARDS m'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Timecards'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(40182609559959254943)
,p_name=>'Timecards'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:6:&APP_SESSION.:::6:P6_ID:\#ID#\'
,p_detail_link_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_detail_link_auth_scheme=>wwv_flow_api.id(40182568242430254803)
,p_owner=>'ARNOB77S@GMAIL.COM'
,p_internal_uid=>40182609559959254943
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40182609947205254946)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40182610362539254946)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(40182617137879254958)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40182610735787254947)
,p_db_column_name=>'ROW_VERSION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Row Version'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40182611112471254947)
,p_db_column_name=>'STATUS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40182611530464254947)
,p_db_column_name=>'WEEK_OF'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Week Of'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40182611930621254948)
,p_db_column_name=>'SUNDAY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Sunday'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40182612367916254948)
,p_db_column_name=>'MONDAY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Monday'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40182612750874254948)
,p_db_column_name=>'TUESDAY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Tuesday'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40182613147070254949)
,p_db_column_name=>'WEDNESDAY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Wednesday'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40182613558621254949)
,p_db_column_name=>'THURSDAY'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Thursday'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40182613926050254949)
,p_db_column_name=>'FRIDAY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Friday'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40182614391419254950)
,p_db_column_name=>'SATURDAY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Saturday'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40182614774446254950)
,p_db_column_name=>'COMMENTS'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Comments'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40182615161733254950)
,p_db_column_name=>'CONFIRMATION_CODE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Confirmation Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40182615539256254951)
,p_db_column_name=>'CREATED'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40182615956991254951)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40182616336107254951)
,p_db_column_name=>'UPDATED'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40182616743433254952)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40183647283005306509)
,p_db_column_name=>'TOTAL_HOURS'
,p_display_order=>28
,p_column_identifier=>'S'
,p_column_label=>'Total Hours'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40183647341351306510)
,p_db_column_name=>'EMPLOYEE_TYPE'
,p_display_order=>38
,p_column_identifier=>'T'
,p_column_label=>'Employee Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(40183647445268306511)
,p_db_column_name=>'TARGET_HOURS'
,p_display_order=>48
,p_column_identifier=>'U'
,p_column_label=>'Target Hours'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(40182692170550255153)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'401826922'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMPLOYEE_ID:STATUS:WEEK_OF:MONDAY:TUESDAY:WEDNESDAY:THURSDAY:FRIDAY:TARGET_HOURS:TOTAL_HOURS:EMPLOYEE_TYPE:CONFIRMATION_CODE:'
,p_sort_column_1=>'EMPLOYEE_ID'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40182618546595254960)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(40182489301989254722)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(40182325933166254674)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(40182543568673254762)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40182617758412254959)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(40182609479421254943)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(40182542235991254761)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40182620369432254961)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(40182609479421254943)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(40182542138369254761)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:6'
,p_security_scheme=>wwv_flow_api.id(40182568242430254803)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40182619472882254961)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(40182609479421254943)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40182619980743254961)
,p_event_id=>wwv_flow_api.id(40182619472882254961)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(40182609479421254943)
);
wwv_flow_api.component_end;
end;
/
