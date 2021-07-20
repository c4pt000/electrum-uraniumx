.class Lorg/libsdl/app/SDLGenericMotionListener_API12;
.super Ljava/lang/Object;
.source "SDLControllerManager.java"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventX(Landroid/view/MotionEvent;)F
    .locals 1

    const/4 v0, 0x0

    .line 627
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    return p1
.end method

.method public getEventY(Landroid/view/MotionEvent;)F
    .locals 1

    const/4 v0, 0x0

    .line 631
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    return p1
.end method

.method public inRelativeMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 571
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result p1

    const/16 v0, 0x201

    if-eq p1, v0, :cond_4

    const/16 v0, 0x401

    if-eq p1, v0, :cond_4

    const/16 v0, 0x2002

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const v0, 0x1000010

    if-eq p1, v0, :cond_4

    goto :goto_0

    .line 578
    :cond_0
    sget-boolean p1, Lorg/libsdl/app/SDLActivity;->mSeparateMouseAndTouch:Z

    if-nez p1, :cond_1

    goto :goto_0

    .line 581
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

    .line 584
    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v0

    const/16 v3, 0x9

    .line 585
    invoke-virtual {p2, v3, v1}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result p2

    .line 586
    invoke-static {v1, p1, v0, p2, v1}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    return v2

    .line 590
    :cond_3
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 591
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    .line 593
    invoke-static {v1, p1, v0, p2, v1}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    return v2

    .line 575
    :cond_4
    invoke-static {p2}, Lorg/libsdl/app/SDLControllerManager;->handleJoystickMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public reclaimRelativeMouseModeIfNeeded()V
    .locals 0

    return-void
.end method

.method public setRelativeMouseEnabled(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public supportsRelativeMouse()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
