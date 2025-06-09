## Local state with setState()

- Local state refers to state that is contained within a **single widget** and **not shared outside** of it.
- setState() method is used to update that state in a StatefulWidget.

## Scoped State with InheritedWidget

- Scoped state refers to state that is shared within a specific part of the widget tree
- InheritedWidget is Flutter's way of passing data down the widget tree without needing to pass it manually through constructors.
  How it works?:
- You create a class that extends InheritedWidget.
- Place it high in the widget tree.
- Child widgets can access it using of(context) and will rebuild when the data changes.

## BloC

- event, bloc, state

## Structure

    lib/
    ├── bloC/
    │   ├── todo_bloc.dart
    │   ├── todo_event.dart
    │   └── todo_state.dart
    ├── model/
    │   └── todo.dart
    └── main.dart
