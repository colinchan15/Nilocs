require "application_system_test_case"

class CubesTest < ApplicationSystemTestCase
  setup do
    @cube = cubes(:one)
  end

  test "visiting the index" do
    visit cubes_url
    assert_selector "h1", text: "Cubes"
  end

  test "creating a Cube" do
    visit cubes_url
    click_on "New Cube"

    fill_in "Brand", with: @cube.brand
    fill_in "Condition", with: @cube.condition
    fill_in "Description", with: @cube.description
    fill_in "Finish", with: @cube.finish
    fill_in "Model", with: @cube.model
    fill_in "Price", with: @cube.price
    fill_in "Title", with: @cube.title
    click_on "Create Cube"

    assert_text "Cube was successfully created"
    click_on "Back"
  end

  test "updating a Cube" do
    visit cubes_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @cube.brand
    fill_in "Condition", with: @cube.condition
    fill_in "Description", with: @cube.description
    fill_in "Finish", with: @cube.finish
    fill_in "Model", with: @cube.model
    fill_in "Price", with: @cube.price
    fill_in "Title", with: @cube.title
    click_on "Update Cube"

    assert_text "Cube was successfully updated"
    click_on "Back"
  end

  test "destroying a Cube" do
    visit cubes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cube was successfully destroyed"
  end
end
