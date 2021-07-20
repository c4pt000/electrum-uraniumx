.class public Lorg/libsdl/app/SDLAudioManager;
.super Ljava/lang/Object;
.source "SDLAudioManager.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "SDLAudio"

.field protected static mAudioRecord:Landroid/media/AudioRecord;

.field protected static mAudioTrack:Landroid/media/AudioTrack;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static audioClose()V
    .locals 1

    .line 351
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 353
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    .line 354
    sput-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    :cond_0
    return-void
.end method

.method public static audioOpen(IIII)[I
    .locals 1

    const/4 v0, 0x0

    .line 238
    invoke-static {v0, p0, p1, p2, p3}, Lorg/libsdl/app/SDLAudioManager;->open(ZIIII)[I

    move-result-object p0

    return-object p0
.end method

.method public static audioWriteByteBuffer([B)V
    .locals 4

    .line 297
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    const-string v1, "SDLAudio"

    if-nez v0, :cond_0

    const-string p0, "Attempted to make audio call with uninitialized audio!"

    .line 298
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 302
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 303
    sget-object v2, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    array-length v3, p0

    sub-int/2addr v3, v0

    invoke-virtual {v2, p0, v0, v3}, Landroid/media/AudioTrack;->write([BII)I

    move-result v2

    if-lez v2, :cond_1

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const-wide/16 v2, 0x1

    .line 308
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_2
    const-string p0, "SDL audio: error return from write(byte)"

    .line 313
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public static audioWriteFloatBuffer([F)V
    .locals 5

    .line 245
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    const-string v1, "SDLAudio"

    if-nez v0, :cond_0

    const-string p0, "Attempted to make audio call with uninitialized audio!"

    .line 246
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 250
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 251
    sget-object v3, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    array-length v4, p0

    sub-int/2addr v4, v2

    invoke-virtual {v3, p0, v2, v4, v0}, Landroid/media/AudioTrack;->write([FIII)I

    move-result v3

    if-lez v3, :cond_1

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    const-wide/16 v3, 0x1

    .line 256
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_2
    const-string p0, "SDL audio: error return from write(float)"

    .line 261
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public static audioWriteShortBuffer([S)V
    .locals 4

    .line 271
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    const-string v1, "SDLAudio"

    if-nez v0, :cond_0

    const-string p0, "Attempted to make audio call with uninitialized audio!"

    .line 272
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 276
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 277
    sget-object v2, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    array-length v3, p0

    sub-int/2addr v3, v0

    invoke-virtual {v2, p0, v0, v3}, Landroid/media/AudioTrack;->write([SII)I

    move-result v2

    if-lez v2, :cond_1

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const-wide/16 v2, 0x1

    .line 282
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_2
    const-string p0, "SDL audio: error return from write(short)"

    .line 287
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public static captureClose()V
    .locals 1

    .line 360
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 362
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    .line 363
    sput-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    :cond_0
    return-void
.end method

.method public static captureOpen(IIII)[I
    .locals 1

    const/4 v0, 0x1

    .line 323
    invoke-static {v0, p0, p1, p2, p3}, Lorg/libsdl/app/SDLAudioManager;->open(ZIIII)[I

    move-result-object p0

    return-object p0
.end method

.method public static captureReadByteBuffer([BZ)I
    .locals 3

    .line 342
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    .line 343
    sget-object p1, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    array-length v0, p0

    invoke-virtual {p1, p0, v1, v0}, Landroid/media/AudioRecord;->read([BII)I

    move-result p0

    return p0

    .line 345
    :cond_0
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    array-length v2, p0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p0, v1, v2, p1}, Landroid/media/AudioRecord;->read([BIII)I

    move-result p0

    return p0
.end method

.method public static captureReadFloatBuffer([FZ)I
    .locals 3

    .line 328
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    array-length v1, p0

    xor-int/lit8 p1, p1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1, p1}, Landroid/media/AudioRecord;->read([FIII)I

    move-result p0

    return p0
.end method

.method public static captureReadShortBuffer([SZ)I
    .locals 3

    .line 333
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    .line 334
    sget-object p1, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    array-length v0, p0

    invoke-virtual {p1, p0, v1, v0}, Landroid/media/AudioRecord;->read([SII)I

    move-result p0

    return p0

    .line 336
    :cond_0
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    array-length v2, p0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p0, v1, v2, p1}, Landroid/media/AudioRecord;->read([SIII)I

    move-result p0

    return p0
.end method

.method protected static getAudioFormatString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 30
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "float"

    return-object p0

    :cond_1
    const-string p0, "8-bit"

    return-object p0

    :cond_2
    const-string p0, "16-bit"

    return-object p0
.end method

.method public static initialize()V
    .locals 1

    const/4 v0, 0x0

    .line 15
    sput-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    .line 16
    sput-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    return-void
.end method

.method public static native nativeSetupJNI()I
.end method

.method protected static open(ZIIII)[I
    .locals 22

    move/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opening "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "capture"

    const-string v6, "playback"

    if-eqz p0, :cond_0

    move-object v7, v5

    goto :goto_0

    :cond_0
    move-object v7, v6

    :goto_0
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", requested "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " frames of "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " channel "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lorg/libsdl/app/SDLAudioManager;->getAudioFormatString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " audio at "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " Hz"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v10, "SDLAudio"

    invoke-static {v10, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    const/4 v12, 0x2

    if-ge v3, v11, :cond_3

    if-le v1, v12, :cond_1

    const/4 v1, 0x2

    :cond_1
    const/16 v3, 0x1f40

    if-ge v0, v3, :cond_2

    const/16 v0, 0x1f40

    const/16 v15, 0x1f40

    goto :goto_1

    :cond_2
    const v3, 0xbb80

    if-le v0, v3, :cond_3

    const v0, 0xbb80

    const v15, 0xbb80

    goto :goto_1

    :cond_3
    move v15, v0

    :goto_1
    const/4 v0, 0x4

    move/from16 v3, p2

    if-ne v3, v0, :cond_5

    if-eqz p0, :cond_4

    const/16 v11, 0x17

    goto :goto_2

    :cond_4
    const/16 v11, 0x15

    .line 55
    :goto_2
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v13, v11, :cond_5

    const/4 v3, 0x2

    :cond_5
    const/4 v11, 0x3

    const/4 v14, 0x1

    if-eq v3, v12, :cond_8

    if-eq v3, v11, :cond_7

    if-eq v3, v0, :cond_6

    .line 71
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Requested format "

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", getting ENCODING_PCM_16BIT"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    const/4 v11, 0x2

    goto :goto_3

    :cond_6
    move v11, v3

    const/4 v3, 0x4

    goto :goto_3

    :cond_7
    move v11, v3

    const/4 v3, 0x1

    goto :goto_3

    :cond_8
    move v11, v3

    const/4 v3, 0x2

    :goto_3
    const-string v13, "Requested "

    const/16 v16, 0xc

    if-eqz p0, :cond_a

    if-eq v1, v14, :cond_9

    if-eq v1, v12, :cond_c

    .line 86
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " channels, getting stereo"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_9
    const/16 v12, 0x10

    const/16 v0, 0x10

    goto :goto_5

    :cond_a
    packed-switch v1, :pswitch_data_0

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " channels, getting stereo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    const/16 v0, 0xc

    const/4 v1, 0x2

    goto :goto_5

    .line 115
    :pswitch_0
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt v12, v0, :cond_b

    const/16 v0, 0x18fc

    goto :goto_5

    .line 118
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " channels, getting 5.1 surround"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x6

    const/16 v0, 0xfc

    const/4 v1, 0x6

    goto :goto_5

    :pswitch_1
    const/16 v0, 0x4fc

    goto :goto_5

    :pswitch_2
    const/16 v0, 0xfc

    goto :goto_5

    :pswitch_3
    const/16 v0, 0xdc

    goto :goto_5

    :pswitch_4
    const/16 v0, 0xcc

    goto :goto_5

    :pswitch_5
    const/16 v0, 0x1c

    goto :goto_5

    :cond_c
    :pswitch_6
    const/16 v0, 0xc

    goto :goto_5

    :pswitch_7
    const/4 v0, 0x4

    :goto_5
    mul-int v3, v3, v1

    if-eqz p0, :cond_d

    .line 175
    invoke-static {v15, v0, v11}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v1

    goto :goto_6

    .line 177
    :cond_d
    invoke-static {v15, v0, v11}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v1

    :goto_6
    add-int/2addr v1, v3

    sub-int/2addr v1, v14

    .line 179
    div-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x4

    new-array v2, v2, [I

    const/4 v12, 0x0

    const/16 v20, 0x0

    if-eqz p0, :cond_10

    .line 184
    sget-object v13, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    if-nez v13, :cond_f

    .line 185
    new-instance v19, Landroid/media/AudioRecord;

    const/16 v16, 0x0

    mul-int v18, v1, v3

    move-object/from16 v13, v19

    const/4 v3, 0x1

    move/from16 v14, v16

    move/from16 v16, v0

    move/from16 v17, v11

    invoke-direct/range {v13 .. v18}, Landroid/media/AudioRecord;-><init>(IIIII)V

    sput-object v19, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    .line 189
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eq v0, v3, :cond_e

    const-string v0, "Failed during initialization of AudioRecord"

    .line 190
    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 192
    sput-object v20, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    return-object v20

    .line 196
    :cond_e
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    goto :goto_7

    :cond_f
    const/4 v3, 0x1

    .line 199
    :goto_7
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result v0

    aput v0, v2, v12

    .line 200
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getAudioFormat()I

    move-result v0

    aput v0, v2, v3

    .line 201
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v0

    const/4 v11, 0x2

    aput v0, v2, v11

    const/4 v0, 0x3

    aput v1, v2, v0

    goto :goto_9

    .line 205
    :cond_10
    sget-object v13, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v13, :cond_12

    .line 206
    new-instance v21, Landroid/media/AudioTrack;

    const/16 v16, 0x3

    mul-int v18, v1, v3

    const/16 v19, 0x1

    move-object/from16 v13, v21

    const/4 v3, 0x1

    move/from16 v14, v16

    move/from16 v16, v0

    move/from16 v17, v11

    invoke-direct/range {v13 .. v19}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    sput-object v21, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    .line 211
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eq v0, v3, :cond_11

    const-string v0, "Failed during initialization of Audio Track"

    .line 214
    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 216
    sput-object v20, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    return-object v20

    .line 220
    :cond_11
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    goto :goto_8

    :cond_12
    const/4 v3, 0x1

    .line 223
    :goto_8
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v0

    aput v0, v2, v12

    .line 224
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioFormat()I

    move-result v0

    aput v0, v2, v3

    .line 225
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getChannelCount()I

    move-result v0

    const/4 v11, 0x2

    aput v0, v2, v11

    const/4 v0, 0x3

    aput v1, v2, v0

    .line 229
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_13

    goto :goto_a

    :cond_13
    move-object v5, v6

    :goto_a
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", got "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v2, v3

    invoke-static {v0}, Lorg/libsdl/app/SDLAudioManager;->getAudioFormatString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v2, v12

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Hz"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
