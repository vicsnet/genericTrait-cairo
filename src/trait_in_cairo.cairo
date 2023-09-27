use debug::PrintTrait;

#[derive(Drop, Copy)]
struct Rectangle {
    height: u64,
    width: u64,
}

trait ShapeGeometry {
    fn boundary(self: Rectangle) -> u64;
    fn area(self: Rectangle) -> u64;
}

// #[generate_trait]
impl RectangleGeometry of ShapeGeometry {
    fn boundary(self: Rectangle) -> u64 {
        2 * (self.height + self.width)
    }

    fn area(self: Rectangle) -> u64 {
        self.height * self.width
    }
}

fn main() {
    let rect = Rectangle { height: 5, width: 10 };

    //First way, as a method on the struct instance
    let area1 = rect.area();

    // Second way, from the implmentation

    let area2 = RectangleGeometry::area(rect);

    // third way from the trait
    let area3 = ShapeGeometry::area(rect);

    // area 1 has same value as area2 and area3

    area1.print();
    area2.print();
    area3.print();
}


