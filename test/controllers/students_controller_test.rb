require 'test_helper'

class StudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get students_url
    assert_response :success
  end

  test "should get new" do
    get new_student_url
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
<<<<<<< HEAD
      post students_url, params: { student: { stu_carrera: @student.stu_carrera, stu_email: @student.stu_email, stu_facultad: @student.stu_facultad, stu_id: @student.stu_id, stu_name: @student.stu_name, stu_pass: @student.stu_pass, stu_rol: @student.stu_rol } }
=======
      post students_url, params: { student: { stu_carrera: @student.stu_carrera, stu_email: @student.stu_email, stu_facultad: @student.stu_facultad, stu_identification: @student.stu_identification, stu_name: @student.stu_name, stu_pass: @student.stu_pass, stu_rol: @student.stu_rol } }
>>>>>>> Prueba-back
    end

    assert_redirected_to student_url(Student.last)
  end

  test "should show student" do
    get student_url(@student)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_url(@student)
    assert_response :success
  end

  test "should update student" do
<<<<<<< HEAD
    patch student_url(@student), params: { student: { stu_carrera: @student.stu_carrera, stu_email: @student.stu_email, stu_facultad: @student.stu_facultad, stu_id: @student.stu_id, stu_name: @student.stu_name, stu_pass: @student.stu_pass, stu_rol: @student.stu_rol } }
=======
    patch student_url(@student), params: { student: { stu_carrera: @student.stu_carrera, stu_email: @student.stu_email, stu_facultad: @student.stu_facultad, stu_identification: @student.stu_identification, stu_name: @student.stu_name, stu_pass: @student.stu_pass, stu_rol: @student.stu_rol } }
>>>>>>> Prueba-back
    assert_redirected_to student_url(@student)
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete student_url(@student)
    end

    assert_redirected_to students_url
  end
end
