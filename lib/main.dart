// Command interface
abstract interface class Command {
  void execute();

  void undo();
}

// Receiver
class Receiver {
  void turnOn() => print("Light is on");

  void turnOff() => print("Light is off");
}

// Concrete Command 1
class LightOnCommand implements Command {
  Receiver light;

  LightOnCommand(this.light);

  @override
  void execute() => light.turnOn();

  @override
  void undo() => light.turnOff();
}

// Concrete Command 2
class LightOffCommand implements Command {
  Receiver light;

  LightOffCommand(this.light);

  @override
  void execute() => light.turnOff();

  @override
  void undo() => light.turnOn();
}

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
