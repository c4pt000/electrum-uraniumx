.class Lorg/libsdl/app/HIDDeviceBLESteamController;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "HIDDeviceBLESteamController.java"

# interfaces
.implements Lorg/libsdl/app/HIDDevice;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;
    }
.end annotation


# static fields
.field private static final CHROMEBOOK_CONNECTION_CHECK_INTERVAL:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "hidapi"

.field private static final TRANSPORT_AUTO:I = 0x0

.field private static final TRANSPORT_BREDR:I = 0x1

.field private static final TRANSPORT_LE:I = 0x2

.field private static final enterValveMode:[B

.field public static final inputCharacteristic:Ljava/util/UUID;

.field public static final reportCharacteristic:Ljava/util/UUID;

.field public static final steamControllerService:Ljava/util/UUID;


# instance fields
.field mCurrentOperation:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceId:I

.field private mFrozen:Z

.field private mGatt:Landroid/bluetooth/BluetoothGatt;

.field private mHandler:Landroid/os/Handler;

.field private mIsChromebook:Z

.field private mIsConnected:Z

.field private mIsReconnecting:Z

.field private mIsRegistered:Z

.field private mManager:Lorg/libsdl/app/HIDDeviceManager;

.field private mOperations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "100F6C32-1735-4313-B402-38567131E5F3"

    .line 47
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lorg/libsdl/app/HIDDeviceBLESteamController;->steamControllerService:Ljava/util/UUID;

    const-string v0, "100F6C33-1735-4313-B402-38567131E5F3"

    .line 48
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lorg/libsdl/app/HIDDeviceBLESteamController;->inputCharacteristic:Ljava/util/UUID;

    const-string v0, "100F6C34-1735-4313-B402-38567131E5F3"

    .line 49
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lorg/libsdl/app/HIDDeviceBLESteamController;->reportCharacteristic:Ljava/util/UUID;

    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 50
    fill-array-data v0, :array_0

    sput-object v0, Lorg/libsdl/app/HIDDeviceBLESteamController;->enterValveMode:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x40t
        -0x79t
        0x3t
        0x8t
        0x7t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lorg/libsdl/app/HIDDeviceManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 159
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsRegistered:Z

    .line 33
    iput-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsConnected:Z

    .line 34
    iput-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsChromebook:Z

    .line 35
    iput-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsReconnecting:Z

    .line 36
    iput-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mFrozen:Z

    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mCurrentOperation:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;

    .line 160
    iput-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mManager:Lorg/libsdl/app/HIDDeviceManager;

    .line 161
    iput-object p2, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 162
    iget-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mManager:Lorg/libsdl/app/HIDDeviceManager;

    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/libsdl/app/HIDDeviceManager;->getDeviceIDForIdentifier(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mDeviceId:I

    .line 163
    iput-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsRegistered:Z

    .line 164
    iget-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mManager:Lorg/libsdl/app/HIDDeviceManager;

    invoke-virtual {p1}, Lorg/libsdl/app/HIDDeviceManager;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "org.chromium.arc.device_management"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsChromebook:Z

    .line 165
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mOperations:Ljava/util/LinkedList;

    .line 166
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mHandler:Landroid/os/Handler;

    .line 168
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->connectGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 170
    iget-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mHandler:Landroid/os/Handler;

    new-instance p2, Lorg/libsdl/app/HIDDeviceBLESteamController$1;

    invoke-direct {p2, p0, p0}, Lorg/libsdl/app/HIDDeviceBLESteamController$1;-><init>(Lorg/libsdl/app/HIDDeviceBLESteamController;Lorg/libsdl/app/HIDDeviceBLESteamController;)V

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic access$000(Lorg/libsdl/app/HIDDeviceBLESteamController;)Ljava/util/LinkedList;
    .locals 0

    .line 25
    iget-object p0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mOperations:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$100(Lorg/libsdl/app/HIDDeviceBLESteamController;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    .line 25
    iget-object p0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    return-object p0
.end method

.method private connectGatt()Landroid/bluetooth/BluetoothGatt;
    .locals 1

    const/4 v0, 0x0

    .line 198
    invoke-direct {p0, v0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->connectGatt(Z)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    return-object v0
.end method

.method private connectGatt(Z)Landroid/bluetooth/BluetoothGatt;
    .locals 9

    .line 190
    :try_start_0
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "connectGatt"

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Landroid/bluetooth/BluetoothGattCallback;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mManager:Lorg/libsdl/app/HIDDeviceManager;

    invoke-virtual {v3}, Lorg/libsdl/app/HIDDeviceManager;->getContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object p0, v2, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGatt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 193
    :catch_0
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mManager:Lorg/libsdl/app/HIDDeviceManager;

    invoke-virtual {v1}, Lorg/libsdl/app/HIDDeviceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p0}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    return-object p1
.end method

.method private enableNotification(Ljava/util/UUID;)V
    .locals 1

    .line 397
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0, p1}, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->enableNotification(Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;)Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;

    move-result-object p1

    .line 398
    invoke-direct {p0, p1}, Lorg/libsdl/app/HIDDeviceBLESteamController;->queueGattOperation(Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;)V

    return-void
.end method

.method private executeNextGattOperation()V
    .locals 2

    .line 362
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mOperations:Ljava/util/LinkedList;

    monitor-enter v0

    .line 363
    :try_start_0
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mCurrentOperation:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;

    if-eqz v1, :cond_0

    .line 364
    monitor-exit v0

    return-void

    .line 366
    :cond_0
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mOperations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 367
    monitor-exit v0

    return-void

    .line 369
    :cond_1
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mOperations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;

    iput-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mCurrentOperation:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;

    .line 370
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/libsdl/app/HIDDeviceBLESteamController$3;

    invoke-direct {v1, p0}, Lorg/libsdl/app/HIDDeviceBLESteamController$3;-><init>(Lorg/libsdl/app/HIDDeviceBLESteamController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v1

    .line 370
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private finishCurrentGattOperation()V
    .locals 3

    .line 344
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mOperations:Ljava/util/LinkedList;

    monitor-enter v0

    .line 345
    :try_start_0
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mCurrentOperation:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mCurrentOperation:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;

    .line 347
    iput-object v2, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mCurrentOperation:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 349
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 351
    invoke-virtual {v1}, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->finish()Z

    move-result v0

    if-nez v0, :cond_1

    .line 355
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mOperations:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 358
    :cond_1
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->executeNextGattOperation()V

    return-void

    :catchall_0
    move-exception v1

    .line 349
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private isRegistered()Z
    .locals 1

    .line 290
    iget-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsRegistered:Z

    return v0
.end method

.method private probeService(Lorg/libsdl/app/HIDDeviceBLESteamController;)Z
    .locals 6

    .line 299
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->isRegistered()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 303
    :cond_0
    iget-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsConnected:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 307
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "probeService controller="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "hidapi"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattService;

    .line 310
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v4

    sget-object v5, Lorg/libsdl/app/HIDDeviceBLESteamController;->steamControllerService:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 311
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found Valve steam controller service "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 314
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    sget-object v4, Lorg/libsdl/app/HIDDeviceBLESteamController;->inputCharacteristic:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "Found input characteristic"

    .line 315
    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "00002902-0000-1000-8000-00805f9b34fb"

    .line 317
    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 319
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/libsdl/app/HIDDeviceBLESteamController;->enableNotification(Ljava/util/UUID;)V

    goto :goto_0

    :cond_4
    return v1

    .line 327
    :cond_5
    iget-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsChromebook:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsReconnecting:Z

    if-nez p1, :cond_6

    const-string p1, "Chromebook: Discovered services were empty; this almost certainly means the BtGatt.ContextMap bug has bitten us."

    .line 328
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iput-boolean v2, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsConnected:Z

    .line 330
    iput-boolean v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsReconnecting:Z

    .line 331
    iget-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 332
    invoke-direct {p0, v2}, Lorg/libsdl/app/HIDDeviceBLESteamController;->connectGatt(Z)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    :cond_6
    return v2
.end method

.method private queueGattOperation(Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;)V
    .locals 2

    .line 390
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mOperations:Ljava/util/LinkedList;

    monitor-enter v0

    .line 391
    :try_start_0
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mOperations:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 392
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->executeNextGattOperation()V

    return-void

    :catchall_0
    move-exception p1

    .line 392
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private setRegistered()V
    .locals 1

    const/4 v0, 0x1

    .line 294
    iput-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsRegistered:Z

    return-void
.end method


# virtual methods
.method protected checkConnectionForChromebookIssue()V
    .locals 5

    .line 229
    iget-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsChromebook:Z

    if-nez v0, :cond_0

    return-void

    .line 235
    :cond_0
    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getConnectionState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "hidapi"

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    goto :goto_0

    .line 239
    :cond_1
    iget-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsConnected:Z

    if-nez v0, :cond_2

    const-string v0, "Chromebook: We are in a very bad state; the controller shows as connected in the underlying Bluetooth layer, but we never received a callback.  Forcing a reconnect."

    .line 242
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iput-boolean v2, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsReconnecting:Z

    .line 244
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 245
    invoke-direct {p0, v1}, Lorg/libsdl/app/HIDDeviceBLESteamController;->connectGatt(Z)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    goto :goto_0

    .line 248
    :cond_2
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_4

    .line 249
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "Chromebook: We are connected to a controller, but never got our registration.  Trying to recover."

    .line 250
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-direct {p0, p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->probeService(Lorg/libsdl/app/HIDDeviceBLESteamController;)Z

    goto :goto_0

    :cond_3
    const-string v0, "Chromebook: We are connected to a controller, but never discovered services.  Trying to recover."

    .line 254
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iput-boolean v2, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsReconnecting:Z

    .line 256
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 257
    invoke-direct {p0, v1}, Lorg/libsdl/app/HIDDeviceBLESteamController;->connectGatt(Z)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    goto :goto_0

    :cond_4
    const-string v0, "Chromebook: We are connected, and registered.  Everything\'s good!"

    .line 262
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const-string v0, "Chromebook: We\'re still trying to connect.  Waiting a bit longer."

    .line 276
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const-string v0, "Chromebook: We have either been disconnected, or the Chromebook BtGatt.ContextMap bug has bitten us.  Attempting a disconnect/reconnect, but we may not be able to recover."

    .line 268
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iput-boolean v2, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsReconnecting:Z

    .line 271
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 272
    invoke-direct {p0, v1}, Lorg/libsdl/app/HIDDeviceBLESteamController;->connectGatt(Z)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 281
    :goto_0
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/libsdl/app/HIDDeviceBLESteamController$2;

    invoke-direct {v1, p0, p0}, Lorg/libsdl/app/HIDDeviceBLESteamController$2;-><init>(Lorg/libsdl/app/HIDDeviceBLESteamController;Lorg/libsdl/app/HIDDeviceBLESteamController;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method protected getConnectionState()I
    .locals 3

    .line 203
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mManager:Lorg/libsdl/app/HIDDeviceManager;

    invoke-virtual {v0}, Lorg/libsdl/app/HIDDeviceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "bluetooth"

    .line 209
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    if-nez v0, :cond_1

    return v1

    .line 216
    :cond_1
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v0

    return v0
.end method

.method public getFeatureReport([B)Z
    .locals 1

    .line 603
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->isRegistered()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "hidapi"

    const-string v0, "Attempted getFeatureReport before Steam Controller is registered!"

    .line 604
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-boolean p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsConnected:Z

    if-eqz p1, :cond_0

    .line 606
    invoke-direct {p0, p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->probeService(Lorg/libsdl/app/HIDDeviceBLESteamController;)Z

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 612
    :cond_1
    sget-object p1, Lorg/libsdl/app/HIDDeviceBLESteamController;->reportCharacteristic:Ljava/util/UUID;

    invoke-virtual {p0, p1}, Lorg/libsdl/app/HIDDeviceBLESteamController;->readCharacteristic(Ljava/util/UUID;)V

    const/4 p1, 0x1

    return p1
.end method

.method public getGatt()Landroid/bluetooth/BluetoothGatt;
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 526
    iget v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mDeviceId:I

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 179
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "SteamController.%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManufacturerName()Ljava/lang/String;
    .locals 1

    const-string v0, "Valve Corporation"

    return-object v0
.end method

.method public getProductId()I
    .locals 1

    const/16 v0, 0x1106

    return v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    const-string v0, "Steam Controller"

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    const-string v0, "12345"

    return-object v0
.end method

.method public getVendorId()I
    .locals 1

    const/16 v0, 0x28de

    return v0
.end method

.method public getVersion()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1

    .line 482
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    sget-object v0, Lorg/libsdl/app/HIDDeviceBLESteamController;->inputCharacteristic:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mFrozen:Z

    if-nez p1, :cond_0

    .line 483
    iget-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mManager:Lorg/libsdl/app/HIDDeviceManager;

    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getId()I

    move-result v0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceInputReport(I[B)V

    :cond_0
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0

    .line 456
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    sget-object p3, Lorg/libsdl/app/HIDDeviceBLESteamController;->reportCharacteristic:Ljava/util/UUID;

    invoke-virtual {p1, p3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mFrozen:Z

    if-nez p1, :cond_0

    .line 457
    iget-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mManager:Lorg/libsdl/app/HIDDeviceManager;

    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getId()I

    move-result p3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceFeatureReport(I[B)V

    .line 460
    :cond_0
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->finishCurrentGattOperation()V

    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 10

    .line 466
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    sget-object p2, Lorg/libsdl/app/HIDDeviceBLESteamController;->reportCharacteristic:Ljava/util/UUID;

    invoke-virtual {p1, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 468
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->isRegistered()Z

    move-result p1

    if-nez p1, :cond_0

    .line 469
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Registering Steam Controller with ID: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "hidapi"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mManager:Lorg/libsdl/app/HIDDeviceManager;

    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getId()I

    move-result v1

    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getVendorId()I

    move-result v3

    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getProductId()I

    move-result v4

    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getSerialNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getVersion()I

    move-result v6

    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getManufacturerName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getProductName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceConnected(ILjava/lang/String;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 471
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->setRegistered()V

    .line 475
    :cond_0
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->finishCurrentGattOperation()V

    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0

    const/4 p1, 0x0

    .line 417
    iput-boolean p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsReconnecting:Z

    const/4 p2, 0x2

    if-ne p3, p2, :cond_0

    const/4 p1, 0x1

    .line 419
    iput-boolean p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsConnected:Z

    .line 421
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->isRegistered()Z

    move-result p1

    if-nez p1, :cond_1

    .line 422
    iget-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mHandler:Landroid/os/Handler;

    new-instance p2, Lorg/libsdl/app/HIDDeviceBLESteamController$4;

    invoke-direct {p2, p0}, Lorg/libsdl/app/HIDDeviceBLESteamController$4;-><init>(Lorg/libsdl/app/HIDDeviceBLESteamController;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 431
    iput-boolean p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsConnected:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0

    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 1

    .line 492
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    .line 495
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p3

    sget-object v0, Lorg/libsdl/app/HIDDeviceBLESteamController;->inputCharacteristic:Ljava/util/UUID;

    invoke-virtual {p3, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 497
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object p2

    sget-object p3, Lorg/libsdl/app/HIDDeviceBLESteamController;->reportCharacteristic:Ljava/util/UUID;

    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p3, "hidapi"

    const-string v0, "Writing report characteristic to enter valve mode"

    .line 499
    invoke-static {p3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    sget-object p3, Lorg/libsdl/app/HIDDeviceBLESteamController;->enterValveMode:[B

    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 501
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 505
    :cond_0
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->finishCurrentGattOperation()V

    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0

    return-void
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0

    return-void
.end method

.method public onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0

    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 1

    if-nez p2, :cond_1

    .line 440
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "hidapi"

    const-string v0, "onServicesDiscovered returned zero services; something has gone horribly wrong down in Android\'s Bluetooth stack."

    .line 441
    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    .line 442
    iput-boolean p2, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsReconnecting:Z

    const/4 p2, 0x0

    .line 443
    iput-boolean p2, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsConnected:Z

    .line 444
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 445
    invoke-direct {p0, p2}, Lorg/libsdl/app/HIDDeviceBLESteamController;->connectGatt(Z)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    goto :goto_0

    .line 448
    :cond_0
    invoke-direct {p0, p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->probeService(Lorg/libsdl/app/HIDDeviceBLESteamController;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public open()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public readCharacteristic(Ljava/util/UUID;)V
    .locals 1

    .line 407
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0, p1}, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->readCharacteristic(Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;)Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;

    move-result-object p1

    .line 408
    invoke-direct {p0, p1}, Lorg/libsdl/app/HIDDeviceBLESteamController;->queueGattOperation(Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;)V

    return-void
.end method

.method public reconnect()V
    .locals 2

    .line 221
    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getConnectionState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 222
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 223
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->connectGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    :cond_0
    return-void
.end method

.method public sendFeatureReport([B)I
    .locals 2

    .line 571
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "hidapi"

    const-string v0, "Attempted sendFeatureReport before Steam Controller is registered!"

    .line 572
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-boolean p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsConnected:Z

    if-eqz p1, :cond_0

    .line 574
    invoke-direct {p0, p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->probeService(Lorg/libsdl/app/HIDDeviceBLESteamController;)Z

    :cond_0
    const/4 p1, -0x1

    return p1

    .line 580
    :cond_1
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 582
    sget-object v1, Lorg/libsdl/app/HIDDeviceBLESteamController;->reportCharacteristic:Ljava/util/UUID;

    invoke-virtual {p0, v1, v0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->writeCharacteristic(Ljava/util/UUID;[B)V

    .line 583
    array-length p1, p1

    return p1
.end method

.method public sendOutputReport([B)I
    .locals 1

    .line 588
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "hidapi"

    const-string v0, "Attempted sendOutputReport before Steam Controller is registered!"

    .line 589
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-boolean p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsConnected:Z

    if-eqz p1, :cond_0

    .line 591
    invoke-direct {p0, p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->probeService(Lorg/libsdl/app/HIDDeviceBLESteamController;)Z

    :cond_0
    const/4 p1, -0x1

    return p1

    .line 597
    :cond_1
    sget-object v0, Lorg/libsdl/app/HIDDeviceBLESteamController;->reportCharacteristic:Ljava/util/UUID;

    invoke-virtual {p0, v0, p1}, Lorg/libsdl/app/HIDDeviceBLESteamController;->writeCharacteristic(Ljava/util/UUID;[B)V

    .line 598
    array-length p1, p1

    return p1
.end method

.method public setFrozen(Z)V
    .locals 0

    .line 622
    iput-boolean p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mFrozen:Z

    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 627
    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->close()V

    .line 629
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 631
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 632
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 633
    iput-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 635
    :cond_0
    iput-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mManager:Lorg/libsdl/app/HIDDeviceManager;

    const/4 v0, 0x0

    .line 636
    iput-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsRegistered:Z

    .line 637
    iput-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsConnected:Z

    .line 638
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mOperations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public writeCharacteristic(Ljava/util/UUID;[B)V
    .locals 1

    .line 402
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v0, p1, p2}, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->writeCharacteristic(Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;[B)Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;

    move-result-object p1

    .line 403
    invoke-direct {p0, p1}, Lorg/libsdl/app/HIDDeviceBLESteamController;->queueGattOperation(Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;)V

    return-void
.end method
