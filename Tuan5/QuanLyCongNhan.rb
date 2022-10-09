class Officer
    attr_accessor :name213, :age213, :gender213, :address213
    def initialize name213, age213,gender213,address213
        @name213 = name213
        @age213 = age213
        @gender213 = gender213
        @address213 = @address213
    end
    def display
        puts ("Ten: #{@name213}")
        puts ("Tuoi: #{@age213}")
        puts ("Gioi Tinh: #{@gender213}")
        puts ("Dia Chi:  #{@address213}")
    end
end
class Staff < Officer
    attr_accessor :task213
    def initialize name213, age213,gender213,address213, task213
        super(name213,age213,gender213,address213)
        @task213 = task213
    end
    def display
        super()
        puts ("Cong vien duoc giao: #{@task213}")
    end
end
class Engineer < Officer
    attr_accessor :branch213
    def initialize name213, age213,gender213,address213,branch213
        super(name213, age213,gender213,address213)
        @branch213 = branch213
    end
    def display
        super()
        puts ("Nganh dao tao: #{@branch213}")
    end
end
class Worker < Officer
    attr_accessor :level213
    def initialize name213,age213,gender213,address213,level213
        super(name213,age213,gender213,address213)
        @level213 = level213
    end
    def display
        super()
        puts ("Bac Luong: #{@level213}")
    end
end

class ManagerOfficer
    attr_accessor :ds213
    def initialize 
        @ds213 = Array.new
    end
    def Add name213,age213,gender213,address213
        of213 = Officer.new(name213,age213,gender213,address213)
        @ds213.push(of213)
    end
    def searchByName name213
        lenght213 = @ds213.length
        for i in 0..lenght do
            @ds213[i].display
    end
    end
end
class Main
    dem213=0
    mo213=ManagerOfficer.new()
    until dem213==1 do
       puts "1. them"
       puts "2. tim kiem"
       puts "3. thoat"
       dem213=gets
       if dem213.to_i ==3
            exit
        end
        if dem213.to_i == 1
            print " Nhap ten :"
            name213=gets
            print "nhap tuoi: "
            age213=gets
            print "gioi tinh: "
            gender213 =gets
            print "dia chi: "
            address213=gets
            mo213.Add(name213,age213,gender213,address213)
        end
        if dem213.to_i == 2
            print "Nhap ten: "
            ten213 = gets
            mo213.searchByName(ten213)
        end
    end
end

