.class public Lorg/libsdl/app/HIDDeviceUSB$InputThread;
.super Ljava/lang/Thread;
.source "HIDDeviceUSB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libsdl/app/HIDDeviceUSB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "InputThread"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/libsdl/app/HIDDeviceUSB;


# direct methods
.method protected constructor <init>(Lorg/libsdl/app/HIDDeviceUSB;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lorg/libsdl/app/HIDDeviceUSB$InputThread;->this$0:Lorg/libsdl/app/HIDDeviceUSB;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 276
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB$InputThread;->this$0:Lorg/libsdl/app/HIDDeviceUSB;

    iget-object v0, v0, Lorg/libsdl/app/HIDDeviceUSB;->mInputEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v0

    .line 277
    new-array v1, v0, [B

    .line 278
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/libsdl/app/HIDDeviceUSB$InputThread;->this$0:Lorg/libsdl/app/HIDDeviceUSB;

    iget-boolean v2, v2, Lorg/libsdl/app/HIDDeviceUSB;->mRunning:Z

    if-eqz v2, :cond_2

    .line 282
    :try_start_0
    iget-object v2, p0, Lorg/libsdl/app/HIDDeviceUSB$InputThread;->this$0:Lorg/libsdl/app/HIDDeviceUSB;

    iget-object v2, v2, Lorg/libsdl/app/HIDDeviceUSB;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v3, p0, Lorg/libsdl/app/HIDDeviceUSB$InputThread;->this$0:Lorg/libsdl/app/HIDDeviceUSB;

    iget-object v3, v3, Lorg/libsdl/app/HIDDeviceUSB;->mInputEndpoint:Landroid/hardware/usb/UsbEndpoint;

    const/16 v4, 0x3e8

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v2, :cond_0

    if-ne v2, v0, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 297
    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 300
    :goto_1
    iget-object v3, p0, Lorg/libsdl/app/HIDDeviceUSB$InputThread;->this$0:Lorg/libsdl/app/HIDDeviceUSB;

    iget-boolean v3, v3, Lorg/libsdl/app/HIDDeviceUSB;->mFrozen:Z

    if-nez v3, :cond_0

    .line 301
    iget-object v3, p0, Lorg/libsdl/app/HIDDeviceUSB$InputThread;->this$0:Lorg/libsdl/app/HIDDeviceUSB;

    iget-object v3, v3, Lorg/libsdl/app/HIDDeviceUSB;->mManager:Lorg/libsdl/app/HIDDeviceManager;

    iget-object v4, p0, Lorg/libsdl/app/HIDDeviceUSB$InputThread;->this$0:Lorg/libsdl/app/HIDDeviceUSB;

    iget v4, v4, Lorg/libsdl/app/HIDDeviceUSB;->mDeviceId:I

    invoke-virtual {v3, v4, v2}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceInputReport(I[B)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in UsbDeviceConnection bulktransfer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hidapi"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
