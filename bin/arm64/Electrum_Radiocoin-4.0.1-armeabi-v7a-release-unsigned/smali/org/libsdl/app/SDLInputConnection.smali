.class Lorg/libsdl/app/SDLInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "SDLActivity.java"


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 0

    .line 2045
    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    return-void
.end method

.method public static native nativeCommitText(Ljava/lang/String;I)V
.end method


# virtual methods
.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 2

    const/4 v0, 0x0

    .line 2082
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2083
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 2084
    invoke-virtual {p0, v1}, Lorg/libsdl/app/SDLInputConnection;->nativeGenerateScancodeForUnichar(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2087
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/libsdl/app/SDLInputConnection;->nativeCommitText(Ljava/lang/String;I)V

    .line 2089
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result p1

    return p1
.end method

.method public deleteSurroundingText(II)Z
    .locals 4

    if-lez p1, :cond_3

    if-nez p2, :cond_3

    const/4 p2, 0x1

    const/4 v0, 0x1

    :goto_0
    add-int/lit8 v1, p1, -0x1

    if-lez p1, :cond_2

    .line 2114
    new-instance p1, Landroid/view/KeyEvent;

    const/16 v2, 0x43

    const/4 v3, 0x0

    invoke-direct {p1, v3, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, p1}, Lorg/libsdl/app/SDLInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/view/KeyEvent;

    invoke-direct {p1, p2, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 2115
    invoke-virtual {p0, p1}, Lorg/libsdl/app/SDLInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    move p1, v1

    goto :goto_0

    :cond_2
    return v0

    .line 2121
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    move-result p1

    return p1
.end method

.method public native nativeGenerateScancodeForUnichar(C)V
.end method

.method public native nativeSetComposingText(Ljava/lang/String;I)V
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 2063
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    const-string v0, "SDL_RETURN_KEY_HIDES_IME"

    .line 2064
    invoke-static {v0}, Lorg/libsdl/app/SDLActivity;->nativeGetHint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "1"

    .line 2065
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2066
    invoke-static {}, Lorg/libsdl/app/SDL;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2067
    instance-of v1, v0, Lorg/libsdl/app/SDLActivity;

    if-eqz v1, :cond_0

    .line 2068
    check-cast v0, Lorg/libsdl/app/SDLActivity;

    const/4 p1, 0x3

    const/4 v1, 0x0

    .line 2069
    invoke-virtual {v0, p1, v1}, Lorg/libsdl/app/SDLActivity;->sendCommand(ILjava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    .line 2076
    :cond_0
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1

    .line 2095
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/libsdl/app/SDLInputConnection;->nativeSetComposingText(Ljava/lang/String;I)V

    .line 2097
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result p1

    return p1
.end method
