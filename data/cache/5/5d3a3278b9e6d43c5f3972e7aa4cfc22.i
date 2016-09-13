a:6:{i:0;a:3:{i:0;s:14:"document_start";i:1;a:0:{}i:2;i:0;}i:1;a:3:{i:0;s:6:"header";i:1;a:3:{i:0;s:25:"鼠标中键映射MENU键";i:1;i:2;i:2;i:1;}i:2;i:1;}i:2;a:3:{i:0;s:12:"section_open";i:1;a:1:{i:0;i:2;}i:2;i:1;}i:3;a:3:{i:0;s:4:"code";i:1;a:3:{i:0;s:2542:"
     10 diff --git a/device b/device
     11 index 958ac24..179ea35 160000
     12 --- a/device
     13 +++ b/device
     14 @@ -1 +1 @@
     15 -Subproject commit 958ac240cbae9a2f0c7f8e638b4544d42e5a674f
     16 +Subproject commit 179ea355ab6d517eb9613395c359bb4116fdacc9
     17 diff --git a/frameworks/native/include/android/input.h b/frameworks/native/include/android/input.h
     18 index a660761..a6892d1 100755
     19 --- a/frameworks/native/include/android/input.h
     20 +++ b/frameworks/native/include/android/input.h
     21 @@ -405,6 +405,7 @@ enum {
     22      AMOTION_EVENT_BUTTON_TERTIARY = 1 << 2,
     23      AMOTION_EVENT_BUTTON_BACK = 1 << 3,
     24      AMOTION_EVENT_BUTTON_FORWARD = 1 << 4,
     25 +    AMOTION_EVENT_BUTTON_MENU = 1<<5,
     26  };
     27
     28
     29 diff --git a/frameworks/native/services/inputflinger/InputReader.cpp b/frameworks/native/services/inputflinger/InputReader.cpp
     30 index a85ed2a..d476333 100755
     31 --- a/frameworks/native/services/inputflinger/InputReader.cpp
     32 +++ b/frameworks/native/services/inputflinger/InputReader.cpp
     33 @@ -198,6 +198,12 @@ static void synthesizeButtonKeys(InputReaderContext* context, int32_t action,
     34      synthesizeButtonKey(context, action, when, deviceId, source, policyFlags,
     35              lastButtonState, currentButtonState,
     36              AMOTION_EVENT_BUTTON_FORWARD, AKEYCODE_FORWARD);
     37 +    // gavin Android Patch Begin
     38 +    // change the mouse key event, right->back, middle-> menu ....
     39 +    synthesizeButtonKey(context, action, when, deviceId, source, policyFlags,
     40 +            lastButtonState, currentButtonState,
     41 +            AMOTION_EVENT_BUTTON_MENU, AKEYCODE_MENU);
     42 +    // gavin Android Patch End
     43  }
     44
     45
     46 @@ -1425,12 +1431,15 @@ uint32_t CursorButtonAccumulator::getButtonState() const {
     47      if (mBtnLeft) {
     48          result |= AMOTION_EVENT_BUTTON_PRIMARY;
     49      }
     50 +    // gavin Android Patch Begin
     51 +    // change the mouse key event, right->back, middle-> menu ....
     52      if (mBtnRight) {
     53          result |= AMOTION_EVENT_BUTTON_BACK;
     54      }
     55      if (mBtnMiddle) {
     56 -        result |= AMOTION_EVENT_BUTTON_TERTIARY;
     57 +        result |= AMOTION_EVENT_BUTTON_MENU;
     58      }
     59 +    // gavin Android Patch End
     60      if (mBtnBack || mBtnSide) {
     61          result |= AMOTION_EVENT_BUTTON_BACK;
     62      }

";i:1;s:3:"cpp";i:2;N;}i:2;i:45;}i:4;a:3:{i:0;s:13:"section_close";i:1;a:0:{}i:2;i:2599;}i:5;a:3:{i:0;s:12:"document_end";i:1;a:0:{}i:2;i:2599;}}