

require "application_system_test_case"

class AuthTest < ApplicationSystemTestCase
  test "user can signup" do
    visit new_user_path
    assert_equal new_user_path, current_path
    
    find('#user_email').set 'diosmendez@gmail.com'
    fill_in "Password", with: "123456"
    fill_in "Name", with: "Dios"
    fill_in "Twitter", with: "El dios"

    click_button "Create User"
    assert_equal root_path, current_path
  end

  test "user can login and create product" do
    visit new_session_path
    assert_equal new_session_path, current_path
    fill_in "Email", with: users(:chuck).email
    fill_in "Password", with: "password"
    click_button "Ingresar"
    sleep(5)
    assert_equal root_path, current_path

    visit root_path
    assert_equal root_path, current_path
    assert page.assert_selector('.product-details', count: 1)

    visit new_product_path
    assert_equal new_product_path, current_path

    find('#product_name').set('Poker')
    find('#product_description').set('Cerveza muy rica de Bogota')
    find('#product_url').set('www.....').send_keys(:enter)

    assert_equal products_path, current_path
    assert body.include? 'Cerveza muy rica de Bogota'
    refute body.include? 'Yo no aparezco en el body'

    assert page.assert_selector('.product-details', count: 2)

  end


end