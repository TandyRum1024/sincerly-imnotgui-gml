### [한국인이세요? 한국어 버젼도 있어요!](README-KOR.md)


![imnotgui logo](https://TandyRum1024.github.io/imnotgui_huge.png)

# Sincerely ImNotGUI;


Sincerely ImNotGUI (Also stylized as Im!GUI) is collection of scripts for immediate GUI, For *GameMaker: Studio*.
Originally developed for easier debugging on *GameMaker: Studio: 1*...
###### It is also a parody (sort of) of [Omar Cornut's Dear ImGUI.](https://github.com/ocornut/imgui)
&NewLine;

---

### Features:
* *"Fast"* UI drawing - accomplished by abusing GameMaker's Sprite-batch
* *"Simple"* UI system - Everything goes into the ***DRAW event!*** : suitable for quick debugging. No need to setup your UI elements at first for quick debug!

This code:

![An example](https://TandyRum1024.github.io/imnotgui/example-code.png)

Produces this result:

![A result](https://TandyRum1024.github.io/imnotgui/example-result.png)

***Looks boring?*** Well, Take a gander at this beauty, It's made with ***Im!Gui***!

![wowee lad](https://TandyRum1024.github.io/imnotgui/gal2.png)

###### *(just saying, Y'know.)*
&NewLine;
##### **Im!GUI** Comes with 5 elements:

* **Label**

![demo](https://TandyRum1024.github.io/imnotgui/example-label.png)

*A wrapper for draw_text_colour.*

***Usage :***

```
iui_label(x, y, string, colour);
iui_label_alpha(x, y, string, colour, alpha);
iui_label_transform(x, y, string, x-scale, y-scale, rotation, colour, alpha);
iui_label_shadow(x, y, string, colour, shadow-x, shadow-y, shadow-colour);
iui_label_underline(x, y, string, colour, line-thickness, line-offset-y); // line-thickness : underline thickness, line-offset-y : offset for underline
iui_label_ext(x, y, string, colour, alpha, line-seperation, width); // = draw_text_ext();
```

* **Button**

![demo](https://TandyRum1024.github.io/imnotgui/example-button.png)

*A clicky button, With unique ID. (It comes with ***no-draw*** variant, Which can be used for "custom" button-like behaviour.)*

***Usage :***

```
iui_button(x, y, width, height, string); // The string means both ID and LABEL... see the section "The ID and LABEL system" for explaination.
iui_button_nodraw(x, y, width, height, string); // Spooky invisible button D:
```

* **Tabs**

![demo](https://TandyRum1024.github.io/imnotgui/example-tabs.png)

*A collection of "Buttons" that acts like one element that returns the index of currently active button, Which can be used for things like switching view panels and such.*

***Usage :***

```
iui_tab(x, y, width, height, array-of-string, tab-index, trim-mode);

// array-of-string : the array containing texts for tabs
// I've included the pack() script for easier array creation :
// pack("A", "B", "C") = {"A", "B", "C"}
// It's a script for making array.

// tab-index : The current tab

// trim-mode : This determines the behaviour when text in tab "Overflows" :
// Value ranges in 0 ~ 2 :
// 0 - Do nothing, Let it Overflow.
// 1 - Trim the text. (EX : "Gnome clongis" -> "Gnome cl...")
// 2 - Expands the Tab's width to fit the text.

// NOTE : this script also returns current tab index; Better use with variable, like this :
foo = iui_tab(x, y, width, height, array-of-string, foo, trim-mode);
```

* **Slider**

![demo](https://TandyRum1024.github.io/imnotgui/example-slider.png)

*An element that can be dragged to adjust it's value*

***Usage***

```
// horizontal
iui_slider_h(x, y, value, width, min-value, max-value, ID); // the ID system is same as button.. See below.
// vertical
iui_slider_v(x, y, value, height, min-value, max-value, ID);
```

* **TextBox**

![demo](https://TandyRum1024.github.io/imnotgui/example-textbox.png)

*An input field which the Users can type into. (Also comes with number-only variant.)*

***Usage***

```
// horizontal
iui_textbox(x, y, width, height, text, ID); // see below for explaination for ID
iui_textbox_numberonly(x, y, width, height, text, ID); // number only, The user can only input numbers (ex: 42), floating point numbers (ex : 3.14), signs (+ & -) in them.

// NOTE : this script also returns the current text; Better used with variable, like this :
bar = iui_textbox(x, y, width, height, bar, ID);
```

---
### The ***ID*** and ***LABEL*** system
##### You can use "###" and "##" for set the ID of some elements (ex : buttons) to your desired one. (see below)
![demo](https://TandyRum1024.github.io/imnotgui/example-id-label.png)

---
### How-to use:

Just import the `IMNOTGUI.gmez` file from the folder `EXTENSION_GOES_HERE`, In the GameMaker: Studio.

Call script `iui_init();` to *initialize* **ImNotGUI** in your *controller object's Create event.*

Call script `iui_update_io();` to *update Inputs* in your *controller object's Step event.*

Now you can adding stuff / designing your GUI in the ***Draw event*** of your *controller object!*

***BUT*** before using any of `iui_*` (aka GUI-related) scripts in the ***Draw event***, You must call `iui_begin();` to Ready up the ImNotGUI...

And after finishing your UI, You must call `iui_end();` to help ImNotGUI prepare for next frame.

***Example :***
```
/// Create event ///
iui_init();
/* And much more stuff you would normally shove into your Create event... */

/// Step event ///
iui_update_io();
/* And much more stuff you would normally shove into your Step event... */

/// Draw event ///
iui_begin(); // ImNotGUI Activiated!

	iui_button(...);
	iui_rect(...);
	iui_hfashkfgjhfgaskdgfjsfdgjdghsfkdgjd(...);

iui_end(); // Endut! hoch hech
```

You can check the "demo" project of **ImNotGUI** in `demo-project`, For *GameMaker: Studio 1.*

(Or you can run `DEMO.exe` to see the interactive demo.)

Fiddling with the *demo*, You can out check how things work and how you should use it.

Feel free to play around with it!

----------

### Gallery

![gallery picture](https://TandyRum1024.github.io/imnotgui/logo-small.png)
![gallery picture numero uno](https://TandyRum1024.github.io/imnotgui/gal1.png)
![gallery picture numero dos](https://TandyRum1024.github.io/imnotgui/gal2.png)
![gallery picture numero tres](https://TandyRum1024.github.io/imnotgui/gal-demo-button.png)
![gallery picture numero tres-2](https://TandyRum1024.github.io/imnotgui/gal-demo-slider.png)

---

### Misc:

Check out my [Twitter](https://twitter.com/ZIKBAKGURI) for yet another projects n' more!

Also you can contact me via my mail : *yubin2892@gmail.com*

###### (I rarely check my email, Though.)

and most importantly, ***GLHF!***

---

### TODO:

- [x] Actually finish the demo
- [x] Add an excutable demo binary
- [ ] todo
- [x] dododo dododododooodododododododdodo

---

###### ◆ 2018/05/27 MilkForDunk @ All the lefts belongs to me =D