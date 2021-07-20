.class Lorg/libsdl/app/SDLJoystickHandler_API12;
.super Lorg/libsdl/app/SDLJoystickHandler;
.source "SDLControllerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libsdl/app/SDLJoystickHandler_API12$RangeComparator;,
        Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;
    }
.end annotation


# instance fields
.field private mJoysticks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 177
    invoke-direct {p0}, Lorg/libsdl/app/SDLJoystickHandler;-><init>()V

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/libsdl/app/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getButtonMask(Landroid/view/InputDevice;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method protected getJoystick(I)Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;
    .locals 2

    const/4 v0, 0x0

    .line 243
    :goto_0
    iget-object v1, p0, Lorg/libsdl/app/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 244
    iget-object v1, p0, Lorg/libsdl/app/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;

    iget v1, v1, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->device_id:I

    if-ne v1, p1, :cond_0

    .line 245
    iget-object p1, p0, Lorg/libsdl/app/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getJoystickDescriptor(Landroid/view/InputDevice;)Ljava/lang/String;
    .locals 0

    .line 281
    invoke-virtual {p1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getProductId(Landroid/view/InputDevice;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getVendorId(Landroid/view/InputDevice;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public handleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 253
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const v1, 0x1000010

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 254
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 255
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto/16 :goto_2

    .line 258
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/libsdl/app/SDLJoystickHandler_API12;->getJoystick(I)Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 260
    :goto_0
    iget-object v4, v1, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->axes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 261
    iget-object v4, v1, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->axes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InputDevice$MotionRange;

    .line 263
    invoke-virtual {v4}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v5

    invoke-virtual {p1, v5, v0}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v5

    invoke-virtual {v4}, Landroid/view/InputDevice$MotionRange;->getMin()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v4}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result v4

    div-float/2addr v5, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v5, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v5, v4

    .line 264
    iget v4, v1, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->device_id:I

    invoke-static {v4, v3, v5}, Lorg/libsdl/app/SDLControllerManager;->onNativeJoy(IIF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 266
    :cond_1
    :goto_1
    iget-object v3, v1, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->hats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 267
    iget-object v3, v1, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->hats:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InputDevice$MotionRange;

    invoke-virtual {v3}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v3

    invoke-virtual {p1, v3, v0}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 268
    iget-object v4, v1, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->hats:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InputDevice$MotionRange;

    invoke-virtual {v4}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v4

    invoke-virtual {p1, v4, v0}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 269
    iget v5, v1, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->device_id:I

    div-int/lit8 v6, v2, 0x2

    invoke-static {v5, v6, v3, v4}, Lorg/libsdl/app/SDLControllerManager;->onNativeHat(IIII)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_2
    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public pollInputDevices()V
    .locals 17

    move-object/from16 v0, p0

    .line 184
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 185
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_5

    .line 186
    aget v4, v1, v3

    invoke-virtual {v0, v4}, Lorg/libsdl/app/SDLJoystickHandler_API12;->getJoystick(I)Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;

    move-result-object v4

    if-nez v4, :cond_4

    .line 188
    new-instance v4, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;

    invoke-direct {v4}, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;-><init>()V

    .line 189
    aget v5, v1, v3

    invoke-static {v5}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    .line 190
    aget v6, v1, v3

    invoke-static {v6}, Lorg/libsdl/app/SDLControllerManager;->isDeviceSDLJoystick(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 191
    aget v6, v1, v3

    iput v6, v4, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->device_id:I

    .line 192
    invoke-virtual {v5}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->name:Ljava/lang/String;

    .line 193
    invoke-virtual {v0, v5}, Lorg/libsdl/app/SDLJoystickHandler_API12;->getJoystickDescriptor(Landroid/view/InputDevice;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->desc:Ljava/lang/String;

    .line 194
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v4, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->axes:Ljava/util/ArrayList;

    .line 195
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v4, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->hats:Ljava/util/ArrayList;

    .line 197
    invoke-virtual {v5}, Landroid/view/InputDevice;->getMotionRanges()Ljava/util/List;

    move-result-object v6

    .line 198
    new-instance v7, Lorg/libsdl/app/SDLJoystickHandler_API12$RangeComparator;

    invoke-direct {v7}, Lorg/libsdl/app/SDLJoystickHandler_API12$RangeComparator;-><init>()V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 199
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/InputDevice$MotionRange;

    .line 200
    invoke-virtual {v7}, Landroid/view/InputDevice$MotionRange;->getSource()I

    move-result v8

    const/16 v9, 0x10

    and-int/2addr v8, v9

    if-eqz v8, :cond_0

    .line 201
    invoke-virtual {v7}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v8

    const/16 v10, 0xf

    if-eq v8, v10, :cond_2

    .line 202
    invoke-virtual {v7}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v8

    if-ne v8, v9, :cond_1

    goto :goto_2

    .line 206
    :cond_1
    iget-object v8, v4, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->axes:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 203
    :cond_2
    :goto_2
    iget-object v8, v4, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->hats:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 211
    :cond_3
    iget-object v6, v0, Lorg/libsdl/app/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    iget v7, v4, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->device_id:I

    iget-object v8, v4, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->name:Ljava/lang/String;

    iget-object v9, v4, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->desc:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lorg/libsdl/app/SDLJoystickHandler_API12;->getVendorId(Landroid/view/InputDevice;)I

    move-result v10

    invoke-virtual {v0, v5}, Lorg/libsdl/app/SDLJoystickHandler_API12;->getProductId(Landroid/view/InputDevice;)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v0, v5}, Lorg/libsdl/app/SDLJoystickHandler_API12;->getButtonMask(Landroid/view/InputDevice;)I

    move-result v13

    iget-object v5, v4, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->axes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v14

    iget-object v4, v4, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->hats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    div-int/lit8 v15, v4, 0x2

    const/16 v16, 0x0

    invoke-static/range {v7 .. v16}, Lorg/libsdl/app/SDLControllerManager;->nativeAddJoystick(ILjava/lang/String;Ljava/lang/String;IIZIIII)I

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 218
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 219
    :goto_3
    iget-object v5, v0, Lorg/libsdl/app/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_9

    .line 220
    iget-object v5, v0, Lorg/libsdl/app/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;

    iget v5, v5, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->device_id:I

    const/4 v6, 0x0

    .line 222
    :goto_4
    array-length v7, v1

    if-ge v6, v7, :cond_7

    .line 223
    aget v7, v1, v6

    if-ne v5, v7, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 225
    :cond_7
    :goto_5
    array-length v7, v1

    if-ne v6, v7, :cond_8

    .line 226
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    const/4 v1, 0x0

    .line 230
    :goto_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_c

    .line 231
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 232
    invoke-static {v4}, Lorg/libsdl/app/SDLControllerManager;->nativeRemoveJoystick(I)I

    const/4 v5, 0x0

    .line 233
    :goto_7
    iget-object v6, v0, Lorg/libsdl/app/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_b

    .line 234
    iget-object v6, v0, Lorg/libsdl/app/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;

    iget v6, v6, Lorg/libsdl/app/SDLJoystickHandler_API12$SDLJoystick;->device_id:I

    if-ne v6, v4, :cond_a

    .line 235
    iget-object v4, v0, Lorg/libsdl/app/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_8

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_b
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_c
    return-void
.end method
