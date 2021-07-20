.class Lorg/libsdl/app/HIDDeviceManager$1;
.super Landroid/content/BroadcastReceiver;
.source "HIDDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libsdl/app/HIDDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/libsdl/app/HIDDeviceManager;


# direct methods
.method constructor <init>(Lorg/libsdl/app/HIDDeviceManager;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lorg/libsdl/app/HIDDeviceManager$1;->this$0:Lorg/libsdl/app/HIDDeviceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "device"

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 69
    iget-object p2, p0, Lorg/libsdl/app/HIDDeviceManager$1;->this$0:Lorg/libsdl/app/HIDDeviceManager;

    invoke-static {p2, p1}, Lorg/libsdl/app/HIDDeviceManager;->access$000(Lorg/libsdl/app/HIDDeviceManager;Landroid/hardware/usb/UsbDevice;)V

    goto :goto_0

    :cond_0
    const-string v0, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 72
    iget-object p2, p0, Lorg/libsdl/app/HIDDeviceManager$1;->this$0:Lorg/libsdl/app/HIDDeviceManager;

    invoke-static {p2, p1}, Lorg/libsdl/app/HIDDeviceManager;->access$100(Lorg/libsdl/app/HIDDeviceManager;Landroid/hardware/usb/UsbDevice;)V

    goto :goto_0

    :cond_1
    const-string v0, "org.libsdl.app.USB_PERMISSION"

    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 74
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 75
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceManager$1;->this$0:Lorg/libsdl/app/HIDDeviceManager;

    const/4 v1, 0x0

    const-string v2, "permission"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {v0, p1, p2}, Lorg/libsdl/app/HIDDeviceManager;->access$200(Lorg/libsdl/app/HIDDeviceManager;Landroid/hardware/usb/UsbDevice;Z)V

    :cond_2
    :goto_0
    return-void
.end method
