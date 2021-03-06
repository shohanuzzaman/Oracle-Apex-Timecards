prompt --application/pages/page_00008
begin
--   Manifest
--     PAGE: 00008
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
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(40182564615153254782)
,p_name=>'History'
,p_alias=>'HISTORY1'
,p_page_mode=>'MODAL'
,p_step_title=>'History'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(40182569955171254811)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_required_role=>wwv_flow_api.id(40182568043781254803)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'ARNOB77S@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20200920170816'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40182652539437255083)
,p_plug_name=>'History'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(40182352533101254696)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'HISTORY'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(40182672794906255103)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(40182353552798254696)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40182673181514255104)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(40182672794906255103)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(40182542138369254761)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40182674759359255105)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(40182672794906255103)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(40182542138369254761)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P8_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40182675166228255105)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(40182672794906255103)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(40182542138369254761)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P8_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(40182675525169255106)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(40182672794906255103)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(40182542138369254761)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P8_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40182652946504255083)
,p_name=>'P8_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_item_source_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'ID'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(40182541374015254759)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40182653335391255084)
,p_name=>'P8_TABLE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_item_source_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Table Name'
,p_source=>'TABLE_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>128
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(40182541056394254759)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40182653770634255084)
,p_name=>'P8_COLUMN_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_item_source_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Column Name'
,p_source=>'COLUMN_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>128
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(40182541056394254759)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40182654181652255085)
,p_name=>'P8_ACTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_item_source_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Action'
,p_source=>'ACTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(40182541056394254759)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40182654578122255085)
,p_name=>'P8_ACTION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_item_source_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Action Date'
,p_source=>'ACTION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(40182541056394254759)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40182654911905255086)
,p_name=>'P8_ACTION_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_item_source_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Action By'
,p_source=>'ACTION_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(40182541056394254759)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40182655340240255086)
,p_name=>'P8_DATA_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_item_source_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Data Type'
,p_source=>'DATA_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(40182541056394254759)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40182655759633255086)
,p_name=>'P8_PK1'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_item_source_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pk1'
,p_source=>'PK1'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(40182541056394254759)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40182656180928255087)
,p_name=>'P8_TAB_ROW_VERSION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_item_source_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tab Row Version'
,p_source=>'TAB_ROW_VERSION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(40182541056394254759)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40182656546246255087)
,p_name=>'P8_OLD_VC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_item_source_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Old Vc'
,p_source=>'OLD_VC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>5
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(40182541056394254759)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40182656927063255087)
,p_name=>'P8_NEW_VC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_item_source_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New Vc'
,p_source=>'NEW_VC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>5
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(40182541056394254759)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40182657394213255088)
,p_name=>'P8_OLD_NUMBER'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_item_source_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Old Number'
,p_source=>'OLD_NUMBER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(40182541056394254759)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40182657729903255088)
,p_name=>'P8_NEW_NUMBER'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_item_source_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New Number'
,p_source=>'NEW_NUMBER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(40182541056394254759)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40182658168889255089)
,p_name=>'P8_OLD_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_item_source_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Old Date'
,p_source=>'OLD_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(40182541056394254759)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40182658525883255089)
,p_name=>'P8_NEW_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_item_source_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New Date'
,p_source=>'NEW_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(40182541056394254759)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40182658915324255090)
,p_name=>'P8_OLD_TS'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_item_source_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Old Ts'
,p_source=>'OLD_TS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(40182541056394254759)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40182659762901255091)
,p_name=>'P8_NEW_TS'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_item_source_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New Ts'
,p_source=>'NEW_TS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(40182541056394254759)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40182660551781255091)
,p_name=>'P8_OLD_TSWTZ'
,p_source_data_type=>'TIMESTAMP_TZ'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_item_source_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Old Tswtz'
,p_source=>'OLD_TSWTZ'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(40182541056394254759)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40182661389828255092)
,p_name=>'P8_NEW_TSWTZ'
,p_source_data_type=>'TIMESTAMP_TZ'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_item_source_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New Tswtz'
,p_source=>'NEW_TSWTZ'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(40182541056394254759)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40182662164147255093)
,p_name=>'P8_OLD_TSWLTZ'
,p_source_data_type=>'TIMESTAMP_LTZ'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_item_source_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Old Tswltz'
,p_source=>'OLD_TSWLTZ'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(40182541056394254759)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40182662944712255093)
,p_name=>'P8_NEW_TSWLTZ'
,p_source_data_type=>'TIMESTAMP_LTZ'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_item_source_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New Tswltz'
,p_source=>'NEW_TSWLTZ'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(40182541056394254759)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40182663765362255094)
,p_name=>'P8_OLD_CLOB'
,p_source_data_type=>'CLOB'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_item_source_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Old Clob'
,p_source=>'OLD_CLOB'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cHeight=>5
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(40182541056394254759)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40182664110054255094)
,p_name=>'P8_NEW_CLOB'
,p_source_data_type=>'CLOB'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_item_source_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New Clob'
,p_source=>'NEW_CLOB'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cHeight=>5
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(40182541056394254759)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40182664500781255095)
,p_name=>'P8_OLD_BLOB'
,p_source_data_type=>'BLOB'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_item_source_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Old Blob'
,p_source=>'OLD_BLOB'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(40182541056394254759)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(40182664990575255095)
,p_name=>'P8_NEW_BLOB'
,p_source_data_type=>'BLOB'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_item_source_plug_id=>wwv_flow_api.id(40182652539437255083)
,p_use_cache_before_default=>'NO'
,p_prompt=>'New Blob'
,p_source=>'NEW_BLOB'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(40182541056394254759)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(40182659436794255090)
,p_validation_name=>'P8_OLD_TS must be timestamp'
,p_validation_sequence=>150
,p_validation=>'P8_OLD_TS'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_api.id(40182658915324255090)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(40182660238716255091)
,p_validation_name=>'P8_NEW_TS must be timestamp'
,p_validation_sequence=>160
,p_validation=>'P8_NEW_TS'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_api.id(40182659762901255091)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(40182661081833255092)
,p_validation_name=>'P8_OLD_TSWTZ must be timestamp'
,p_validation_sequence=>170
,p_validation=>'P8_OLD_TSWTZ'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_api.id(40182660551781255091)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(40182661899494255093)
,p_validation_name=>'P8_NEW_TSWTZ must be timestamp'
,p_validation_sequence=>180
,p_validation=>'P8_NEW_TSWTZ'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_api.id(40182661389828255092)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(40182662670950255093)
,p_validation_name=>'P8_OLD_TSWLTZ must be timestamp'
,p_validation_sequence=>190
,p_validation=>'P8_OLD_TSWLTZ'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_api.id(40182662164147255093)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(40182663428228255094)
,p_validation_name=>'P8_NEW_TSWLTZ must be timestamp'
,p_validation_sequence=>200
,p_validation=>'P8_NEW_TSWLTZ'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_api.id(40182662944712255093)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(40182673273841255104)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(40182673181514255104)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(40182674097601255105)
,p_event_id=>wwv_flow_api.id(40182673273841255104)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(40182676331882255106)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(40182652539437255083)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form History'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(40182676741139255107)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(40182675944204255106)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(40182652539437255083)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form History'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
