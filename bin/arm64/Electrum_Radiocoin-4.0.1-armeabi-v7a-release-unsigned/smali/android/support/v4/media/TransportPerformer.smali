.class public abstract Landroid/support/v4/media/TransportPerformer;
.super Ljava/lang/Object;
.source "TransportPerformer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final AUDIOFOCUS_GAIN:I = 0x1

.field static final AUDIOFOCUS_GAIN_TRANSIENT:I = 0x2

.field static final AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK:I = 0x3

.field static final AUDIOFOCUS_LOSS:I = -0x1

.field static final AUDIOFOCUS_LOSS_TRANSIENT:I = -0x2

.field static final AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK:I = -0x3


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x7f

    :goto_0
    if-eqz p1, :cond_1

    .line 246
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 247
    new-instance v10, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, v10

    move-wide v1, v8

    move-wide v3, v8

    move v6, p1

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {p0, p1, v10}, Landroid/support/v4/media/TransportPerformer;->onMediaButtonDown(ILandroid/view/KeyEvent;)Z

    .line 248
    new-instance v10, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    move-object v0, v10

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {p0, p1, v10}, Landroid/support/v4/media/TransportPerformer;->onMediaButtonUp(ILandroid/view/KeyEvent;)Z

    :cond_1
    return-void
.end method

.method public onGetBufferPercentage()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x64

    return v0
.end method

.method public abstract onGetCurrentPosition()J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onGetDuration()J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public onGetTransportControlFlags()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x3c

    return v0
.end method

.method public abstract onIsPlaying()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public onMediaButtonDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 p2, 0x4f

    const/4 v0, 0x1

    if-eq p1, p2, :cond_3

    const/16 p2, 0x55

    if-eq p1, p2, :cond_3

    const/16 p2, 0x56

    if-eq p1, p2, :cond_2

    const/16 p2, 0x7e

    if-eq p1, p2, :cond_1

    const/16 p2, 0x7f

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/media/TransportPerformer;->onPause()V

    return v0

    .line 172
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/media/TransportPerformer;->onStart()V

    return v0

    .line 178
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/media/TransportPerformer;->onStop()V

    return v0

    .line 182
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/media/TransportPerformer;->onIsPlaying()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 183
    invoke-virtual {p0}, Landroid/support/v4/media/TransportPerformer;->onPause()V

    goto :goto_0

    .line 185
    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/media/TransportPerformer;->onStart()V

    :goto_0
    return v0
.end method

.method public onMediaButtonUp(ILandroid/view/KeyEvent;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public abstract onPause()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onSeekTo(J)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onStart()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onStop()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
