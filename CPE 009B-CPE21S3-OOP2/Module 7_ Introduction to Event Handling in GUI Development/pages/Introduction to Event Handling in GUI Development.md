A Graphical User Interface (GUI) application is a program that the user can interact with through graphics (windows, buttons, text fields, checkboxes, images, icons, etc..) such as the Desktop GUI of Windows OS by using a mouse and keyboard unlike with a Command-line program or Terminal program that support keyboard inputs only.

In PyQt, event handling is composed of a signal, and a slot PyQt5 widget(buttons, labels, comboBox) which can emit a signal, an alert that something has happened for example: The button was clicked, label was hovered, a selection was made in the combo box. Signals do not do anything on their own, but they can be connected to functions where codes can be called once the signal occurs. So the signal will be connected to a slot (PyQt5 Widget).

A Signal is emitted when something of potential interest happens. A slot is a Python callable. If a signal is connected to a slot then the slot is called when the signal is emitted. If a signal is not connected, then nothing happens. The code (or component) that emits the signal does not know or care if the signal is being used.

The signal/slot mechanism has the following features.
• A signal may be connected to many slots.
• A signal may also be connected to another signal.
• Signal arguments may be any Python type.
• A slot may be connected to many signals.
• Connections may be direct (ie. synchronous) or queued (ie. asynchronous).
• Connections may be made across threads.
• Signals may be disconnected.

Source: PyQt5 Documentation [https://www.riverbankcomputing.com/static/Docs/PyQt5/signals_slots.html](https://www.riverbankcomputing.com/static/Docs/PyQt5/signals_slots.html)