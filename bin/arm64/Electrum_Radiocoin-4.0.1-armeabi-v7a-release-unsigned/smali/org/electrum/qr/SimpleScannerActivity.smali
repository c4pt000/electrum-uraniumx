.class public Lorg/electrum/qr/SimpleScannerActivity;
.super Landroid/app/Activity;
.source "SimpleScannerActivity.java"

# interfaces
.implements Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;


# static fields
.field private static final MY_PERMISSIONS_CAMERA:I = 0x3ea


# instance fields
.field final TAG:Ljava/lang/String;

.field private mScannerView:Lme/dm7/barcodescanner/zxing/ZXingScannerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lorg/electrum/qr/SimpleScannerActivity;->mScannerView:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    const-string v0, "org.electrum.SimpleScannerActivity"

    .line 22
    iput-object v0, p0, Lorg/electrum/qr/SimpleScannerActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method private hasPermission()Z
    .locals 1

    const-string v0, "android.permission.CAMERA"

    .line 60
    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private requestPermission()V
    .locals 2

    const-string v0, "android.permission.CAMERA"

    .line 66
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method private startCamera()V
    .locals 4

    .line 43
    new-instance v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    invoke-direct {v0, p0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/electrum/qr/SimpleScannerActivity;->mScannerView:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    .line 44
    iget-object v0, p0, Lorg/electrum/qr/SimpleScannerActivity;->mScannerView:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/zxing/BarcodeFormat;

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->setFormats(Ljava/util/List;)V

    .line 45
    iget-object v0, p0, Lorg/electrum/qr/SimpleScannerActivity;->mScannerView:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    invoke-virtual {p0, v0}, Lorg/electrum/qr/SimpleScannerActivity;->setContentView(Landroid/view/View;)V

    .line 46
    iget-object v0, p0, Lorg/electrum/qr/SimpleScannerActivity;->mScannerView:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    invoke-virtual {v0, p0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->setResultHandler(Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;)V

    .line 47
    iget-object v0, p0, Lorg/electrum/qr/SimpleScannerActivity;->mScannerView:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    invoke-virtual {v0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->startCamera()V

    return-void
.end method


# virtual methods
.method public handleResult(Lcom/google/zxing/Result;)V
    .locals 3

    .line 52
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 53
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "format"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 55
    invoke-virtual {p0, p1, v0}, Lorg/electrum/qr/SimpleScannerActivity;->setResult(ILandroid/content/Intent;)V

    .line 56
    invoke-virtual {p0}, Lorg/electrum/qr/SimpleScannerActivity;->finish()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 36
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 37
    iget-object v0, p0, Lorg/electrum/qr/SimpleScannerActivity;->mScannerView:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->stopCamera()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/16 p2, 0x3ea

    if-eq p1, p2, :cond_0

    return-void

    .line 76
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 79
    invoke-direct {p0}, Lorg/electrum/qr/SimpleScannerActivity;->startCamera()V

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {p0}, Lorg/electrum/qr/SimpleScannerActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 26
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 27
    invoke-direct {p0}, Lorg/electrum/qr/SimpleScannerActivity;->hasPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-direct {p0}, Lorg/electrum/qr/SimpleScannerActivity;->startCamera()V

    goto :goto_0

    .line 30
    :cond_0
    invoke-direct {p0}, Lorg/electrum/qr/SimpleScannerActivity;->requestPermission()V

    :goto_0
    return-void
.end method
