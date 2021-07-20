.class Lorg/kivy/android/PythonActivity$3;
.super Ljava/lang/Object;
.source "PythonActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/kivy/android/PythonActivity;->requestFocusForMainView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/kivy/android/PythonActivity;


# direct methods
.method constructor <init>(Lorg/kivy/android/PythonActivity;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lorg/kivy/android/PythonActivity$3;->this$0:Lorg/kivy/android/PythonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "PythonActivity"

    const-string v1, "requestFocusForMainView is getting focus now."

    .line 412
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-static {}, Lorg/kivy/android/PythonActivity;->getSurface()Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestFocus()Z

    return-void
.end method
