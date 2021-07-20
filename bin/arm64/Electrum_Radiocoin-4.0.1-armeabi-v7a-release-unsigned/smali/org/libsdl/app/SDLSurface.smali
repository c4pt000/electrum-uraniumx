.class Lorg/libsdl/app/SDLSurface;
.super Landroid/view/SurfaceView;
.source "SDLActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/hardware/SensorEventListener;


# static fields
.field protected static mDisplay:Landroid/view/Display;

.field protected static mHeight:F

.field protected static mSensorManager:Landroid/hardware/SensorManager;

.field protected static mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1534
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 1535
    invoke-virtual {p0}, Lorg/libsdl/app/SDLSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v0, 0x1

    .line 1537
    invoke-virtual {p0, v0}, Lorg/libsdl/app/SDLSurface;->setFocusable(Z)V

    .line 1538
    invoke-virtual {p0, v0}, Lorg/libsdl/app/SDLSurface;->setFocusableInTouchMode(Z)V

    .line 1539
    invoke-virtual {p0}, Lorg/libsdl/app/SDLSurface;->requestFocus()Z

    .line 1540
    invoke-virtual {p0, p0}, Lorg/libsdl/app/SDLSurface;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1541
    invoke-virtual {p0, p0}, Lorg/libsdl/app/SDLSurface;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const-string v0, "window"

    .line 1543
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sput-object v0, Lorg/libsdl/app/SDLSurface;->mDisplay:Landroid/view/Display;

    const-string v0, "sensor"

    .line 1544
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    sput-object p1, Lorg/libsdl/app/SDLSurface;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1546
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xc

    if-lt p1, v0, :cond_0

    .line 1547
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getMotionListener()Lorg/libsdl/app/SDLGenericMotionListener_API12;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/libsdl/app/SDLSurface;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 1551
    sput p1, Lorg/libsdl/app/SDLSurface;->mWidth:F

    .line 1552
    sput p1, Lorg/libsdl/app/SDLSurface;->mHeight:F

    return-void
.end method


# virtual methods
.method public enableSensor(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1870
    sget-object p2, Lorg/libsdl/app/SDLSurface;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1871
    invoke-virtual {p2, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1870
    invoke-virtual {p2, p0, p1, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_0

    .line 1874
    :cond_0
    sget-object p2, Lorg/libsdl/app/SDLSurface;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1875
    invoke-virtual {p2, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    .line 1874
    invoke-virtual {p2, p0, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :goto_0
    return-void
.end method

.method public getNativeSurface()Landroid/view/Surface;
    .locals 1

    .line 1569
    invoke-virtual {p0}, Lorg/libsdl/app/SDLSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public handlePause()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1556
    invoke-virtual {p0, v0, v1}, Lorg/libsdl/app/SDLSurface;->enableSensor(IZ)V

    return-void
.end method

.method public handleResume()V
    .locals 1

    const/4 v0, 0x1

    .line 1560
    invoke-virtual {p0, v0}, Lorg/libsdl/app/SDLSurface;->setFocusable(Z)V

    .line 1561
    invoke-virtual {p0, v0}, Lorg/libsdl/app/SDLSurface;->setFocusableInTouchMode(Z)V

    .line 1562
    invoke-virtual {p0}, Lorg/libsdl/app/SDLSurface;->requestFocus()Z

    .line 1563
    invoke-virtual {p0, p0}, Lorg/libsdl/app/SDLSurface;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1564
    invoke-virtual {p0, p0}, Lorg/libsdl/app/SDLSurface;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1565
    invoke-virtual {p0, v0, v0}, Lorg/libsdl/app/SDLSurface;->enableSensor(IZ)V

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onCapturedPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1932
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    if-eq v0, v1, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0xc

    const/16 v4, 0xb

    if-eq v0, v4, :cond_0

    if-eq v0, v1, :cond_0

    return v3

    :cond_0
    if-ne v0, v4, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    .line 1960
    :cond_2
    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1961
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 1962
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p1

    .line 1964
    invoke-static {p1, v0, v1, v3, v2}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    return v2

    :cond_3
    const/16 v1, 0xa

    .line 1937
    invoke-virtual {p1, v1, v3}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v1

    const/16 v4, 0x9

    .line 1938
    invoke-virtual {p1, v4, v3}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result p1

    .line 1939
    invoke-static {v3, v0, v1, p1, v3}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    return v2

    .line 1944
    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1945
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 1946
    invoke-static {v3, v0, v1, p1, v2}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    return v2
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1725
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p1

    invoke-static {p1}, Lorg/libsdl/app/SDLControllerManager;->isDeviceSDLJoystick(I)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 1727
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 1728
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p1

    invoke-static {p1, p2}, Lorg/libsdl/app/SDLControllerManager;->onNativePadDown(II)I

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 1731
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 1732
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p1

    invoke-static {p1, p2}, Lorg/libsdl/app/SDLControllerManager;->onNativePadUp(II)I

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 1738
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getSource()I

    move-result p1

    and-int/lit16 p1, p1, 0x101

    if-eqz p1, :cond_4

    .line 1739
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_3

    .line 1741
    invoke-static {p3}, Lorg/libsdl/app/SDLActivity;->isTextInputEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1742
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result p1

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/libsdl/app/SDLInputConnection;->nativeCommitText(Ljava/lang/String;I)V

    .line 1744
    :cond_2
    invoke-static {p2}, Lorg/libsdl/app/SDLActivity;->onNativeKeyDown(I)V

    return v0

    .line 1747
    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_4

    .line 1749
    invoke-static {p2}, Lorg/libsdl/app/SDLActivity;->onNativeKeyUp(I)V

    return v0

    .line 1754
    :cond_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getSource()I

    move-result p1

    and-int/lit16 p1, p1, 0x2002

    if-eqz p1, :cond_7

    const/4 p1, 0x4

    if-eq p2, p1, :cond_5

    const/16 p1, 0x7d

    if-ne p2, p1, :cond_7

    .line 1758
    :cond_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_6

    if-eq p1, v0, :cond_6

    goto :goto_0

    :cond_6
    return v0

    :cond_7
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    .line 1886
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1893
    sget-object v0, Lorg/libsdl/app/SDLSurface;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v1, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    .line 1910
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    .line 1911
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v4, v1

    goto :goto_0

    .line 1900
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    .line 1901
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    neg-float v1, v1

    const/4 v2, 0x2

    goto :goto_0

    .line 1905
    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    neg-float v0, v0

    .line 1906
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    neg-float v1, v1

    const/4 v2, 0x4

    goto :goto_0

    .line 1895
    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    neg-float v0, v0

    .line 1896
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    move v1, v2

    const/4 v2, 0x1

    .line 1916
    :goto_0
    sget v4, Lorg/libsdl/app/SDLActivity;->mCurrentOrientation:I

    if-eq v2, v4, :cond_3

    .line 1917
    sput v2, Lorg/libsdl/app/SDLActivity;->mCurrentOrientation:I

    .line 1918
    invoke-static {v2}, Lorg/libsdl/app/SDLActivity;->onNativeOrientationChanged(I)V

    :cond_3
    neg-float v0, v0

    const v2, 0x411ce80a

    div-float/2addr v0, v2

    div-float/2addr v1, v2

    .line 1921
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v3

    div-float/2addr p1, v2

    invoke-static {v0, v1, p1}, Lorg/libsdl/app/SDLActivity;->onNativeAccel(FFF)V

    :cond_4
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1775
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result p1

    .line 1776
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    .line 1777
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    .line 1785
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/4 v1, 0x0

    const/4 v8, 0x1

    const/16 v2, 0x2002

    if-eq v0, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/16 v2, 0x3002

    if-ne v0, v2, :cond_2

    :cond_0
    sget-boolean v0, Lorg/libsdl/app/SDLActivity;->mSeparateMouseAndTouch:Z

    if-eqz v0, :cond_2

    .line 1786
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xe

    if-ge p1, v0, :cond_1

    :catch_0
    const/4 p1, 0x1

    goto :goto_0

    .line 1790
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "getButtonState"

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1798
    :goto_0
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getMotionListener()Lorg/libsdl/app/SDLGenericMotionListener_API12;

    move-result-object v0

    .line 1799
    invoke-virtual {v0, p2}, Lorg/libsdl/app/SDLGenericMotionListener_API12;->getEventX(Landroid/view/MotionEvent;)F

    move-result v1

    .line 1800
    invoke-virtual {v0, p2}, Lorg/libsdl/app/SDLGenericMotionListener_API12;->getEventY(Landroid/view/MotionEvent;)F

    move-result p2

    .line 1802
    invoke-virtual {v0}, Lorg/libsdl/app/SDLGenericMotionListener_API12;->inRelativeMode()Z

    move-result v0

    invoke-static {p1, v7, v1, p2, v0}, Lorg/libsdl/app/SDLActivity;->onNativeMouse(IIFFZ)V

    goto/16 :goto_7

    :cond_2
    const/4 v0, -0x1

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v7, :cond_8

    if-eq v7, v8, :cond_8

    const/4 v2, 0x2

    if-eq v7, v2, :cond_6

    const/4 v2, 0x3

    if-eq v7, v2, :cond_4

    const/4 v1, 0x5

    if-eq v7, v1, :cond_3

    const/4 v1, 0x6

    if-eq v7, v1, :cond_3

    goto/16 :goto_7

    :cond_3
    const/4 v1, -0x1

    goto :goto_5

    :cond_4
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_b

    .line 1845
    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1846
    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    sget v2, Lorg/libsdl/app/SDLSurface;->mWidth:F

    div-float v3, v0, v2

    .line 1847
    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    sget v2, Lorg/libsdl/app/SDLSurface;->mHeight:F

    div-float v4, v0, v2

    .line 1848
    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v0

    cmpl-float v2, v0, v9

    if-lez v2, :cond_5

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_5
    move v5, v0

    :goto_2
    const/4 v2, 0x1

    move v0, p1

    .line 1854
    invoke-static/range {v0 .. v5}, Lorg/libsdl/app/SDLActivity;->onNativeTouch(IIIFFF)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    const/4 v10, 0x0

    :goto_3
    if-ge v10, v6, :cond_b

    .line 1807
    invoke-virtual {p2, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1808
    invoke-virtual {p2, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    sget v2, Lorg/libsdl/app/SDLSurface;->mWidth:F

    div-float v3, v0, v2

    .line 1809
    invoke-virtual {p2, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    sget v2, Lorg/libsdl/app/SDLSurface;->mHeight:F

    div-float v4, v0, v2

    .line 1810
    invoke-virtual {p2, v10}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v0

    cmpl-float v2, v0, v9

    if-lez v2, :cond_7

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_7
    move v5, v0

    :goto_4
    move v0, p1

    move v2, v7

    .line 1816
    invoke-static/range {v0 .. v5}, Lorg/libsdl/app/SDLActivity;->onNativeTouch(IIIFFF)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_8
    :goto_5
    if-ne v1, v0, :cond_9

    .line 1828
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 1831
    :cond_9
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1832
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    sget v3, Lorg/libsdl/app/SDLSurface;->mWidth:F

    div-float v3, v0, v3

    .line 1833
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    sget v4, Lorg/libsdl/app/SDLSurface;->mHeight:F

    div-float v4, v0, v4

    .line 1834
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result p2

    cmpl-float v0, p2, v9

    if-lez v0, :cond_a

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_a
    move v5, p2

    :goto_6
    move v0, p1

    move v1, v2

    move v2, v7

    .line 1840
    invoke-static/range {v0 .. v5}, Lorg/libsdl/app/SDLActivity;->onNativeTouch(IIIFFF)V

    :cond_b
    :goto_7
    return v8
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 7

    const-string p1, "SDL"

    const-string v0, "surfaceChanged()"

    .line 1596
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    sget-object p1, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const p1, 0x15151002

    packed-switch p2, :pswitch_data_0

    .line 1643
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pixel format unknown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SDL"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_1
    const-string p1, "SDL"

    const-string p2, "pixel format RGB_332"

    .line 1630
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x14110801

    const v5, 0x14110801

    goto :goto_1

    :pswitch_2
    const-string p2, "SDL"

    const-string v0, "pixel format LA_88"

    .line 1608
    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    const-string p2, "SDL"

    const-string v0, "pixel format L_8"

    .line 1611
    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_4
    const-string p2, "SDL"

    const-string v0, "pixel format A_8"

    .line 1605
    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_5
    const-string p1, "SDL"

    const-string p2, "pixel format RGBA_4444"

    .line 1614
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x15421002

    const v5, 0x15421002

    goto :goto_1

    :pswitch_6
    const-string p1, "SDL"

    const-string p2, "pixel format RGBA_5551"

    .line 1618
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x15441002

    const v5, 0x15441002

    goto :goto_1

    :pswitch_7
    const-string p2, "SDL"

    const-string v0, "pixel format RGB_565"

    .line 1634
    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_8
    const-string p1, "SDL"

    const-string p2, "pixel format RGB_888"

    .line 1638
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x16161804

    const v5, 0x16161804

    goto :goto_1

    :pswitch_9
    const-string p1, "SDL"

    const-string p2, "pixel format RGBX_8888"

    .line 1626
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x16261804

    const v5, 0x16261804

    goto :goto_1

    :pswitch_a
    const-string p1, "SDL"

    const-string p2, "pixel format RGBA_8888"

    .line 1622
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x16462004

    const v5, 0x16462004

    goto :goto_1

    :goto_0
    const v5, 0x15151002

    :goto_1
    int-to-float p1, p3

    .line 1647
    sput p1, Lorg/libsdl/app/SDLSurface;->mWidth:F

    int-to-float p1, p4

    .line 1648
    sput p1, Lorg/libsdl/app/SDLSurface;->mHeight:F

    .line 1653
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x11

    if-lt p1, p2, :cond_1

    .line 1654
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1655
    sget-object p2, Lorg/libsdl/app/SDLSurface;->mDisplay:Landroid/view/Display;

    invoke-virtual {p2, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 1656
    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1657
    :try_start_1
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :cond_1
    move p2, p3

    move p1, p4

    :goto_2
    move v4, p1

    move v3, p2

    goto :goto_3

    :catchall_0
    move p2, p3

    :catchall_1
    move v3, p2

    move v4, p4

    .line 1662
    :goto_3
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    monitor-enter p1

    .line 1664
    :try_start_2
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 1665
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1667
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Window size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SDL"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Device size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SDL"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    sget-object p1, Lorg/libsdl/app/SDLSurface;->mDisplay:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result v6

    move v1, p3

    move v2, p4

    invoke-static/range {v1 .. v6}, Lorg/libsdl/app/SDLActivity;->onNativeResize(IIIIIF)V

    .line 1672
    sget-object p1, Lorg/libsdl/app/SDLActivity;->mSingleton:Lorg/libsdl/app/SDLActivity;

    invoke-virtual {p1}, Lorg/libsdl/app/SDLActivity;->getRequestedOrientation()I

    move-result p1

    const/4 p2, -0x1

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-ne p1, p2, :cond_2

    goto :goto_6

    :cond_2
    if-eq p1, p4, :cond_5

    const/4 p2, 0x7

    if-ne p1, p2, :cond_3

    goto :goto_4

    :cond_3
    if-eqz p1, :cond_4

    const/4 p2, 0x6

    if-ne p1, p2, :cond_6

    .line 1684
    :cond_4
    sget p1, Lorg/libsdl/app/SDLSurface;->mWidth:F

    sget p2, Lorg/libsdl/app/SDLSurface;->mHeight:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_6

    goto :goto_5

    .line 1680
    :cond_5
    :goto_4
    sget p1, Lorg/libsdl/app/SDLSurface;->mWidth:F

    sget p2, Lorg/libsdl/app/SDLSurface;->mHeight:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_6

    :goto_5
    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    :goto_6
    const/4 p1, 0x0

    :goto_7
    if-eqz p1, :cond_7

    .line 1691
    sget p2, Lorg/libsdl/app/SDLSurface;->mWidth:F

    sget v0, Lorg/libsdl/app/SDLSurface;->mHeight:F

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    float-to-double v0, p2

    .line 1692
    sget p2, Lorg/libsdl/app/SDLSurface;->mWidth:F

    sget v2, Lorg/libsdl/app/SDLSurface;->mHeight:F

    invoke-static {p2, v2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    float-to-double v2, p2

    div-double/2addr v2, v0

    const-wide v0, 0x3ff3333333333333L    # 1.2

    cmpg-double p2, v2, v0

    if-gez p2, :cond_7

    const-string p1, "SDL"

    const-string p2, "Don\'t skip on such aspect-ratio. Could be a square resolution."

    .line 1695
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :cond_7
    if-eqz p1, :cond_8

    const-string p1, "SDL"

    const-string p2, "Skip .. Surface is not ready."

    .line 1701
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    sput-boolean p3, Lorg/libsdl/app/SDLActivity;->mIsSurfaceReady:Z

    return-void

    .line 1707
    :cond_8
    sput-boolean p4, Lorg/libsdl/app/SDLActivity;->mIsSurfaceReady:Z

    .line 1710
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->onNativeSurfaceChanged()V

    .line 1712
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->handleNativeState()V

    return-void

    :catchall_2
    move-exception p2

    .line 1665
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string v0, "SDL"

    const-string v1, "surfaceCreated()"

    .line 1575
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 1576
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setType(I)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "SDL"

    const-string v0, "surfaceDestroyed()"

    .line 1582
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    sget-object p1, Lorg/libsdl/app/SDLActivity$NativeState;->PAUSED:Lorg/libsdl/app/SDLActivity$NativeState;

    sput-object p1, Lorg/libsdl/app/SDLActivity;->mNextNativeState:Lorg/libsdl/app/SDLActivity$NativeState;

    .line 1586
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->handleNativeState()V

    const/4 p1, 0x0

    .line 1588
    sput-boolean p1, Lorg/libsdl/app/SDLActivity;->mIsSurfaceReady:Z

    .line 1589
    invoke-static {}, Lorg/libsdl/app/SDLActivity;->onNativeSurfaceDestroyed()V

    return-void
.end method
