# command_design_pattern_flutter

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

**Watch this video to learn how to fill this template
below:** https://www.youtube.com/watch?v=m63oH2RUvjc

**Any new Flutter Project ideas
needed?** [Choose Project Idea From This List](https://docs.google.com/document/d/1e42zZoIfJZyCBzrTzxv28fSsN0KFrMN6SDzDVBM67tc/edit?usp=sharing)

## 1. Research: Command Design Pattern Flutter

- Keywords:
    - command design pattern flutter
    - flutter design patterns book
    - flutter best design patterns
    - flutter command pattern
    - command design pattern
- Video Title: Command Design Pattern in Flutter | Behavioral Design Patterns in Flutter

## 2. Research: Competitors

**Flutter Videos/Articles**

- 239K: https://youtu.be/9qA5kw8dcSU
- https://medium.com/flutter-community/flutter-design-patterns-12-command-e199172e16eb
- https://scottt2.github.io/design-patterns-in-dart/command/
- https://dev.to/blazebrain/design-patterns-flutter-9dh
- https://www.kodeco.com/books/design-patterns-by-tutorials/v3.0/chapters/21-command-pattern
- https://devlibrary.withgoogle.com/products/flutter/repos/mkobuolys-flutter-design-patterns
- https://blog.logrocket.com/implementing-repository-pattern-flutter/

**Android/Swift/React Videos**

- 21K: https://youtu.be/UfGD60BYzPM
- 1.1K: https://youtu.be/3UDyS7RUsSk
- 4.1K: https://youtu.be/IEtwTB4Vt0E
- 272K: https://youtu.be/7Pj5kAhVBlg
- 239K: https://youtu.be/9qA5kw8dcSU
- 12K: https://youtu.be/Ludu0Ry2_0w
- Playlist: https://www.youtube.com/watch?v=fuO-uOmb7-8&list=PLpvpznviFFFJqPD0x2xWsfr4bWaJqR_G0
- 2.3K: https://youtu.be/6KeBo8Yyhws
- 764: https://youtu.be/Y2CNME3JGoM
- Playlist: https://www.youtube.com/watch?v=ScZeuF6taT0&list=PLTgRMOcmRb3M2cPN_6iDDOYn8FONTkc3N
- https://www.tutorialspoint.com/design_pattern/command_pattern.htm
- https://www.digitalocean.com/community/tutorials/command-design-pattern
- https://www.baeldung.com/java-command-pattern
- https://www.javatpoint.com/command-pattern
- https://www.geeksforgeeks.org/command-pattern/
- https://medium.com/javarevisited/java-developer-guide-to-begin-with-command-design-pattern-8b0793b1a006
- https://refactoring.guru/design-patterns/command/swift/example
- https://medium.com/cleansoftware/implement-the-command-design-pattern-in-swift-5-a3a07352af09
- https://serialcoder.dev/text-tutorials/software-engineering/design-patterns/the-command-design-pattern-in-swift/
- https://agostini.tech/2018/06/03/design-patterns-in-swift-command-pattern/
- https://michaelabadi.com/articles/command-pattern-swift/
- https://abhiaiyer.medium.com/the-command-pattern-c51292e22ea7
- https://javascript.plainenglish.io/design-patterns-in-react-native-component-patterns-785d585ac3f

**Great Features**

- **Encapsulation**: The command pattern encapsulates the request as an object. This makes the code
  more flexible and easier to maintain.
- **Loose coupling**: The command pattern decouples the sender of a request from the receiver of the
  request. This makes the code more flexible and easier to change.
- **Reusability**: The command pattern can be used to reuse commands. This can save time and effort
  when developing code.
- **Extensibility**: The command pattern can be extended to support new commands. This can be done
  without changing the existing code.
- **Undo/redo**: The command pattern can be used to implement undo/redo operations. This can be
  useful for applications that need to be able to undo or redo actions.

**Problems from Videos**

- NA

**Problems from Flutter Stackoverflow**

- https://stackoverflow.com/questions/2015549/using-command-design-pattern
- https://stackoverflow.com/questions/1154935/command-pattern-returning-status
- https://stackoverflow.com/questions/6064116/command-pattern-seems-needlessly-complex-what-am-i-failing-to-understand
- https://stackoverflow.com/questions/61747238/command-pattern-is-the-command-a-single-instance
- https://stackoverflow.com/questions/4334696/command-pattern-purpose
- https://stackoverflow.com/questions/37773648/what-does-the-client-do-in-command-pattern

## 3. Video Structure

**Main Points / Purpose Of Lesson**

1. In this video, you will learn how to use command design pattern to encapsulates a request as an
   object and how it is useful for decoupling the sender of a request from the receiver of the
   request.
2. Main points:
    - Receiver
    - Invoker
    - Command
    - Concrete Command
    - It can be used to decouple requests and receivers, and to implement undo/redo operations.
3. Command pattern is suitable for scenarios where there is a need to decouple the requester of an
   action from the executor, support undo/redo functionality, enable queuing or logging of requests,
   or provide a flexible and extensible way to handle different operations or user interactions.

**The Structured Main Content**

# Command Design Pattern

## Definition

Command, also known as Action or Transaction, is one of the behavioural design patterns.

Encapsulate a request as an object, thereby letting you parameterize clients with different
requests, queue or log requests, and support undoable operations.

The **Sender** triggers the assigned Command instead of sending the request directly to the **
Receiver** - a simple or complex object which contains the actual logic for the request to be
fulfilled. A specific Command passes the call to the receiver which does the actual work. As a
result, commands become a convenient middle layer that reduces coupling between the UI and business
logic layers.

## Analysis

**Command** — declares an interface for executing an operation.
**Concrete Commands** (Command1/Command2) — implement various kinds of requests by invoking the
corresponding operation(s) on the Receiver.
**Invoker or Sender** — the sender class which triggers the Command instead of sending the request
directly to the Receiver.
**Receiver** — knows how to perform the operations associated with carrying out a request. Any class
may serve as a Receiver.
**Client** — creates a Concrete Command object and sets its Receiver.

## Implementation

1. In `main.dart` file, define a **Command** class for executing execute() and undo() methods:

```dart
// Command interface
abstract interface class Command {
  void execute();

  void undo();
}
```

2. Define a **Receiver** class with with turnOn() and turnOff() methods for a light. It knows how to
   perform the operations associated with carrying out a request.

```dart
// Receiver
class Receiver {
  void turnOn() => print("Light is on");

  void turnOff() => print("Light is off");
}
```

3. Define Concrete Command 1 as `LightOnCommand` which implements Command class and will override
   the Command class methods. execute() will call turnOn and undo() will call turnOff.

   Initialize Receiver class which is actually a light and define default
   constructor `LightOnCommand`.

```dart
// Concrete Command 1
class LightOnCommand implements Command {
  Receiver light;

  LightOnCommand(this.light);

  @override
  void execute() => light.turnOn();

  @override
  void undo() => light.turnOff();
}
```

4. Define Concrete Command 2 as `LightOffCommand` which implements Command class and will override
   the Command class methods. execute() will call turnOff and undo() will call turnOn.

   Initialize Receiver class which is actually a light and define default
   constructor `LightOffCommand`.

```dart
// Concrete Command 2
class LightOffCommand implements Command {
  Receiver light;

  LightOffCommand(this.light);

  @override
  void execute() => light.turnOff();

  @override
  void undo() => light.turnOn();
}
```

5. Define Invoker or Sender class by initializing Command class with commandHistory as List<Command>
   type. Default constructor of Invoker class is calling list of command.

This class triggers the Command instead of sending the request directly to the Receiver.

use setter for setting a new command from concrete classes.

`pressButton()` will execute command according to the given concrete class which is implementing
Command class and it will add this command in commandHistory list.

`pressUndoButton()` will execute command according to the given concrete class which is
implementing Command class. If commandHistory is empty then print no commands to undo otherwise
use `commandHistory.removeLast()` with `undo()` function. It will remove the last command from
command history and then will perform undo() function.

```dart
// Invoker or Sender
class Invoker {
  late Command command;
  List<Command> commandHistory;

  Invoker(this.commandHistory);

  void setCommand(Command command) => this.command = command;

  void pressButton() {
    command.execute();
    commandHistory.add(command);
  }

  void pressUndoButton() {
    if (commandHistory.isNotEmpty) {
      final previousCommand = commandHistory.removeLast();
      previousCommand.undo();
    } else {
      print("No commands to undo");
    }
  }
}
```

6. In `main.dart` file, there is client side code:

```dart
// Client
void main() {
  final invoker = Invoker([]);
  final receiver = Receiver();

// Turning on the light
  final lightOnCommand = LightOnCommand(receiver);
  invoker.setCommand(lightOnCommand);
  invoker.pressButton();
  print('commandHistory: ${invoker.commandHistory}');

// Turning off the light
  final lightOffCommand = LightOffCommand(receiver);
  invoker.setCommand(lightOffCommand);
  invoker.pressButton();
  print('commandHistory: ${invoker.commandHistory}');

// Undo the last command
  invoker.pressUndoButton();
  print('commandHistory: ${invoker.commandHistory}');
  invoker.pressUndoButton();
  print('commandHistory: ${invoker.commandHistory}');
  invoker.pressUndoButton();
}
```

- Initialize Invoker() class with empty list of commandHistory. `invoker` class object triggers the
  Command instead of sending the request directly to the Receiver.
- Initialize `lightOnCommand` object of `LightOnCommand` class which accepts `receiver` object of
  type Receiver() class.
- Initialize `lightOffCommand` object of `LightOffCommand` class which accepts `receiver` object of
  type Receiver() class.
- Set `lightOnCommand` and `lightOffCommand` with setter of invoker class and then call the
  pressButton() method of invoker class to execute the `command` and add it in `commandHistory`.

  In this way, invoker/sender class does not directly call the receiver class but it calls command
  class to set a specific command on receiver class.
- You can also print invoker commandHistory after every single step.
- After executing `lightOffCommand` and `lightOnCommand`, call `pressUndoButton()` method of invoker
  class:
    - pressUndoButton will delete the last command from list of commandHistory.
    - pressUndoButton will undo the last command from list of commandHistory using command class
      undo method.
    - if commandHistory list is empty then print no commands to undo.