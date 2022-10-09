class TaiLieu
    attr_accessor :id213, :nxb213, :number213
    def initialize (id213, nxb213,number213)
        @id213 = id213
        @nxb213 = nxb213
        @number213 = number213
    end
    def show 
        puts ("Id sách: #{@id213}")
        puts ("Nhà xuất bản: #{@nxb213}")
        puts ("Số bản phát hành: #{@number213}")
    end
end
class Sach < TaiLieu
    attr_accessor :tentg213, :sotrang213
    def initialize (id213, nxb213,number213,tentg213,sotrang213)
        super(id213, nxb213,number213)
        @tentg213 = tentg213
        @sotrang213 = sotrang213    
    end
    def show
        super
        puts ("Tên tác giả: #{@tentg213}")
        puts ("Số trang: #{sotrang213}")
    end
end
class Bao < TaiLieu
    attr_accessor :ngayph213
    def initialize (id213,nxb213,number213,ngayph213)
        super(id213,nxb213,number213)
        @ngayph213 = ngayph213
    end
    def show
        super
        puts ("Ngày phát hành: #{@ngayph213}")
    end
end
class TapChi < TaiLieu
    attr_accessor :soph213, :thangph213
    def initialize (id213,nxb213,number213,soph213,thangph213)
        super(id213,nxb213,number213)
        @soph213 = soph213
        @thangph213 = thangph213
    end
    def show
        super
        puts ("Số phát hành: #{@soph213}")
        puts ("Tháng phát hành: #{@thangph213}")
    end
end
class QuanLySach
    @@tailieu = Array.new
    def themTaiLieu(tailieu)
        @@tailieu.push(tailieu)
    end
    def xoatheoId (id)
        @@tailieu.delete_if {|x| x.id213 == id}
    end
    def showTT()
        @@tailieu.each {|tailieu| tailieu.show}
        puts ("<---------******---------->")
    end
    def timkiemtheohang(key)
        searchList = @@vehicles .select {|o| o.sotrang213.include? key}
        searchList.each{ |sl| sl.show}
    end
    def timkiemTacGia(key)
        searchList = @@tailieu .select {|o| o.tentg213.include? key}
        searchList.each{|sl| sl.show}
    end
    def timkiemSoPhatHanh(key)
        searchList = @@tailieu .select {|o| o.soph213.include? key}
        searchList.each{|sl| sl.show}
    end
end

quanLySach = QuanLySach.new()
sach = Sach.new(1, "Kim Đồng","100","Nguyễn Đăng Khoa",200)
tapChi = TapChi.new(1,"Kim Đồng", "50","1242H34AB","2/2020")
bao = Bao.new(2,"P.V", "20","02/01/2022")

quanLySach.themTaiLieu(sach)
puts ("<---------******---------->")
quanLySach.themTaiLieu(tapChi)
puts ("<---------******---------->")
quanLySach.themTaiLieu(bao)
puts ("<---------******---------->")
quanLySach.showTT()
puts ("<---------******---------->")
quanLySach.timkiemtheoSoTrang("20")
puts ("<---------******---------->")
quanLySach.timkiemTacGia("Nguyễn Đăng Khoa")
puts ("<---------******---------->")
quanLySach.timkiemSoPhatHanh("1242H34AB")
puts ("<---------******---------->")
quanLySach.xoatheoId(2)
quanLySach.showTT()
