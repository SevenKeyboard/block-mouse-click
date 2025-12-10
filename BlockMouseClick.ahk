#Requires AutoHotkey v1.1.0+
;==============================================================
; BlockMouseClick — Mouse click blocking helper without admin rights
;
; GitHub: https://github.com/SevenKeyboard/block-mouse-click
; Author: SevenKeyboard Ltd. (2025)
; License: The Unlicense
;==============================================================
class BlockMouseClick
{ ;  No administrator rights required
    static obj:=Object()
    on(id:="msc")    {
        if (!this.obj.hasKey(id))
            this.obj[id]:=""
    }
    off(id:="msc")    {
        if (this.obj.hasKey(id))
            this.obj.delete(id)
    }
}
goto AutoExecuteSection_E660A62C
#if (BlockMseInput.obj.count())
    *LButton::suspend Permit
    *RButton::suspend Permit
    *MButton::suspend Permit
    *XButton1::suspend Permit
    *XButton2::suspend Permit
#if
AutoExecuteSection_E660A62C:
sleep 0 ;  To avoid error: A label must not point to a funciton.