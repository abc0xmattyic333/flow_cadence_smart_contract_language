// HelloWorld.cdc
//
// Welcome to Cadence! This is one of the simplest programs you can deploy on Flow.
//
// The HelloWorld contract contains a single string field and a public getter function.
//
// Follow the "Hello, World!" tutorial to learn more: https://docs.onflow.org/cadence/tutorial/02-hello-world/
access(all) contract HelloWorld {
  // Declare a public field of type String.
  //
  // All fields must be initialized in the init() function.
  access(all) var greeting: String

  // Public function that sets our friendly greeting!
  // In your own applications you may want to tighten up this access control.
  access(all) fun changeGreeting(newGreeting: String) {
    self.greeting = newGreeting
  }

  // Public function that returns our friendly greeting!
  access(all) fun hello(): String {
      return self.greeting
  }

  // The init() function is required if the contract contains any fields.
  init() {
    self.greeting = "Hello, World!"
  }
}
// The init() function is called when the contract is deployed.
// It initializes the `greeting` field with a default value.    
// You can change the greeting by calling the `changeGreeting` function.
// After deploying the contract, you can call the `hello` function to retrieve the greeting.
// This contract is a simple example of how to create and interact with a contract in Cadence