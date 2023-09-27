// #[derive(Drop)]
// struct Wallet<T>{
//     balance: T

// }

// fn main(){
//     let w = Wallet{balance: 3};
// }

// struct Wallet<T> {
//     balance: T
// }

// impl WalletDrop<T, impl TDrop: Drop<T>> of Drop<Wallet<T>>;

// fn main() {
//     let w = Wallet { balance: 3 };
// }

#[derive(Drop)]
struct Wallet<T, U> {
    balance: T,
    address: U,
}


fn main() {
    let w = Wallet { balance: 3, address: 14 };
}
