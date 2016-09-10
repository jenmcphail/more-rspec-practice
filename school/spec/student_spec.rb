require_relative 'spec_helper.rb'

describe Student do 
  before (:each) do
    Student.reset_all
  end

  let (:student) {Student.new("Koren")}

  it "can initialize a student" do
    expect (:student).to be_a(Student)
  end

  it "initializes with a name" do
    expect(student.name).to eq("Koren")
  end

  it "can't change it's name" do
    expect { student.name = "Koren" }.to raise_error
  end

  it "can count how many students have been created" do
    Student.new("student")
    expect(Student.count).to eq(1)
  end
  
end