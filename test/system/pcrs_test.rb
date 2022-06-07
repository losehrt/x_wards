require "application_system_test_case"

class PcrsTest < ApplicationSystemTestCase
  setup do
    @pcr = pcrs(:one)
  end

  test "visiting the index" do
    visit pcrs_url
    assert_selector "h1", text: "Pcrs"
  end

  test "should create pcr" do
    visit pcrs_url
    click_on "New pcr"

    fill_in "Admitted at", with: @pcr.admitted_at
    fill_in "Examined at", with: @pcr.examined_at
    fill_in "Examined result", with: @pcr.examined_result
    fill_in "Inpatient seq", with: @pcr.inpatient_seq
    check "Is specail ward" if @pcr.is_specail_ward
    fill_in "Order code", with: @pcr.order_code
    fill_in "Patient", with: @pcr.patient_id
    fill_in "Patient name", with: @pcr.patient_name
    fill_in "Patient no", with: @pcr.patient_no
    fill_in "Positived days", with: @pcr.positived_days
    fill_in "Reported at", with: @pcr.reported_at
    fill_in "Vs doctor", with: @pcr.vs_doctor_id
    fill_in "Vs doctor name", with: @pcr.vs_doctor_name
    fill_in "Ward bed", with: @pcr.ward_bed
    click_on "Create Pcr"

    assert_text "Pcr was successfully created"
    click_on "Back"
  end

  test "should update Pcr" do
    visit pcr_url(@pcr)
    click_on "Edit this pcr", match: :first

    fill_in "Admitted at", with: @pcr.admitted_at
    fill_in "Examined at", with: @pcr.examined_at
    fill_in "Examined result", with: @pcr.examined_result
    fill_in "Inpatient seq", with: @pcr.inpatient_seq
    check "Is specail ward" if @pcr.is_specail_ward
    fill_in "Order code", with: @pcr.order_code
    fill_in "Patient", with: @pcr.patient_id
    fill_in "Patient name", with: @pcr.patient_name
    fill_in "Patient no", with: @pcr.patient_no
    fill_in "Positived days", with: @pcr.positived_days
    fill_in "Reported at", with: @pcr.reported_at
    fill_in "Vs doctor", with: @pcr.vs_doctor_id
    fill_in "Vs doctor name", with: @pcr.vs_doctor_name
    fill_in "Ward bed", with: @pcr.ward_bed
    click_on "Update Pcr"

    assert_text "Pcr was successfully updated"
    click_on "Back"
  end

  test "should destroy Pcr" do
    visit pcr_url(@pcr)
    click_on "Destroy this pcr", match: :first

    assert_text "Pcr was successfully destroyed"
  end
end
