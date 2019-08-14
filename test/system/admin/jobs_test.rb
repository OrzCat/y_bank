require "application_system_test_case"

class Admin::JobsTest < ApplicationSystemTestCase
  setup do
    @admin_job = admin_jobs(:one)
  end

  test "visiting the index" do
    visit admin_jobs_url
    assert_selector "h1", text: "Admin/Jobs"
  end

  test "creating a Job" do
    visit admin_jobs_url
    click_on "New Admin/Job"

    fill_in "Admin company", with: @admin_job.admin_company_id
    fill_in "Condition", with: @admin_job.condition
    check "Enabled" if @admin_job.enabled
    fill_in "Intro", with: @admin_job.intro
    fill_in "Name", with: @admin_job.name
    fill_in "Salary", with: @admin_job.salary
    fill_in "Welfare", with: @admin_job.welfare
    click_on "Create Job"

    assert_text "Job was successfully created"
    click_on "Back"
  end

  test "updating a Job" do
    visit admin_jobs_url
    click_on "Edit", match: :first

    fill_in "Admin company", with: @admin_job.admin_company_id
    fill_in "Condition", with: @admin_job.condition
    check "Enabled" if @admin_job.enabled
    fill_in "Intro", with: @admin_job.intro
    fill_in "Name", with: @admin_job.name
    fill_in "Salary", with: @admin_job.salary
    fill_in "Welfare", with: @admin_job.welfare
    click_on "Update Job"

    assert_text "Job was successfully updated"
    click_on "Back"
  end

  test "destroying a Job" do
    visit admin_jobs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Job was successfully destroyed"
  end
end
