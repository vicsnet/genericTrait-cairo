// Given a list of T get the smallest one.
// The PartialOrd trait implements comparison operations for T

fn smallest_element<T, impl TPartialOrd: PartialOrd<T>, impl TCopy: Copy<T>, impl TDrop: Drop<T>>(
    list: @Array<T>
) -> T {
    // This represents the smallest element through the iteration
    // Notice that we use the desnap (*) operator

    let mut smallest = *list[0];

    // the index we will use to move through the list

    let mut index = 1;

    // Iterate through the whole list storing the smallest

    loop {
        if index >= list.len() {
            break smallest;
        }
        if *list[index] < smallest {
            smallest = *list[index];
        }
        index = index + 1;
    }
}

fn main() {
    let mut list: Array<u8> = ArrayTrait::new();
    list.append(5);
    list.append(3);
    list.append(10);

    let s = smallest_element(@list);
    assert(s == 3, 0);
}
