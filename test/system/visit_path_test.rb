require "application_system_test_case"

class VisitPathTest < ApplicationSystemTestCase
    test "user can visit page" do
        visit root_path
        sleep(5)
        assert_equal root_path, current_path
    end
end
