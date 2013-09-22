#|
   Copyright 2013 Robert Burghart

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
|#

(defpackage :Lunette.Examples.btnlook
  (:use #:common-lisp
        #:cffi
        #:Lunette)
  (:import-from :Lunette.System
                #:loword
                #:hiword)
  (:import-from :Lunette.Graphics
                #:SYSTEM_FIXED_FONT
                #:TRANSPARENT

                #:RECT
                #:left
                #:top
                #:right
                #:bottom

                #:GetStockObject
                #:SelectObject
                #:SetBkMode
                #:InvalidateRect
                #:with-dc)
  (:import-from :Lunette.Controls
                #:BS_PUSHBUTTON
                #:BS_DEFPUSHBUTTON
                #:BS_CHECKBOX
                #:BS_AUTOCHECKBOX
                #:BS_RADIOBUTTON
                #:BS_3STATE
                #:BS_AUTO3STATE
                #:BS_GROUPBOX
                #:BS_AUTORADIOBUTTON
                #:BS_OWNERDRAW

                #:ScrollWindow)
  (:import-from :Lunette.Messages
                #:WM_SIZE
                #:WM_CREATE
                #:WM_DRAWITEM
                #:WM_COMMAND)
  (:import-from :Lunette.Dialogs
                #:GetDialogBaseUnits)
  (:import-from :Lunette.Graphics.Text
                #:text-out)
  (:import-from :Lunette.Windows
                #:WS_CHILD
                #:WS_VISIBLE

                #:GetClientRect
                #:ValidateRect)
    (:export #:winmain))

(defpackage :Lunette.Examples.btnlook1
  (:use #:common-lisp
        #:cffi
        #:Lunette)
  (:import-from :Lunette.System
                #:loword
                #:hiword)
  (:import-from :Lunette.Graphics
                #:SYSTEM_FIXED_FONT
                #:TRANSPARENT
                #:COLOR_BTNFACE
                #:COLOR_WINDOWTEXT

                #:RECT
                #:left
                #:top
                #:right
                #:bottom

                #:GetStockObject
                #:SelectObject
                #:SetBkMode
                #:InvalidateRect
                #:with-dc
                #:GetSysColor
                #:SetBkColor)
  (:import-from :Lunette.Controls
                #:BS_PUSHBUTTON
                #:BS_DEFPUSHBUTTON
                #:BS_CHECKBOX
                #:BS_AUTOCHECKBOX
                #:BS_RADIOBUTTON
                #:BS_3STATE
                #:BS_AUTO3STATE
                #:BS_GROUPBOX
                #:BS_AUTORADIOBUTTON
                #:BS_OWNERDRAW

                #:ScrollWindow)
  (:import-from :Lunette.Messages
                #:WM_SIZE
                #:WM_CREATE
                #:WM_DRAWITEM
                #:WM_COMMAND
                #:WM_SYSCOLORCHANGE)
  (:import-from :Lunette.Dialogs
                #:GetDialogBaseUnits)
  (:import-from :Lunette.Graphics.Text
                #:text-out
                #:SetTextColor)
  (:import-from :Lunette.Windows
                #:WS_CHILD
                #:WS_VISIBLE

                #:GetClientRect
                #:ValidateRect)
    (:export #:winmain))

(defpackage :Lunette.Examples.owndraw
  (:use #:common-lisp
        #:cffi
        #:Lunette)
  (:import-from :Lunette.System
                #:POINT
                #:X
                #:Y

                #:loword
                #:hiword)
  (:import-from :Lunette.Graphics
                #:WHITE_BRUSH
                #:BLACK_BRUSH
                #:ODS_SELECTED
                #:ODS_FOCUS

                #:DRAWITEMSTRUCT
                #:CtlID
                #:itemState
                #:hDC
                #:rcItem

                #:RECT
                #:left
                #:top
                #:right
                #:bottom

                #:GetStockObject
                #:SelectObject
                #:InvalidateRect
                #:FillRect
                #:FrameRect
                #:Polygon
                #:DrawFocusRect
                #:InvertRect)
  (:import-from :Lunette.Controls
                #:BS_OWNERDRAW)
  (:import-from :Lunette.Messages
                #:WM_SIZE
                #:WM_CREATE
                #:WM_DRAWITEM
                #:WM_COMMAND)
  (:import-from :Lunette.Dialogs
                #:GetDialogBaseUnits)
  (:import-from :Lunette.Graphics.Text
                #:text-out
                #:SetTextColor)
  (:import-from :Lunette.Windows
                #:WS_CHILD
                #:WS_VISIBLE

                #:GetClientRect
                #:ValidateRect
                #:MoveWindow
                #:GetWindowRect)
    (:export #:winmain))

(defpackage :Lunette.Examples.colors1
  (:use #:common-lisp
        #:cffi
        #:Lunette)
  (:import-from :Lunette.System
                #:loword
                #:hiword)
  (:import-from :Lunette.VirtualKeys
                #:VK_TAB
                #:VK_SHIFT)
  (:import-from :Lunette.Graphics
                #:WHITE_BRUSH
                #:COLOR_BTNHIGHLIGHT

                #:RECT
                #:left
                #:top
                #:right
                #:bottom

                #:CreateSolidBrush
                #:GetStockObject
                #:DeleteObject
                #:InvalidateRect
                #:GetSysColor
                #:SetBkColor
                #:rgb
                #:SetRect)
  (:import-from :Lunette.Controls
                #:SB_PAGEDOWN
                #:SB_LINEDOWN
                #:SB_PAGEUP
                #:SB_LINEUP
                #:SB_TOP
                #:SB_BOTTOM
                #:SB_THUMBPOSITION
                #:SB_THUMBTRACK

                #:SB_CTL

                #:SBS_VERT

                #:SS_CENTER
                #:SS_WHITERECT

                #:SetScrollRange
                #:SetScrollPos)
  (:import-from :Lunette.Messages
                #:WM_SIZE
                #:WM_CREATE
                #:WM_SETFOCUS
                #:WM_CTLCOLORSCROLLBAR
                #:WM_CTLCOLORSTATIC
                #:WM_KEYDOWN
                #:WM_VSCROLL
                #:WM_SYSCOLORCHANGE)
  (:import-from :Lunette.Dialogs
                #:GetDialogBaseUnits
                #:GetDlgItem)
  (:import-from :Lunette.Graphics.Text
                #:SetTextColor)
  (:import-from :Lunette.Windows
                #:WS_CHILD
                #:WS_VISIBLE
                #:GWL_ID
                #:GWL_HINSTANCE
                #:GWL_WNDPROC
                #:WS_TABSTOP
                #:GCL_HBRBACKGROUND

                #:MoveWindow
                #:GetWindowLong
                #:SetWindowLong
                #:SetWindowText
                #:SetClassLong
                #:GetParent
                #:GetKeyState
                #:SetFocus
                #:CallWindowProc
                #:GetClientRect)
    (:export #:winmain))
