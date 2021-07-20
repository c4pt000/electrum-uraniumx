.class Lorg/kivy/android/PythonActivity$2$1;
.super Ljava/util/TimerTask;
.source "PythonActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/kivy/android/PythonActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/kivy/android/PythonActivity$2;


# direct methods
.method constructor <init>(Lorg/kivy/android/PythonActivity$2;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lorg/kivy/android/PythonActivity$2$1;->this$1:Lorg/kivy/android/PythonActivity$2;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 390
    iget-object v0, p0, Lorg/kivy/android/PythonActivity$2$1;->this$1:Lorg/kivy/android/PythonActivity$2;

    iget-object v0, v0, Lorg/kivy/android/PythonActivity$2;->this$0:Lorg/kivy/android/PythonActivity;

    new-instance v1, Lorg/kivy/android/PythonActivity$2$1$1;

    invoke-direct {v1, p0}, Lorg/kivy/android/PythonActivity$2$1$1;-><init>(Lorg/kivy/android/PythonActivity$2$1;)V

    invoke-virtual {v0, v1}, Lorg/kivy/android/PythonActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
