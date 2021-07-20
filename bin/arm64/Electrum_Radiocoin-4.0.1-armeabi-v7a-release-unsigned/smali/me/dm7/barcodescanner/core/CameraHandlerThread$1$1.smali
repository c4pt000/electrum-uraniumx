.class Lme/dm7/barcodescanner/core/CameraHandlerThread$1$1;
.super Ljava/lang/Object;
.source "CameraHandlerThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/dm7/barcodescanner/core/CameraHandlerThread$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lme/dm7/barcodescanner/core/CameraHandlerThread$1;

.field final synthetic val$camera:Landroid/hardware/Camera;


# direct methods
.method constructor <init>(Lme/dm7/barcodescanner/core/CameraHandlerThread$1;Landroid/hardware/Camera;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lme/dm7/barcodescanner/core/CameraHandlerThread$1$1;->this$1:Lme/dm7/barcodescanner/core/CameraHandlerThread$1;

    iput-object p2, p0, Lme/dm7/barcodescanner/core/CameraHandlerThread$1$1;->val$camera:Landroid/hardware/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 31
    iget-object v0, p0, Lme/dm7/barcodescanner/core/CameraHandlerThread$1$1;->this$1:Lme/dm7/barcodescanner/core/CameraHandlerThread$1;

    iget-object v0, v0, Lme/dm7/barcodescanner/core/CameraHandlerThread$1;->this$0:Lme/dm7/barcodescanner/core/CameraHandlerThread;

    invoke-static {v0}, Lme/dm7/barcodescanner/core/CameraHandlerThread;->access$000(Lme/dm7/barcodescanner/core/CameraHandlerThread;)Lme/dm7/barcodescanner/core/BarcodeScannerView;

    move-result-object v0

    iget-object v1, p0, Lme/dm7/barcodescanner/core/CameraHandlerThread$1$1;->val$camera:Landroid/hardware/Camera;

    iget-object v2, p0, Lme/dm7/barcodescanner/core/CameraHandlerThread$1$1;->this$1:Lme/dm7/barcodescanner/core/CameraHandlerThread$1;

    iget v2, v2, Lme/dm7/barcodescanner/core/CameraHandlerThread$1;->val$cameraId:I

    invoke-static {v1, v2}, Lme/dm7/barcodescanner/core/CameraWrapper;->getWrapper(Landroid/hardware/Camera;I)Lme/dm7/barcodescanner/core/CameraWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->setupCameraPreview(Lme/dm7/barcodescanner/core/CameraWrapper;)V

    return-void
.end method
