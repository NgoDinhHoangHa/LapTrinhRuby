class PhanSo
    attr_accessor :tu213, :mau213
    def initialize (tu213,mau213)
        @tu213 = tu213
        @mau213 = mau213
    end
    def UCLN(ts213,ms213)
        ts213 = ts213.to_i.abs
        ms213 = ms213.to_i.abs
        while ts213 != ms213 
            if ts213 > ms213 
                ts213 -= ms213
            else
                ms213 -= ts213
            end
        end
        ts213
    end
    def rutGon()
        i213 = UCLN(@tu213,@mau213)
        @tu213 = @tu213 / i213
        @mau213 = @mau213 / i213
    end
    def + (other)
        ts213 = @tu213 * other.mau213 + other.tu213 * @mau213
        ms213 = @mau213 * other.mau213
        show(ts213,ms213)
    end
    def - (other)
        ts213 = @tu213 * other.mau213 - other.tu213 * @mau213
        ms213 = @mau213 * other.mau213
        show(ts213,ms213)
    end
    def * (other)
        ts213 = @tu213 * other.tu213
        ms213 = @mau213 * other.mau213
        show(ts213,ms213)
    end
    def / (other)
        ts213 = @tu213 * other.mau213
        ms213 = @mau213 * other.tu213
        show(ts213,ms213)
    end
    def show (ts213,ms213)
        ps = PhanSo.new(ts213,ms213)
        ps.rutGon
        ps.to_s
    end
    def to_s ()
        puts("#{@tu213}/#{@mau213}")
    end
end
p1 = PhanSo.new(10,3)
p2 = PhanSo.new(8,5)
print ("Tổng 2 phân số là: ")
p1 + p2
print("Hiệu 2 phân số là: ")
p1 - p2
print("Tích 2 phân số là: ")
p1 * p2
print ("Thương 2 phân số là: ")
p1 / p2