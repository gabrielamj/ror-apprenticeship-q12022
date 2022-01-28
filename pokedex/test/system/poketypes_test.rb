# frozen_string_literal: true

require 'application_system_test_case'

class PoketypesTest < ApplicationSystemTestCase
  setup do
    @poketype = poketypes(:one)
  end

  test 'visiting the index' do
    visit poketypes_url
    assert_selector 'h1', text: 'Poketypes'
  end

  test 'creating a Poketype' do
    visit poketypes_url
    click_on 'New Poketype'

    fill_in 'Name', with: @poketype.name
    click_on 'Create Poketype'

    assert_text 'Poketype was successfully created'
    click_on 'Back'
  end

  test 'updating a Poketype' do
    visit poketypes_url
    click_on 'Edit', match: :first

    fill_in 'Name', with: @poketype.name
    click_on 'Update Poketype'

    assert_text 'Poketype was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Poketype' do
    visit poketypes_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Poketype was successfully destroyed'
  end
end
