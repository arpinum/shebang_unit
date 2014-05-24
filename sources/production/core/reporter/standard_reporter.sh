function standard_reporter__tests_files_end_running() {
	printf "[Results]\n"
	local color="$(_reporter__get_color_code_for_tests_result)"
	local execution_time="$1"
	local green_tests="Green tests: ${global_green_tests_count}"
	local red_tests="red: ${global_red_tests_count}"
	local time="in ${execution_time}s"
	_reporter__print_with_color "${green_tests}, ${red_tests} ${time}\n" "${color}"
}

function standard_reporter__test_file_starts_running() {
	printf "[File] $1\n"
}

function standard_reporter__test_file_ends_running() {
	printf "\n"
}

function standard_reporter__test_starts_running() {
	printf "[Test] $1\n"
}

function standard_reporter__test_has_succeeded() {
  _reporter__print_with_color "OK\n" ${SBU_GREEN_COLOR_CODE}
}

function standard_reporter__test_has_failed() {
  _reporter__print_with_color "KO\n" ${SBU_RED_COLOR_CODE}
}

function standard_reporter__assertion_failed() {
  printf "$@"
}