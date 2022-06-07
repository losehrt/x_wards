require "test_helper"

class PcrsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pcr = pcrs(:one)
  end

  test "should get index" do
    get pcrs_url
    assert_response :success
  end

  test "should get new" do
    get new_pcr_url
    assert_response :success
  end

  test "should create pcr" do
    assert_difference("Pcr.count") do
      post pcrs_url, params: { pcr: { admitted_at: @pcr.admitted_at, examined_at: @pcr.examined_at, examined_result: @pcr.examined_result, inpatient_seq: @pcr.inpatient_seq, is_specail_ward: @pcr.is_specail_ward, order_code: @pcr.order_code, patient_idno: @pcr.patient_idno, patient_name: @pcr.patient_name, patient_no: @pcr.patient_no, positived_days: @pcr.positived_days, reported_at: @pcr.reported_at, vs_doctor_name: @pcr.vs_doctor_name, vs_doctor_uid: @pcr.vs_doctor_uid, ward_bed: @pcr.ward_bed } }
    end

    assert_redirected_to pcr_url(Pcr.last)
  end

  test "should show pcr" do
    get pcr_url(@pcr)
    assert_response :success
  end

  test "should get edit" do
    get edit_pcr_url(@pcr)
    assert_response :success
  end

  test "should update pcr" do
    patch pcr_url(@pcr), params: { pcr: { admitted_at: @pcr.admitted_at, examined_at: @pcr.examined_at, examined_result: @pcr.examined_result, inpatient_seq: @pcr.inpatient_seq, is_specail_ward: @pcr.is_specail_ward, order_code: @pcr.order_code, patient_idno: @pcr.patient_idno, patient_name: @pcr.patient_name, patient_no: @pcr.patient_no, positived_days: @pcr.positived_days, reported_at: @pcr.reported_at, vs_doctor_name: @pcr.vs_doctor_name, vs_doctor_uid: @pcr.vs_doctor_uid, ward_bed: @pcr.ward_bed } }
    assert_redirected_to pcr_url(@pcr)
  end

  test "should destroy pcr" do
    assert_difference("Pcr.count", -1) do
      delete pcr_url(@pcr)
    end

    assert_redirected_to pcrs_url
  end
end
