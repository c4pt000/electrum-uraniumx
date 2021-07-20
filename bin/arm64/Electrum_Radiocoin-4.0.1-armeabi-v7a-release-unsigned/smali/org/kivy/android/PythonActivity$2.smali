.class Lorg/kivy/android/PythonActivity$2;
.super Ljava/lang/Object;
.source "PythonActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/kivy/android/PythonActivity;->considerLoadingScreenRemoval()V
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

    .line 377
    iput-object p1, p0, Lorg/kivy/android/PythonActivity$2;->this$0:Lorg/kivy/android/PythonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 379
    invoke-static {}, Lorg/kivy/android/PythonActivity;->access$600()Lorg/libsdl/app/SDLActivity;

    move-result-object v0

    check-cast v0, Lorg/kivy/android/PythonActivity;

    iget-boolean v0, v0, Lorg/kivy/android/PythonActivity;->mAppConfirmedActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/kivy/android/PythonActivity$2;->this$0:Lorg/kivy/android/PythonActivity;

    iget-object v0, v0, Lorg/kivy/android/PythonActivity;->loadingScreenRemovalTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 386
    new-instance v0, Lorg/kivy/android/PythonActivity$2$1;

    invoke-direct {v0, p0}, Lorg/kivy/android/PythonActivity$2$1;-><init>(Lorg/kivy/android/PythonActivity$2;)V

    .line 401
    iget-object v1, p0, Lorg/kivy/android/PythonActivity$2;->this$0:Lorg/kivy/android/PythonActivity;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, v1, Lorg/kivy/android/PythonActivity;->loadingScreenRemovalTimer:Ljava/util/Timer;

    .line 402
    iget-object v1, p0, Lorg/kivy/android/PythonActivity$2;->this$0:Lorg/kivy/android/PythonActivity;

    iget-object v1, v1, Lorg/kivy/android/PythonActivity;->loadingScreenRemovalTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    return-void
.end method
