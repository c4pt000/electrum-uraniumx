.class public Lorg/renpy/android/Hardware$generic3AxisSensor;
.super Ljava/lang/Object;
.source "Hardware.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/renpy/android/Hardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "generic3AxisSensor"
.end annotation


# instance fields
.field private final sSensor:Landroid/hardware/Sensor;

.field sSensorEvent:Landroid/hardware/SensorEvent;

.field private final sSensorManager:Landroid/hardware/SensorManager;

.field private final sSensorType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lorg/renpy/android/Hardware$generic3AxisSensor;->sSensorType:I

    .line 82
    sget-object p1, Lorg/renpy/android/Hardware;->context:Landroid/content/Context;

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lorg/renpy/android/Hardware$generic3AxisSensor;->sSensorManager:Landroid/hardware/SensorManager;

    .line 83
    iget-object p1, p0, Lorg/renpy/android/Hardware$generic3AxisSensor;->sSensorManager:Landroid/hardware/SensorManager;

    iget v0, p0, Lorg/renpy/android/Hardware$generic3AxisSensor;->sSensorType:I

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lorg/renpy/android/Hardware$generic3AxisSensor;->sSensor:Landroid/hardware/Sensor;

    return-void
.end method


# virtual methods
.method public changeStatus(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 98
    iget-object p1, p0, Lorg/renpy/android/Hardware$generic3AxisSensor;->sSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lorg/renpy/android/Hardware$generic3AxisSensor;->sSensor:Landroid/hardware/Sensor;

    const/4 v1, 0x3

    invoke-virtual {p1, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    .line 100
    :cond_0
    iget-object p1, p0, Lorg/renpy/android/Hardware$generic3AxisSensor;->sSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lorg/renpy/android/Hardware$generic3AxisSensor;->sSensor:Landroid/hardware/Sensor;

    invoke-virtual {p1, p0, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :goto_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lorg/renpy/android/Hardware$generic3AxisSensor;->sSensorEvent:Landroid/hardware/SensorEvent;

    return-void
.end method

.method public readSensor()[F
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/renpy/android/Hardware$generic3AxisSensor;->sSensorEvent:Landroid/hardware/SensorEvent;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    return-object v0

    .line 111
    :cond_0
    sget-object v0, Lorg/renpy/android/Hardware;->defaultRv:[F

    return-object v0
.end method
