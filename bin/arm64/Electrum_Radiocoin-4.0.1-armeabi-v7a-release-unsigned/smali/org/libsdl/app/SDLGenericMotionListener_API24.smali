.class Lorg/libsdl/app/SDLGenericMotionListener_API24;
.super Lorg/libsdl/app/SDLGenericMotionListener_API12;
.source "SDLControllerManager.java"


# instance fields
.field private mRelativeModeEnabled:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 636
    invoke-direct {p0}, Lorg/libsdl/app/SDLGenericMotionListener_API12;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventX(Landroid/view/MotionEvent;)F
    .locals 1

    .line 708
    iget-boolean v0, p0, Lorg/libsdl/app/SDLGenericMotionListener_API24;->mRelativeModeEnabled:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    .line 709
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 712
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    return p1
.end method

.method public getEventY(Landroid/view/MotionEvent;)F
    .locals 1

    .line 718
    iget-boolean v0, p0, Lorg/libsdl/app/SDLGenericMotionListener_API24;->mRelativeModeEnabled:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    .line 719
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 722
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    return p1
.end method

.method public inRelativeMode()Z
    .locals 1

    .line 697
    iget-boolean v0, p0, Lorg/libsdl/app/SDLGenericMotionListener_API24;->mRelativeModeEnabled:Z

    return v0
.end method

.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 646
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result p1

    const/16 v0, 0x201

    if-eq p1, v0, :cond_5

    const/16 v0, 0x401

    if-eq p1, v0, :cond_5

    const/16 v0, 0x2002

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const v0, 0x1000010

    if-eq p1, v0, :cond_5

    goto :goto_0

    .line 653
    :cond_0
    sget-boolean p1, Lorg/libsdl/app/SDLActivity;->mSeparateMouseAndTouch:Z

    if-nez p1, :cond_1

    goto :goto_0

    .line 656
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x7

    const/4 v2, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    :goto_0
    return v1

    :cond_2
    const/16 v0, 0xa

    .line 659
    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v0

    const/16 v3, 0x9

    .line 660
    invoke-virtual {p2, v3, v1}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result p2

    .line 661
    invoke-static {v1, p1, v0, p2, v1}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    return v2

    .line 665
    :cond_3
    iget-boolean v0, p0, Lorg/libsdl/app/SDLGenericMotionListener_API24;->mRelativeModeEnabled:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x1b

    .line 666
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/16 v3, 0x1c

    .line 667
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p2

    goto :goto_1

    .line 670
    :cond_4
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 671
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    .line 674
    :goto_1
    iget-boolean v3, p0, Lorg/libsdl/app/SDLGenericMotionListener_API24;->mRelativeModeEnabled:Z

    invoke-static {v1, p1, v0, p2, v3}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    return v2

    .line 650
    :cond_5
    invoke-static {p2}, Lorg/libsdl/app/SDLControllerManager;->handleJoystickMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setRelativeMouseEnabled(Z)Z
    .locals 0

    .line 702
    iput-boolean p1, p0, Lorg/libsdl/app/SDLGenericMotionListener_API24;->mRelativeModeEnabled:Z

    const/4 p1, 0x1

    return p1
.end method

.method public supportsRelativeMouse()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
