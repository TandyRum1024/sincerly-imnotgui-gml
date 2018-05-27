![imnotgui logo](https://TandyRum1024.github.io/imnotgui_huge.png)

# Sincerely ImNotGUI;


Sincerely ImNotGUI (Also stylized as Im!GUI) is collection of scripts for immediate GUI, For *GameMaker: Studio*.

Originally developed for easier debugging on *GameMaker Studio: 1*...

It is also a parody (sort of) of [Omar Cornut's Dear ImGUI.](https://github.com/ocornut/imgui)

### Features:
* *"Fast"* UI drawing accomplished by abusing GameMaker's Sprite-batch
* *Simple* UI system suitable for quick debugging. No need to setup your UI elements at first for quick debug!

The code:

![An example](https://TandyRum1024.github.io/imnotgui/example1.png)

And the result:

![A result](https://TandyRum1024.github.io/imnotgui/example1-result.png)

##### **Im!GUI** Comes with 5 elements:

* **Label** - A text!
* **Button** - A clicky button! (It comes with *no-draw* variant, Which can be used for "custom" button-like behaviour.)
* **Tabs** - A collection of "Buttons" that acts like one element that returns the index of currently active button, Which can be used for things like switching view panels and such
* **Slider** - An element that can be dragged to adjust it's value
* **TextBox** - An input field which the Users can type into. (Also comes with number-only variant.)


### How-to use on your GameMaker project:

Just import the `IMNOTGUI.gmez` file in the GameMaker : Studio.