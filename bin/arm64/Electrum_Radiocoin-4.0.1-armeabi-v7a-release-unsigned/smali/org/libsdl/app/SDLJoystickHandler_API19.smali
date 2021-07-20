.class Lorg/libsdl/app/SDLJoystickHandler_API19;
.super Lorg/libsdl/app/SDLJoystickHandler_API16;
.source "SDLControllerManager.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 308
    invoke-direct {p0}, Lorg/libsdl/app/SDLJoystickHandler_API16;-><init>()V

    return-void
.end method


# virtual methods
.method public getButtonMask(Landroid/view/InputDevice;)I
    .locals 5

    const/16 v0, 0x25

    new-array v1, v0, [I

    .line 323
    fill-array-data v1, :array_0

    new-array v0, v0, [I

    .line 364
    fill-array-data v0, :array_1

    .line 404
    invoke-virtual {p1, v1}, Landroid/view/InputDevice;->hasKeys([I)[Z

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 405
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 406
    aget-boolean v4, p1, v2

    if-eqz v4, :cond_0

    .line 407
    aget v4, v0, v2

    or-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3

    :array_0
    .array-data 4
        0x60
        0x61
        0x63
        0x64
        0x4
        0x6e
        0x6c
        0x6a
        0x6b
        0x66
        0x67
        0x13
        0x14
        0x15
        0x16
        0x6d
        0x17
        0x68
        0x69
        0x62
        0x65
        0xbc
        0xbd
        0xbe
        0xbf
        0xc0
        0xc1
        0xc2
        0xc3
        0xc4
        0xc5
        0xc6
        0xc7
        0xc8
        0xc9
        0xca
        0xcb
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
        0x1000
        0x2000
        0x4000
        0x10
        0x1
        0x8000
        0x10000
        0x20000
        0x40000
        0x100000
        0x200000
        0x400000
        0x800000
        0x1000000
        0x2000000
        0x4000000
        0x8000000
        0x10000000
        0x20000000
        0x40000000    # 2.0f
        -0x80000000
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public getProductId(Landroid/view/InputDevice;)I
    .locals 0

    .line 312
    invoke-virtual {p1}, Landroid/view/InputDevice;->getProductId()I

    move-result p1

    return p1
.end method

.method public getVendorId(Landroid/view/InputDevice;)I
    .locals 0

    .line 317
    invoke-virtual {p1}, Landroid/view/InputDevice;->getVendorId()I

    move-result p1

    return p1
.end method
