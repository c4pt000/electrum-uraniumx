.class public Lorg/renpy/android/Hardware;
.super Ljava/lang/Object;
.source "Hardware.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/renpy/android/Hardware$generic3AxisSensor;
    }
.end annotation


# static fields
.field public static accelerometerSensor:Lorg/renpy/android/Hardware$generic3AxisSensor;

.field static context:Landroid/content/Context;

.field public static final defaultRv:[F

.field static latestResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public static magneticFieldSensor:Lorg/renpy/android/Hardware$generic3AxisSensor;

.field public static metrics:Landroid/util/DisplayMetrics;

.field public static network_state:Z

.field public static orientationSensor:Lorg/renpy/android/Hardware$generic3AxisSensor;

.field static view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 34
    fill-array-data v0, :array_0

    sput-object v0, Lorg/renpy/android/Hardware;->defaultRv:[F

    const/4 v0, 0x0

    .line 116
    sput-object v0, Lorg/renpy/android/Hardware;->accelerometerSensor:Lorg/renpy/android/Hardware$generic3AxisSensor;

    .line 117
    sput-object v0, Lorg/renpy/android/Hardware;->orientationSensor:Lorg/renpy/android/Hardware$generic3AxisSensor;

    .line 118
    sput-object v0, Lorg/renpy/android/Hardware;->magneticFieldSensor:Lorg/renpy/android/Hardware$generic3AxisSensor;

    .line 155
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lorg/renpy/android/Hardware;->metrics:Landroid/util/DisplayMetrics;

    const/4 v0, 0x0

    .line 239
    sput-boolean v0, Lorg/renpy/android/Hardware;->network_state:Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accelerometerEnable(Z)V
    .locals 2

    .line 125
    sget-object v0, Lorg/renpy/android/Hardware;->accelerometerSensor:Lorg/renpy/android/Hardware$generic3AxisSensor;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lorg/renpy/android/Hardware$generic3AxisSensor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/renpy/android/Hardware$generic3AxisSensor;-><init>(I)V

    sput-object v0, Lorg/renpy/android/Hardware;->accelerometerSensor:Lorg/renpy/android/Hardware$generic3AxisSensor;

    .line 127
    :cond_0
    sget-object v0, Lorg/renpy/android/Hardware;->accelerometerSensor:Lorg/renpy/android/Hardware$generic3AxisSensor;

    invoke-virtual {v0, p0}, Lorg/renpy/android/Hardware$generic3AxisSensor;->changeStatus(Z)V

    return-void
.end method

.method public static accelerometerReading()[F
    .locals 1

    .line 130
    sget-object v0, Lorg/renpy/android/Hardware;->accelerometerSensor:Lorg/renpy/android/Hardware$generic3AxisSensor;

    if-nez v0, :cond_0

    .line 131
    sget-object v0, Lorg/renpy/android/Hardware;->defaultRv:[F

    return-object v0

    .line 132
    :cond_0
    invoke-virtual {v0}, Lorg/renpy/android/Hardware$generic3AxisSensor;->readSensor()[F

    move-result-object v0

    return-object v0
.end method

.method public static checkNetwork()Z
    .locals 2

    .line 250
    sget-object v0, Lorg/renpy/android/Hardware;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 252
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static enableWifiScanner()V
    .locals 3

    .line 201
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    .line 202
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    sget-object v1, Lorg/renpy/android/Hardware;->context:Landroid/content/Context;

    new-instance v2, Lorg/renpy/android/Hardware$1;

    invoke-direct {v2}, Lorg/renpy/android/Hardware$1;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static getDPI()I
    .locals 2

    .line 162
    sget-object v0, Lorg/kivy/android/PythonActivity;->mActivity:Lorg/kivy/android/PythonActivity;

    invoke-virtual {v0}, Lorg/kivy/android/PythonActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget-object v1, Lorg/renpy/android/Hardware;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 163
    sget-object v0, Lorg/renpy/android/Hardware;->metrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0
.end method

.method public static getHardwareSensors()Ljava/lang/String;
    .locals 6

    .line 50
    sget-object v0, Lorg/renpy/android/Hardware;->context:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    .line 51
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Name="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ",Vendor="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ",Version="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getVersion()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ",MaximumRange="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ",Power="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getPower()F

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ",Type="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_0
    return-object v1
.end method

.method public static hideKeyboard()V
    .locals 3

    .line 190
    sget-object v0, Lorg/renpy/android/Hardware;->context:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 191
    sget-object v1, Lorg/renpy/android/Hardware;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public static magneticFieldSensorEnable(Z)V
    .locals 2

    .line 145
    sget-object v0, Lorg/renpy/android/Hardware;->magneticFieldSensor:Lorg/renpy/android/Hardware$generic3AxisSensor;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lorg/renpy/android/Hardware$generic3AxisSensor;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/renpy/android/Hardware$generic3AxisSensor;-><init>(I)V

    sput-object v0, Lorg/renpy/android/Hardware;->magneticFieldSensor:Lorg/renpy/android/Hardware$generic3AxisSensor;

    .line 147
    :cond_0
    sget-object v0, Lorg/renpy/android/Hardware;->magneticFieldSensor:Lorg/renpy/android/Hardware$generic3AxisSensor;

    invoke-virtual {v0, p0}, Lorg/renpy/android/Hardware$generic3AxisSensor;->changeStatus(Z)V

    return-void
.end method

.method public static magneticFieldSensorReading()[F
    .locals 1

    .line 150
    sget-object v0, Lorg/renpy/android/Hardware;->magneticFieldSensor:Lorg/renpy/android/Hardware$generic3AxisSensor;

    if-nez v0, :cond_0

    .line 151
    sget-object v0, Lorg/renpy/android/Hardware;->defaultRv:[F

    return-object v0

    .line 152
    :cond_0
    invoke-virtual {v0}, Lorg/renpy/android/Hardware$generic3AxisSensor;->readSensor()[F

    move-result-object v0

    return-object v0
.end method

.method public static orientationSensorEnable(Z)V
    .locals 2

    .line 135
    sget-object v0, Lorg/renpy/android/Hardware;->orientationSensor:Lorg/renpy/android/Hardware$generic3AxisSensor;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lorg/renpy/android/Hardware$generic3AxisSensor;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/renpy/android/Hardware$generic3AxisSensor;-><init>(I)V

    sput-object v0, Lorg/renpy/android/Hardware;->orientationSensor:Lorg/renpy/android/Hardware$generic3AxisSensor;

    .line 137
    :cond_0
    sget-object v0, Lorg/renpy/android/Hardware;->orientationSensor:Lorg/renpy/android/Hardware$generic3AxisSensor;

    invoke-virtual {v0, p0}, Lorg/renpy/android/Hardware$generic3AxisSensor;->changeStatus(Z)V

    return-void
.end method

.method public static orientationSensorReading()[F
    .locals 1

    .line 140
    sget-object v0, Lorg/renpy/android/Hardware;->orientationSensor:Lorg/renpy/android/Hardware$generic3AxisSensor;

    if-nez v0, :cond_0

    .line 141
    sget-object v0, Lorg/renpy/android/Hardware;->defaultRv:[F

    return-object v0

    .line 142
    :cond_0
    invoke-virtual {v0}, Lorg/renpy/android/Hardware$generic3AxisSensor;->readSensor()[F

    move-result-object v0

    return-object v0
.end method

.method public static registerNetworkCheck()V
    .locals 3

    .line 267
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 268
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    sget-object v1, Lorg/renpy/android/Hardware;->context:Landroid/content/Context;

    new-instance v2, Lorg/renpy/android/Hardware$2;

    invoke-direct {v2}, Lorg/renpy/android/Hardware$2;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static scanWifi()Ljava/lang/String;
    .locals 6

    .line 221
    sget-object v0, Lorg/renpy/android/Hardware;->latestResult:Ljava/util/List;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 224
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    aput-object v5, v1, v4

    const/4 v4, 0x1

    iget-object v5, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    aput-object v5, v1, v4

    const/4 v4, 0x2

    iget v2, v2, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "%s\t%s\t%d\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static vibrate(D)V
    .locals 3

    .line 40
    sget-object v0, Lorg/renpy/android/Hardware;->context:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    const-wide v1, 0x408f400000000000L    # 1000.0

    mul-double p0, p0, v1

    double-to-int p0, p0

    int-to-long p0, p0

    .line 42
    invoke-virtual {v0, p0, p1}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    return-void
.end method
