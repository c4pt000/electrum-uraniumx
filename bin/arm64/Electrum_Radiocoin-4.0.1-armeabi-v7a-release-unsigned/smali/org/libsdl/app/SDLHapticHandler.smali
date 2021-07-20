.class Lorg/libsdl/app/SDLHapticHandler;
.super Ljava/lang/Object;
.source "SDLControllerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
    }
.end annotation


# instance fields
.field private mHaptics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected getHaptic(I)Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
    .locals 2

    const/4 v0, 0x0

    .line 555
    :goto_0
    iget-object v1, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 556
    iget-object v1, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    iget v1, v1, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->device_id:I

    if-ne v1, p1, :cond_0

    .line 557
    iget-object p1, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public pollHapticDevices()V
    .locals 9

    .line 479
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    .line 485
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x10

    if-lt v1, v3, :cond_1

    .line 487
    array-length v1, v0

    sub-int/2addr v1, v2

    :goto_0
    const/4 v3, -0x1

    if-le v1, v3, :cond_1

    .line 488
    aget v3, v0, v1

    invoke-virtual {p0, v3}, Lorg/libsdl/app/SDLHapticHandler;->getHaptic(I)Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    move-result-object v3

    if-nez v3, :cond_0

    .line 490
    aget v3, v0, v1

    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    .line 491
    invoke-virtual {v3}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v4

    .line 492
    invoke-virtual {v4}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 493
    new-instance v5, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    invoke-direct {v5, p0}, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;-><init>(Lorg/libsdl/app/SDLHapticHandler;)V

    .line 494
    aget v6, v0, v1

    iput v6, v5, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->device_id:I

    .line 495
    invoke-virtual {v3}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->name:Ljava/lang/String;

    .line 496
    iput-object v4, v5, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->vib:Landroid/os/Vibrator;

    .line 497
    iget-object v3, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    iget v3, v5, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->device_id:I

    iget-object v4, v5, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/libsdl/app/SDLControllerManager;->nativeAddHaptic(ILjava/lang/String;)I

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 505
    :cond_1
    invoke-static {}, Lorg/libsdl/app/SDL;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "vibrator"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    const v3, 0xf423f

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 507
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_2

    .line 508
    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    :cond_2
    if-eqz v2, :cond_4

    .line 514
    invoke-virtual {p0, v3}, Lorg/libsdl/app/SDLHapticHandler;->getHaptic(I)Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    move-result-object v5

    if-nez v5, :cond_4

    .line 516
    new-instance v5, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    invoke-direct {v5, p0}, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;-><init>(Lorg/libsdl/app/SDLHapticHandler;)V

    .line 517
    iput v3, v5, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->device_id:I

    const-string v6, "VIBRATOR_SERVICE"

    .line 518
    iput-object v6, v5, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->name:Ljava/lang/String;

    .line 519
    iput-object v1, v5, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->vib:Landroid/os/Vibrator;

    .line 520
    iget-object v1, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    iget v1, v5, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->device_id:I

    iget-object v5, v5, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->name:Ljava/lang/String;

    invoke-static {v1, v5}, Lorg/libsdl/app/SDLControllerManager;->nativeAddHaptic(ILjava/lang/String;)I

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 527
    :cond_4
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 528
    :goto_2
    iget-object v6, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_9

    .line 529
    iget-object v6, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    iget v6, v6, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->device_id:I

    const/4 v7, 0x0

    .line 531
    :goto_3
    array-length v8, v0

    if-ge v7, v8, :cond_6

    .line 532
    aget v8, v0, v7

    if-ne v6, v8, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    if-ne v6, v3, :cond_7

    if-eqz v2, :cond_7

    goto :goto_5

    .line 537
    :cond_7
    array-length v8, v0

    if-ne v7, v8, :cond_8

    .line 538
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    .line 542
    :goto_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_c

    .line 543
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 544
    invoke-static {v2}, Lorg/libsdl/app/SDLControllerManager;->nativeRemoveHaptic(I)I

    const/4 v3, 0x0

    .line 545
    :goto_7
    iget-object v5, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_b

    .line 546
    iget-object v5, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    iget v5, v5, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->device_id:I

    if-ne v5, v2, :cond_a

    .line 547
    iget-object v2, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_8

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_b
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_c
    return-void
.end method

.method public run(IFI)V
    .locals 0

    .line 461
    invoke-virtual {p0, p1}, Lorg/libsdl/app/SDLHapticHandler;->getHaptic(I)Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 463
    iget-object p1, p1, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->vib:Landroid/os/Vibrator;

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    return-void
.end method

.method public stop(I)V
    .locals 0

    .line 468
    invoke-virtual {p0, p1}, Lorg/libsdl/app/SDLHapticHandler;->getHaptic(I)Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 470
    iget-object p1, p1, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->vib:Landroid/os/Vibrator;

    invoke-virtual {p1}, Landroid/os/Vibrator;->cancel()V

    :cond_0
    return-void
.end method
