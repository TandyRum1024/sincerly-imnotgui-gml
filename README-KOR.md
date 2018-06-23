![imnotgui logo](https://TandyRum1024.github.io/imnotgui_huge.png)

# Sincerely ImNotGUI;


*Sincerely ImNotGUI (또는 Im!GUI)* 는, *게임메이커: 스튜디오 1* 을 위한 **직접 모드 GUI** 이에요.
*게임메이커: 스튜디오 1* 에서 더 쉬운 디버깅을 위해 개인적으로 만들어졌습니다.

###### *그리고 [Omar Cornut 님의 Dear ImGUI](https://github.com/ocornut/imgui) 의 패러디이기도 해요. (이름을 보세요!)*
&NewLine;

---

### 기능:
* *"빠른"* UI 드로잉 - 겜메의 SpriteBatch 시스템을 학대하여 더 빠른 속도를 냅니다.
* *"간단한"* UI - ***드로우 이벤트***에서 모든걸 해결합니다: 그냥 코드로 짜듯이 UI를 구성하실 수 있어요.

예를들어 이 코드는:

![An example](https://TandyRum1024.github.io/imnotgui/example-code.png)

이런 결과를 초래해요 *(심지어 클릭도 되요!)*:
![A result](https://TandyRum1024.github.io/imnotgui/example-result.png)

너무 단순하다고요?

아래 이 사진은 ***ImNotGui*** 로 만들어졌어요! :
![wow](https://TandyRum1024.github.io/imnotgui/gal2.png)
###### *(네 뭐 그냥 그렇다고요..)*
&NewLine;
##### **Im!GUI** 는 5개의 구성요소들로 만들어져있어요:

* **Label**

![demo](https://TandyRum1024.github.io/imnotgui/example-label.png)

*draw_text_colour 를 더 쉽게 쓸 수 있도록 한 스크립트 모음이에요.*

***사용법 :***

```
iui_label(x, y, string, colour);
iui_label_alpha(x, y, string, colour, alpha);
iui_label_transform(x, y, string, x-scale, y-scale, rotation, colour, alpha);
iui_label_shadow(x, y, string, colour, shadow-x, shadow-y, shadow-colour);
iui_label_underline(x, y, string, colour, line-thickness, line-offset-y); // line-thickness : 밑줄 굵기, line-offset-y : 밑줄 위치
iui_label_ext(x, y, string, colour, alpha, line-seperation, width); // = draw_text_ext();
```

* **Button**

![demo](https://TandyRum1024.github.io/imnotgui/example-button.png)

*누를 수 있는 버튼이며, ID 로 서로를 구별해요. (그리고 ***안보이는*** 버전도 있어요! 따로 버튼을 꾸미시고 싶으실때나 안보이는 UI를 구현할떄(?!?!?!?) 참 좋지요.)*

***사용법 :***

```
iui_button(x, y, width, height, string); // string 인자는 ID 와 LABEL 둘 다 포함하는 겁니다. "ID와 LABEL  시스템" 을 참고하세요!
iui_button_nodraw(x, y, width, height, string); // 1도 안보이는 무셔운 버튼;;
```

* **Tabs**

![demo](https://TandyRum1024.github.io/imnotgui/example-tabs.png)

*여러개의 "탭" (버튼이나 마찬가지에요.) 들 중 하나만 선택 할 수 있는 요소에요.*

***사용법 :***

```
iui_tab(x, y, width, height, array-of-string, tab-index, trim-mode);

// array-of-string : 문자들이 들어있는 배열입니다.
// 간편한 이용을 위해 pack() 스크립트를 넣었는데요:
// pack("A", "B", "C") = {"A", "B", "C"}
// 이렇게 배열을 만들어주는 스크립트에요.

// tab-index : 활성화된 탭이에요.

// trim-mode : 글자의 너비가 width 값을 넘어버리면 (= 흘러 넘치면) 어떻게 해야할지 정해주는 인자에요.
// 값은 0 ~ 2 인데 :
// 0 - 아무것도 안하고 그냥 흘러넘치게 냅둬요.
// 1 - 글자를 잘라내요. (EX : "웅앵웅 초키포키" -> "웅앵웅...")
// 2 - 글자를 담은 "탭" 의 너비를 글자에 맞춰요.

// NOTE : 이 스크립트는 현재 탭을 반환하는데요, 변수를 생성해 같이 쓰시는게 정신건강에 좋습니다, 이렇게요:
foo = iui_tab(x, y, width, height, array-of-string, foo, trim-mode);
```

* **Slider**

![demo](https://TandyRum1024.github.io/imnotgui/example-slider.png)

*디제잉 하는 아조씨마냥 위아래로 그리고 좌우로 옮겨 값을 정할수 있는 슬라이더 요소에요.*

***사용법 :***

```
// 수평
iui_slider_h(x, y, value, width, min-value, max-value, ID); // "ID와 LABEL  시스템" 을 참고하세요!
// 수직
iui_slider_v(x, y, value, height, min-value, max-value, ID);
```

* **TextBox**

![demo](https://TandyRum1024.github.io/imnotgui/example-textbox.png)

*유저가 직접 값을 키보드로 입력할 수 있는 요소에요. (숫자만 넣을 수 있는 버전도 있어요!)*

***사용법 :***

```
// horizontal
iui_textbox(x, y, width, height, text, ID); // "ID와 LABEL  시스템" 을 참고하세요!
iui_textbox_numberonly(x, y, width, height, text, ID); // 숫자만 가능한 버전. 유저는 숫자 (ex : 42) 나 소숫점 (ex : 3.14) 또는 부호 (+ & -) 만 넣을 수 있는겁니다.

// NOTE : 이 스크립트는 textbox에 들어있는 문자열을 반환하는데요, 변수를 생성해 같이 쓰시는게 정신건강에 좋습니다, 이렇게요:
bar = iui_textbox(x, y, width, height, bar, ID);
```

---
### ***ID*** 와 ***LABEL*** 시스템
##### "###" 와 "##" 를 이용해 몇몇 요소(ex : 버튼... 밖에 없네요) 의 ID 와 실제로 보여지는 것을 정할 수 있어요. (아래 참고)
![demo](https://TandyRum1024.github.io/imnotgui/example-id-label.png)

---
### 사용법:

`EXTENSION_GOES_HERE` 폴더에 있는 `IMNOTGUI.gmez` 파일을, 겜메에 임포트 하시면 되요.

***쓰시기 전에 :***

스크립트 `iui_init();` 을 당신의 *컨트롤러 오브젝트의 Create 이벤트* 에서 실행 시켜서 **ImNotGUI**를 초기화 시키세요.

스크립트 `iui_update_io();`을 당신의 *컨트롤러 오브젝트의 Step 이벤트* 에서 실행 시켜서 키보드 입력 등등을 업데이트 시켜주세요.

이제 *컨트롤러 오브젝트의* ***Draw 이벤트*** 에서 당신의 UI를 작업하시면 되요!

***하지만*** 그 전에 먼저 `iui_begin();` 으로 ImNotGUI를 준비시켜주시고, 모든 GUI 작업이 완료되셨다면 `iui_end();` 로 ImNotGUI가 다음 프레임에 준비 할 수 있게 마무리 시켜 주세요.

***대략 이런식으로 쓰여요 :***
```
/// Create 이벤트 ///
iui_init();
/* 그리고 Create 이벤트에 들어갈 만 한 여러가지들... */

/// Step 이벤트 ///
iui_update_io();
/* 그리고 Step 이벤트에 들어갈 만 한 여러가지들... */

/// Draw 이벤트 ///
iui_begin(); // ImNotGUI 작동!

	iui_button(...);
	iui_rect(...);
	iui_hfashkfgjhfgaskdgfjsfdgjdghsfkdgjd(...);

iui_end(); // ImNotGUI 끝!
```

**ImNotGUI** 의 "시연용" 프로젝트도 봐보세요! `demo-project` 폴더에 *게임메이커: 스튜디오 1* 로 만들어진 프로젝트가 있을거에요.

(아니면 `DEMO.exe` 를 실행시켜서 상호작용 가능한 데모를 체험하실 수 있습니다.)

데모를 참고 하면서 어떻게 쓰이는지 참고 하세요!

글구 막 가지고 놀아보세요!

----------

### 갤러리

![gallery picture](https://TandyRum1024.github.io/imnotgui/logo-small.png)
![gallery picture numero uno](https://TandyRum1024.github.io/imnotgui/gal1.png)
![gallery picture numero dos](https://TandyRum1024.github.io/imnotgui/gal2.png)
![gallery picture numero tres](https://TandyRum1024.github.io/imnotgui/gal-demo-button.png)
![gallery picture numero tres-2](https://TandyRum1024.github.io/imnotgui/gal-demo-slider.png)

---

### 잡다한것들:

제 [트위터 (영어로 주로 올리지만 뭐 어때요)](https://twitter.com/ZIKBAKGURI) 구경도 하고 가세요!

프로젝트 관련된거나 전혀 관련되지 않은 쓰잘떼기 없는 무언가를 올릴수도?

그리고 제 메일주소입니다 : *yubin2892@gmail.com*

###### (별로 체크 안하지만요 엌ㅋㅋ컼)

그리고 가장 중요한건, ***즐거운 코딩 하세요!***

---

### TODO:

- [x] 데모 만들기
- [x] 데모 exe
- [ ] 할일
- [x] 할 일 할거 할일랄ㄹ라라라라라라ㅏㄹㄹㄹ라랄

---

###### ◆ 2018/05/27 MilkForDunk @ 모든 저작권이 있었으면 좋겠어요 =D