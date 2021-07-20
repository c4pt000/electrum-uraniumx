.class Lorg/renpy/android/Hardware$1;
.super Landroid/content/BroadcastReceiver;
.source "Hardware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/renpy/android/Hardware;->enableWifiScanner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 204
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p2, "wifi"

    .line 209
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 210
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p1

    sput-object p1, Lorg/renpy/android/Hardware;->latestResult:Ljava/util/List;

    return-void
.end method
