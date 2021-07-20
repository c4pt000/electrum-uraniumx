.class public Lorg/libsdl/app/HIDDeviceManager;
.super Ljava/lang/Object;
.source "HIDDeviceManager.java"


# static fields
.field private static final ACTION_USB_PERMISSION:Ljava/lang/String; = "org.libsdl.app.USB_PERMISSION"

.field private static final TAG:Ljava/lang/String; = "hidapi"

.field private static sManager:Lorg/libsdl/app/HIDDeviceManager;

.field private static sManagerRefCount:I


# instance fields
.field private final mBluetoothBroadcast:Landroid/content/BroadcastReceiver;

.field private mBluetoothDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lorg/libsdl/app/HIDDeviceBLESteamController;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private mContext:Landroid/content/Context;

.field private mDevicesById:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/libsdl/app/HIDDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIsChromebook:Z

.field private mLastBluetoothDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mNextDeviceId:I

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mUSBDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/usb/UsbDevice;",
            "Lorg/libsdl/app/HIDDeviceUSB;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsbBroadcast:Landroid/content/BroadcastReceiver;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    const-string v0, "hidapi"

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/libsdl/app/HIDDeviceManager;->mDevicesById:Ljava/util/HashMap;

    .line 53
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/libsdl/app/HIDDeviceManager;->mUSBDevices:Ljava/util/HashMap;

    .line 54
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/libsdl/app/HIDDeviceManager;->mBluetoothDevices:Ljava/util/HashMap;

    const/4 v1, 0x0

    .line 55
    iput v1, p0, Lorg/libsdl/app/HIDDeviceManager;->mNextDeviceId:I

    const/4 v2, 0x0

    .line 56
    iput-object v2, p0, Lorg/libsdl/app/HIDDeviceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 57
    iput-boolean v1, p0, Lorg/libsdl/app/HIDDeviceManager;->mIsChromebook:Z

    .line 63
    new-instance v2, Lorg/libsdl/app/HIDDeviceManager$1;

    invoke-direct {v2, p0}, Lorg/libsdl/app/HIDDeviceManager$1;-><init>(Lorg/libsdl/app/HIDDeviceManager;)V

    iput-object v2, p0, Lorg/libsdl/app/HIDDeviceManager;->mUsbBroadcast:Landroid/content/BroadcastReceiver;

    .line 80
    new-instance v2, Lorg/libsdl/app/HIDDeviceManager$2;

    invoke-direct {v2, p0}, Lorg/libsdl/app/HIDDeviceManager$2;-><init>(Lorg/libsdl/app/HIDDeviceManager;)V

    iput-object v2, p0, Lorg/libsdl/app/HIDDeviceManager;->mBluetoothBroadcast:Landroid/content/BroadcastReceiver;

    .line 105
    iput-object p1, p0, Lorg/libsdl/app/HIDDeviceManager;->mContext:Landroid/content/Context;

    .line 109
    :try_start_0
    invoke-static {v0}, Lorg/libsdl/app/SDL;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceRegisterCallback()V

    .line 139
    iget-object p1, p0, Lorg/libsdl/app/HIDDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lorg/libsdl/app/HIDDeviceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 140
    iget-object p1, p0, Lorg/libsdl/app/HIDDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "org.chromium.arc.device_management"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/libsdl/app/HIDDeviceManager;->mIsChromebook:Z

    .line 149
    iget-object p1, p0, Lorg/libsdl/app/HIDDeviceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "next_device_id"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/libsdl/app/HIDDeviceManager;->mNextDeviceId:I

    .line 152
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceManager;->initializeUSB()V

    .line 153
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceManager;->initializeBluetooth()V

    return-void

    :catchall_0
    move-exception v2

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t load hidapi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 114
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v1, "SDL HIDAPI Error"

    .line 115
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Please report the following error to the SDL maintainers: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 117
    new-instance v1, Lorg/libsdl/app/HIDDeviceManager$3;

    invoke-direct {v1, p0, p1}, Lorg/libsdl/app/HIDDeviceManager$3;-><init>(Lorg/libsdl/app/HIDDeviceManager;Landroid/content/Context;)V

    const-string p1, "Quit"

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 132
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private native HIDDeviceRegisterCallback()V
.end method

.method private native HIDDeviceReleaseCallback()V
.end method

.method static synthetic access$000(Lorg/libsdl/app/HIDDeviceManager;Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lorg/libsdl/app/HIDDeviceManager;->handleUsbDeviceAttached(Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method

.method static synthetic access$100(Lorg/libsdl/app/HIDDeviceManager;Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lorg/libsdl/app/HIDDeviceManager;->handleUsbDeviceDetached(Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method

.method static synthetic access$200(Lorg/libsdl/app/HIDDeviceManager;Landroid/hardware/usb/UsbDevice;Z)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lorg/libsdl/app/HIDDeviceManager;->handleUsbDevicePermission(Landroid/hardware/usb/UsbDevice;Z)V

    return-void
.end method

.method public static acquire(Landroid/content/Context;)Lorg/libsdl/app/HIDDeviceManager;
    .locals 1

    .line 34
    sget v0, Lorg/libsdl/app/HIDDeviceManager;->sManagerRefCount:I

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lorg/libsdl/app/HIDDeviceManager;

    invoke-direct {v0, p0}, Lorg/libsdl/app/HIDDeviceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/libsdl/app/HIDDeviceManager;->sManager:Lorg/libsdl/app/HIDDeviceManager;

    .line 37
    :cond_0
    sget p0, Lorg/libsdl/app/HIDDeviceManager;->sManagerRefCount:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lorg/libsdl/app/HIDDeviceManager;->sManagerRefCount:I

    .line 38
    sget-object p0, Lorg/libsdl/app/HIDDeviceManager;->sManager:Lorg/libsdl/app/HIDDeviceManager;

    return-object p0
.end method

.method private close()V
    .locals 2

    .line 526
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceManager;->shutdownUSB()V

    .line 527
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceManager;->shutdownBluetooth()V

    .line 528
    monitor-enter p0

    .line 529
    :try_start_0
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mDevicesById:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libsdl/app/HIDDevice;

    .line 530
    invoke-interface {v1}, Lorg/libsdl/app/HIDDevice;->shutdown()V

    goto :goto_0

    .line 532
    :cond_0
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mDevicesById:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 533
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mBluetoothDevices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 534
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceReleaseCallback()V

    .line 535
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private connectHIDDeviceUSB(Landroid/hardware/usb/UsbDevice;)V
    .locals 11

    .line 361
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v10, 0x0

    .line 362
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v0

    if-ge v10, v0, :cond_1

    .line 363
    invoke-direct {p0, p1, v10}, Lorg/libsdl/app/HIDDeviceManager;->isHIDDeviceInterface(Landroid/hardware/usb/UsbDevice;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    new-instance v0, Lorg/libsdl/app/HIDDeviceUSB;

    invoke-direct {v0, p0, p1, v10}, Lorg/libsdl/app/HIDDeviceUSB;-><init>(Lorg/libsdl/app/HIDDeviceManager;Landroid/hardware/usb/UsbDevice;I)V

    .line 365
    invoke-virtual {v0}, Lorg/libsdl/app/HIDDeviceUSB;->getId()I

    move-result v2

    .line 366
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceManager;->mUSBDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    iget-object p1, p0, Lorg/libsdl/app/HIDDeviceManager;->mDevicesById:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    invoke-virtual {v0}, Lorg/libsdl/app/HIDDeviceUSB;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/libsdl/app/HIDDeviceUSB;->getVendorId()I

    move-result v4

    invoke-virtual {v0}, Lorg/libsdl/app/HIDDeviceUSB;->getProductId()I

    move-result v5

    invoke-virtual {v0}, Lorg/libsdl/app/HIDDeviceUSB;->getSerialNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lorg/libsdl/app/HIDDeviceUSB;->getVersion()I

    move-result v7

    invoke-virtual {v0}, Lorg/libsdl/app/HIDDeviceUSB;->getManufacturerName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lorg/libsdl/app/HIDDeviceUSB;->getProductName()Ljava/lang/String;

    move-result-object v9

    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceConnected(ILjava/lang/String;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 372
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getDevice(I)Lorg/libsdl/app/HIDDevice;
    .locals 4

    .line 551
    monitor-enter p0

    .line 552
    :try_start_0
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mDevicesById:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/libsdl/app/HIDDevice;

    if-nez v0, :cond_0

    const-string v1, "hidapi"

    .line 554
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No device for id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "hidapi"

    .line 555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Available devices: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/libsdl/app/HIDDeviceManager;->mDevicesById:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 558
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleUsbDeviceAttached(Landroid/hardware/usb/UsbDevice;)V
    .locals 1

    .line 331
    invoke-direct {p0, p1}, Lorg/libsdl/app/HIDDeviceManager;->isHIDDeviceUSB(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    invoke-direct {p0, p1}, Lorg/libsdl/app/HIDDeviceManager;->connectHIDDeviceUSB(Landroid/hardware/usb/UsbDevice;)V

    :cond_0
    return-void
.end method

.method private handleUsbDeviceDetached(Landroid/hardware/usb/UsbDevice;)V
    .locals 3

    .line 337
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mUSBDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/libsdl/app/HIDDeviceUSB;

    if-nez v0, :cond_0

    return-void

    .line 341
    :cond_0
    invoke-virtual {v0}, Lorg/libsdl/app/HIDDeviceUSB;->getId()I

    move-result v1

    .line 342
    iget-object v2, p0, Lorg/libsdl/app/HIDDeviceManager;->mUSBDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object p1, p0, Lorg/libsdl/app/HIDDeviceManager;->mDevicesById:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    invoke-virtual {v0}, Lorg/libsdl/app/HIDDeviceUSB;->shutdown()V

    .line 345
    invoke-virtual {p0, v1}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceDisconnected(I)V

    return-void
.end method

.method private handleUsbDevicePermission(Landroid/hardware/usb/UsbDevice;Z)V
    .locals 1

    .line 349
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mUSBDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/libsdl/app/HIDDeviceUSB;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 355
    invoke-virtual {p1}, Lorg/libsdl/app/HIDDeviceUSB;->open()Z

    move-result v0

    .line 357
    :cond_1
    invoke-virtual {p1}, Lorg/libsdl/app/HIDDeviceUSB;->getId()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceOpenResult(IZ)V

    return-void
.end method

.method private initializeBluetooth()V
    .locals 5

    const-string v0, "hidapi"

    const-string v1, "Initializing Bluetooth"

    .line 376
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lorg/libsdl/app/HIDDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Couldn\'t initialize Bluetooth, missing android.permission.BLUETOOTH"

    .line 379
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 384
    :cond_0
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceManager;->mContext:Landroid/content/Context;

    const-string v2, "bluetooth"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothManager;

    iput-object v1, p0, Lorg/libsdl/app/HIDDeviceManager;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 385
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceManager;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    if-nez v1, :cond_1

    return-void

    .line 390
    :cond_1
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 397
    :cond_2
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 399
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bluetooth device available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {p0, v2}, Lorg/libsdl/app/HIDDeviceManager;->isSteamController(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 401
    invoke-virtual {p0, v2}, Lorg/libsdl/app/HIDDeviceManager;->connectBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 407
    :cond_4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    .line 408
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    .line 409
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 410
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/libsdl/app/HIDDeviceManager;->mBluetoothBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 412
    iget-boolean v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mIsChromebook:Z

    if-eqz v0, :cond_5

    .line 413
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mHandler:Landroid/os/Handler;

    .line 414
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mLastBluetoothDevices:Ljava/util/List;

    :cond_5
    return-void
.end method

.method private initializeUSB()V
    .locals 3

    .line 175
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mContext:Landroid/content/Context;

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 221
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 222
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 223
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "org.libsdl.app.USB_PERMISSION"

    .line 224
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/libsdl/app/HIDDeviceManager;->mUsbBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 227
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 228
    invoke-direct {p0, v1}, Lorg/libsdl/app/HIDDeviceManager;->handleUsbDeviceAttached(Landroid/hardware/usb/UsbDevice;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isHIDDeviceInterface(Landroid/hardware/usb/UsbDevice;I)Z
    .locals 4

    .line 254
    invoke-virtual {p1, p2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    return v2

    :cond_0
    if-nez p2, :cond_2

    .line 259
    invoke-direct {p0, p1, v0}, Lorg/libsdl/app/HIDDeviceManager;->isXbox360Controller(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-direct {p0, p1, v0}, Lorg/libsdl/app/HIDDeviceManager;->isXboxOneController(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private isHIDDeviceUSB(Landroid/hardware/usb/UsbDevice;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 245
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 246
    invoke-direct {p0, p1, v1}, Lorg/libsdl/app/HIDDeviceManager;->isHIDDeviceInterface(Landroid/hardware/usb/UsbDevice;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private isXbox360Controller(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;)Z
    .locals 5

    const/16 v0, 0x14

    new-array v0, v0, [I

    .line 269
    fill-array-data v0, :array_0

    .line 292
    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xff

    if-ne v1, v3, :cond_1

    .line 293
    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v1

    const/16 v3, 0x5d

    if-ne v1, v3, :cond_1

    .line 294
    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 295
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result p1

    .line 296
    array-length p2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_1

    aget v4, v0, v3

    if-ne p1, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2

    :array_0
    .array-data 4
        0x79
        0x44f
        0x45e
        0x46d
        0x56e
        0x6a3
        0x738
        0x7ff
        0xe6f
        0xf0d
        0x11c9
        0x12ab
        0x1430
        0x146b
        0x1532
        0x15e4
        0x162e
        0x1689
        0x1bad
        0x24c6
    .end array-data
.end method

.method private isXboxOneController(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;)Z
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 308
    fill-array-data v0, :array_0

    .line 317
    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xff

    if-ne v1, v3, :cond_1

    .line 318
    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v1

    const/16 v3, 0x47

    if-ne v1, v3, :cond_1

    .line 319
    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result p2

    const/16 v1, 0xd0

    if-ne p2, v1, :cond_1

    .line 320
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result p1

    .line 321
    array-length p2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    aget v3, v0, v1

    if-ne p1, v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2

    nop

    :array_0
    .array-data 4
        0x45e
        0x738
        0xe6f
        0xf0d
        0x1532
        0x24c6
    .end array-data
.end method

.method public static release(Lorg/libsdl/app/HIDDeviceManager;)V
    .locals 1

    .line 42
    sget-object v0, Lorg/libsdl/app/HIDDeviceManager;->sManager:Lorg/libsdl/app/HIDDeviceManager;

    if-ne p0, v0, :cond_0

    .line 43
    sget p0, Lorg/libsdl/app/HIDDeviceManager;->sManagerRefCount:I

    add-int/lit8 p0, p0, -0x1

    sput p0, Lorg/libsdl/app/HIDDeviceManager;->sManagerRefCount:I

    .line 44
    sget p0, Lorg/libsdl/app/HIDDeviceManager;->sManagerRefCount:I

    if-nez p0, :cond_0

    .line 45
    invoke-direct {v0}, Lorg/libsdl/app/HIDDeviceManager;->close()V

    const/4 p0, 0x0

    .line 46
    sput-object p0, Lorg/libsdl/app/HIDDeviceManager;->sManager:Lorg/libsdl/app/HIDDeviceManager;

    :cond_0
    return-void
.end method

.method private shutdownBluetooth()V
    .locals 2

    .line 428
    :try_start_0
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceManager;->mBluetoothBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private shutdownUSB()V
    .locals 2

    .line 238
    :try_start_0
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceManager;->mUsbBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method native HIDDeviceConnected(ILjava/lang/String;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
.end method

.method native HIDDeviceDisconnected(I)V
.end method

.method native HIDDeviceFeatureReport(I[B)V
.end method

.method native HIDDeviceInputReport(I[B)V
.end method

.method native HIDDeviceOpenPending(I)V
.end method

.method native HIDDeviceOpenResult(IZ)V
.end method

.method public chromebookConnectionHandler()V
    .locals 6

    .line 438
    iget-boolean v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mIsChromebook:Z

    if-nez v0, :cond_0

    return-void

    .line 442
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 443
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 445
    iget-object v2, p0, Lorg/libsdl/app/HIDDeviceManager;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    move-result-object v2

    .line 447
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 448
    iget-object v5, p0, Lorg/libsdl/app/HIDDeviceManager;->mLastBluetoothDevices:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 449
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 452
    :cond_2
    iget-object v3, p0, Lorg/libsdl/app/HIDDeviceManager;->mLastBluetoothDevices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 453
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 454
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 458
    :cond_4
    iput-object v2, p0, Lorg/libsdl/app/HIDDeviceManager;->mLastBluetoothDevices:Ljava/util/List;

    .line 460
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 461
    invoke-virtual {p0, v2}, Lorg/libsdl/app/HIDDeviceManager;->disconnectBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_2

    .line 463
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 464
    invoke-virtual {p0, v1}, Lorg/libsdl/app/HIDDeviceManager;->connectBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_3

    .line 468
    :cond_6
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/libsdl/app/HIDDeviceManager$4;

    invoke-direct {v1, p0, p0}, Lorg/libsdl/app/HIDDeviceManager$4;-><init>(Lorg/libsdl/app/HIDDeviceManager;Lorg/libsdl/app/HIDDeviceManager;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public closeDevice(I)V
    .locals 3

    const-string v0, "hidapi"

    .line 653
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeDevice deviceID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    invoke-direct {p0, p1}, Lorg/libsdl/app/HIDDeviceManager;->getDevice(I)Lorg/libsdl/app/HIDDevice;

    move-result-object v1

    if-nez v1, :cond_0

    .line 657
    invoke-virtual {p0, p1}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceDisconnected(I)V

    return-void

    .line 661
    :cond_0
    invoke-interface {v1}, Lorg/libsdl/app/HIDDevice;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 663
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public connectBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectBluetoothDevice device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hidapi"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    monitor-enter p0

    .line 479
    :try_start_0
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mBluetoothDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "hidapi"

    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Steam controller with address "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " already exists, attempting reconnect"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mBluetoothDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/libsdl/app/HIDDeviceBLESteamController;

    .line 483
    invoke-virtual {p1}, Lorg/libsdl/app/HIDDeviceBLESteamController;->reconnect()V

    const/4 p1, 0x0

    .line 485
    monitor-exit p0

    return p1

    .line 487
    :cond_0
    new-instance v0, Lorg/libsdl/app/HIDDeviceBLESteamController;

    invoke-direct {v0, p0, p1}, Lorg/libsdl/app/HIDDeviceBLESteamController;-><init>(Lorg/libsdl/app/HIDDeviceManager;Landroid/bluetooth/BluetoothDevice;)V

    .line 488
    invoke-virtual {v0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getId()I

    move-result v1

    .line 489
    iget-object v2, p0, Lorg/libsdl/app/HIDDeviceManager;->mBluetoothDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    iget-object p1, p0, Lorg/libsdl/app/HIDDeviceManager;->mDevicesById:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public disconnectBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 498
    monitor-enter p0

    .line 499
    :try_start_0
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mBluetoothDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/libsdl/app/HIDDeviceBLESteamController;

    if-nez v0, :cond_0

    .line 501
    monitor-exit p0

    return-void

    .line 503
    :cond_0
    invoke-virtual {v0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getId()I

    move-result v1

    .line 504
    iget-object v2, p0, Lorg/libsdl/app/HIDDeviceManager;->mBluetoothDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    iget-object p1, p0, Lorg/libsdl/app/HIDDeviceManager;->mDevicesById:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    invoke-virtual {v0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->shutdown()V

    .line 507
    invoke-virtual {p0, v1}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceDisconnected(I)V

    .line 508
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDeviceIDForIdentifier(Ljava/lang/String;)I
    .locals 4

    .line 161
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 165
    iget v1, p0, Lorg/libsdl/app/HIDDeviceManager;->mNextDeviceId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/libsdl/app/HIDDeviceManager;->mNextDeviceId:I

    .line 166
    iget v2, p0, Lorg/libsdl/app/HIDDeviceManager;->mNextDeviceId:I

    const-string v3, "next_device_id"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 169
    :cond_0
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 170
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return v1
.end method

.method public getFeatureReport(I[B)Z
    .locals 4

    const-string v0, "hidapi"

    const/4 v1, 0x0

    .line 636
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFeatureReport deviceID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-direct {p0, p1}, Lorg/libsdl/app/HIDDeviceManager;->getDevice(I)Lorg/libsdl/app/HIDDevice;

    move-result-object v2

    if-nez v2, :cond_0

    .line 640
    invoke-virtual {p0, p1}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceDisconnected(I)V

    return v1

    .line 644
    :cond_0
    invoke-interface {v2, p2}, Lorg/libsdl/app/HIDDevice;->getFeatureReport([B)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 646
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got exception: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method getUSBManager()Landroid/hardware/usb/UsbManager;
    .locals 1

    .line 233
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method public isSteamController(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 518
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 522
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SteamController"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result p1

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public openDevice(I)Z
    .locals 7

    .line 567
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mUSBDevices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "hidapi"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libsdl/app/HIDDeviceUSB;

    .line 568
    invoke-virtual {v1}, Lorg/libsdl/app/HIDDeviceUSB;->getId()I

    move-result v4

    if-ne p1, v4, :cond_0

    .line 569
    invoke-virtual {v1}, Lorg/libsdl/app/HIDDeviceUSB;->getDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v0

    .line 570
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceManager;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 571
    invoke-virtual {p0, p1}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceOpenPending(I)V

    .line 573
    :try_start_0
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceManager;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v4, p0, Lorg/libsdl/app/HIDDeviceManager;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "org.libsdl.app.USB_PERMISSION"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v3, v5, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 575
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t request permission for USB device "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-virtual {p0, p1, v3}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceOpenResult(IZ)V

    :goto_0
    return v3

    .line 585
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openDevice deviceID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-direct {p0, p1}, Lorg/libsdl/app/HIDDeviceManager;->getDevice(I)Lorg/libsdl/app/HIDDevice;

    move-result-object v0

    if-nez v0, :cond_2

    .line 589
    invoke-virtual {p0, p1}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceDisconnected(I)V

    return v3

    .line 593
    :cond_2
    invoke-interface {v0}, Lorg/libsdl/app/HIDDevice;->open()Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p1

    :catch_1
    move-exception p1

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public sendFeatureReport(I[B)I
    .locals 4

    const-string v0, "hidapi"

    const/4 v1, -0x1

    .line 619
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendFeatureReport deviceID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-direct {p0, p1}, Lorg/libsdl/app/HIDDeviceManager;->getDevice(I)Lorg/libsdl/app/HIDDevice;

    move-result-object v2

    if-nez v2, :cond_0

    .line 623
    invoke-virtual {p0, p1}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceDisconnected(I)V

    return v1

    .line 627
    :cond_0
    invoke-interface {v2, p2}, Lorg/libsdl/app/HIDDevice;->sendFeatureReport([B)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 629
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got exception: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public sendOutputReport(I[B)I
    .locals 4

    const-string v0, "hidapi"

    const/4 v1, -0x1

    .line 602
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendOutputReport deviceID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-direct {p0, p1}, Lorg/libsdl/app/HIDDeviceManager;->getDevice(I)Lorg/libsdl/app/HIDDevice;

    move-result-object v2

    if-nez v2, :cond_0

    .line 606
    invoke-virtual {p0, p1}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceDisconnected(I)V

    return v1

    .line 610
    :cond_0
    invoke-interface {v2, p2}, Lorg/libsdl/app/HIDDevice;->sendOutputReport([B)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 612
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got exception: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public setFrozen(Z)V
    .locals 2

    .line 539
    monitor-enter p0

    .line 540
    :try_start_0
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mDevicesById:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libsdl/app/HIDDevice;

    .line 541
    invoke-interface {v1, p1}, Lorg/libsdl/app/HIDDevice;->setFrozen(Z)V

    goto :goto_0

    .line 543
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
