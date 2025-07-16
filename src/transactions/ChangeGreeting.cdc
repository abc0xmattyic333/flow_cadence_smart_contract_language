import HelloWorld from 0x06

transaction(greeting: String) {

  prepare(acct: &Account) {
    log(acct.address)
  }

  execute {
    HelloWorld.changeGreeting(newGreeting: greeting)
  }
}
