class BankAccount {
  String accountNumber;
  String accountHolder;
  double balance;

  BankAccount(this.accountNumber, this.accountHolder, this.balance);

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print('Deposited $amount. New balance: $balance');
    } else {
      print('Invalid deposit amount. Please enter a positive value.');
    }
  }

  void withdraw(double amount) {
    if (amount > 0) {
      if (amount <= balance) {
        balance -= amount;
        print('Withdrew $amount. New balance: $balance');
      } else {
        print('Insufficient funds. Cannot withdraw $amount.');
      }
    } else {
      print('Invalid withdrawal amount. Please enter a positive value.');
    }
  }

  void checkBalance() {
    print('Current balance: $balance');
  }
}

void main() {
  BankAccount account = BankAccount('1234567890', 'John Doe', 1000.0);

  account.deposit(500.0);
  account.withdraw(200.0);
  account.checkBalance();
  account.withdraw(1500.0);
}
