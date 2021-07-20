.class Lorg/libsdl/app/HIDDeviceBLESteamController$4;
.super Ljava/lang/Object;
.source "HIDDeviceBLESteamController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/libsdl/app/HIDDeviceBLESteamController;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/libsdl/app/HIDDeviceBLESteamController;


# direct methods
.method constructor <init>(Lorg/libsdl/app/HIDDeviceBLESteamController;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$4;->this$0:Lorg/libsdl/app/HIDDeviceBLESteamController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 425
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$4;->this$0:Lorg/libsdl/app/HIDDeviceBLESteamController;

    invoke-static {v0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->access$100(Lorg/libsdl/app/HIDDeviceBLESteamController;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    return-void
.end method
