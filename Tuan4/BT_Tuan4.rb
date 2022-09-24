class Human
    attr_accessor :name, :hair, :weight, :height, :age, :phone, :email, :nation
    def initialize name, hair, weight, height, age, phone, email, nation
        @name = name
        @hair = hair
        @weight = weight
        @height = height
        @age = age
        @phone = phone
        @email = email
        @nation = nation
    end

    def display 
        puts "Ten: #{@name}"
        puts "Mau Toc: #{@hair}"
        puts "Can nang: #{@weight}"
        puts "Chieu cao: #{@height}"
        puts "Tuoi: #{@age}"
        puts "SDT: #{@phone}"
        puts "Email: #{@email}"
        puts "Dan toc: #{@nation}"
    end
end

class Student < Human
    attr_accessor :grade1, :grade2, :grade3
    def initialize name, hair, weight, height, age, phone, email, nation,grade1,grade2,grade3
        super(name,hair,weight,height,age,phone,email,nation)
        @grade1 = grade1
        @grade2 = grade2
        @grade3 = grade3
    end
    def TrungBinh
        @tb = (@grade1 + @grade2 + @grade3) / 3.to_f
    end 
    def display
        super()
        puts ("Grade1: #{@grade1}")
        puts ("Grade2: #{@grade2}")
        puts ("Grade3: #{@grade3}")
    end
    def sapxep

    end
end
std = Student.new("Hoang Ha","Den",58,170,18,123123,"abc@gmail.com","Kinh",10,9,7.5)
std1 = Student.new("Hoang","Do",60,170,16,123223,"ab12c@gmail.com","Kinh",9,2,5.5)
std2 = Student.new("Ha","Xanh",65,160,16,125523,"ab112c@gmail.com","Kinh",7,6,5.5)
puts "danh sach luc chua sap xep la: "
puts std.display
puts "Diem trung binh la: #{std.TrungBinh}"
puts std1.display
puts "Diem trung binh la: #{std1.TrungBinh}"
puts std2.display
puts "Diem trung binh la: #{std2.TrungBinh}"
st = [std,std1,std2]
st = st.sort_by{ |a| [a.TrungBinh]}

puts "Danh sach khi da sap xep la: "
puts "#{st}"

