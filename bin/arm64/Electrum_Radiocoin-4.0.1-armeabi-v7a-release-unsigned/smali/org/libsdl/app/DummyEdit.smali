.class Lorg/libsdl/app/DummyEdit;
.super Landroid/view/View;
.source "SDLActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field ic:Landroid/view/inputmethod/InputConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1980
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 1981
    invoke-virtual {p0, p1}, Lorg/libsdl/app/DummyEdit;->setFocusableInTouchMode(Z)V

    .line 1982
    invoke-virtual {p0, p1}, Lorg/libsdl/app/DummyEdit;->setFocusable(Z)V

    .line 1983
    invoke-virtual {p0, p0}, Lorg/libsdl/app/DummyEdit;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method


# virtual methods
.method public onCheckIsTextEditor()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    .line 2032
    new-instance v0, Lorg/libsdl/app/SDLInputConnection;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/libsdl/app/SDLInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lorg/libsdl/app/DummyEdit;->ic:Landroid/view/inputmethod/InputConnection;

    .line 2034
    sget v0, Lorg/libsdl/app/SDLActivity;->keyboardInputType:I

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v0, 0x12000000

    .line 2035
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 2038
    iget-object p1, p0, Lorg/libsdl/app/DummyEdit;->ic:Landroid/view/inputmethod/InputConnection;

    return-object p1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1996
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 1997
    invoke-static {p3}, Lorg/libsdl/app/SDLActivity;->isTextInputEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1998
    iget-object p1, p0, Lorg/libsdl/app/DummyEdit;->ic:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result p2

    int-to-char p2, p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    return v0

    .line 2001
    :cond_0
    invoke-static {p2}, Lorg/libsdl/app/SDLActivity;->onNativeKeyDown(I)V

    return v0

    .line 2003
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 2004
    invoke-static {p2}, Lorg/libsdl/app/SDLActivity;->onNativeKeyUp(I)V

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 2019
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 2020
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mTextEdit:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/libsdl/app/SDLActivity;->mTextEdit:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2021
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->onNativeKeyboardFocusLost()V

    .line 2024
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mSurface:Lorg/libsdl/app/SDLSurface;

    invoke-virtual {v0}, Lorg/libsdl/app/SDLSurface;->requestFocus()Z

    .line 2027
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
