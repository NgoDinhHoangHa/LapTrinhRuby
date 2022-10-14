
class Vehicle
    attr_accessor :id_213, :manufacturer_213, :yearOfManu_213, :model_213, :price_213, :licenseNumber_213, :color_213
    def initialize(id_213, manufacturer_213, yearOfManu_213, model_213, price_213, licenseNumber_213, color_213)
      @id_213 = id_213
      @manufacturer_213 = manufacturer_213
      @yearOfManu_213=yearOfManu_213
      @model_213=model_213
      @price_213=price_213
      @licenseNumber_213=licenseNumber_213
      @color_213=color_213
    end
    def show
      puts "ID xe : #{id_213}"
      puts "hang san suat: #{manufacturer_213}"
      puts "nam san xuat: #{yearOfManu_213}"
      puts "dong xe: #{model_213}"
      puts "gia ban: #{price_213}"
      puts "bien so #{licenseNumber_213}"
      puts "mau xe: #{color_213}"
    end
  end
  class Car < Vehicle
    attr_accessor :seatNumber_213, :engineType_213, :fuel_213, :airbagNumber_213, :registrationDate_213
    def initialize(id_213, manufacturer_213, yearOfManu_213, model_213, price_213, licenseNumber_213, color_213,seatNumber_213,engineType_213, fuel_213, airbagNumber_213, registrationDate_213)
      super(id_213, manufacturer_213, yearOfManu_213, model_213, price_213, licenseNumber_213, color_213)
      @seatNumber_213=seatNumber_213
      @engineType_213=engineType_213
      @fuel_213=fuel_213
      @airbagNumber_213=airbagNumber_213
      @registrationDate_213=registrationDate_213
    end
    def show
      super
      puts "So cho ngoi: #{seatNumber_213}"
      puts "loai dong co: #{engineType_213}"
      puts "nhien lien: #{fuel_213}"
      puts "so tui khi: #{airbagNumber_213}"
      puts "ngya dang kiem: #{registrationDate_213}"
    end
  end
  class Motorbike < Vehicle
    attr_accessor :capacity_213, :fuelTank_213 
    def initialize(id_213, manufacturer_213, yearOfManu_213, model_213, price_213, licenseNumber_213, color_213,capacity_213, fuelTank_213)
      super(id_213, manufacturer_213, yearOfManu_213, model_213, price_213, licenseNumber_213, color_213)
      @capacity_213=capacity_213
      @fuelTank_213=fuelTank_213
    end
    def show
      super
      puts "cong suat: #{capacity_213}"
      puts "dung tich binh xabg: #{fuelTank_213}"
    end
  end
  class Truck < Vehicle
    attr_accessor :payload_213
    def initialize(id_213, manufacturer_213, yearOfManu_213, model_213, price_213, licenseNumber_213, color_213,payload_213)
      super(id_213, manufacturer_213, yearOfManu_213, model_213, price_213, licenseNumber_213, color_213)
      @payload_213=payload_213
    end
    def show
      super
      puts "Ptrong tai: #{payload_213}"
    end
  end
  class VehicleManagement
    @@vehicles = Array.new
    def addVehicles(vehicles)
      @@vehicles.push(vehicles)
    end
    def deleteVehicleById(id)
      @@vehicles.delete_if {|x| x.id_213 == id }
    end
    def showInfor()
      @@vehicles.each{ |vehicle| vehicle.show}
    end
    def timkiemtheohang(key)
      searchList = @@vehicles .select {|o| o.manufacturer_213.include? key}
      searchList.each{ |sl| sl.show}
    end
     def timkiemtheomau(key)
      searchList = @@vehicles .select {|o| o.color_213.include? key}
      searchList.each{ |sl| sl.show}
    end
    def tiemkiemtheobienso(key)
      searchList = @@vehicles .select {|o| o.licenseNumber_213.include? key}
      searchList.each{ |sl| sl.show}
    end
  end
  managerVehicle =  VehicleManagement.new()
  
  motorbike = Motorbike.new(1,"Yamaha",2021,"2 seat",120000,"9288","Red",10,90)
  car = Car.new(2,"Volvo",2019,"esv",100,"81003030","Black","4","v12","tuv",8,"19/7/2019")
  truck = Truck.new(3,"Honda",2022,"tqp",2800,"178993","White",20)
  
  managerVehicle.addVehicles(motorbike)
  managerVehicle.addVehicles(car)
  managerVehicle.addVehicles(truck)
  managerVehicle.showInfor()
  managerVehicle.timkiemtheohang("Yamaha")
  # managerVehicle.timkiemtheomau("White")
  # managerVehicle.tiemkiemtheobienso("81003030")
  # managerVehicle.deleteVehicleById(19)
  #managerVehicle.showInfor()