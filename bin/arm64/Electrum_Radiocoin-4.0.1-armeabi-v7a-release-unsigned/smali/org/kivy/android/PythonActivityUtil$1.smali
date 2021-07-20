.class Lorg/kivy/android/PythonActivityUtil$1;
.super Ljava/lang/Object;
.source "PythonActivityUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/kivy/android/PythonActivityUtil;->toastError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/kivy/android/PythonActivityUtil;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/kivy/android/PythonActivityUtil;Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lorg/kivy/android/PythonActivityUtil$1;->this$0:Lorg/kivy/android/PythonActivityUtil;

    iput-object p2, p0, Lorg/kivy/android/PythonActivityUtil$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 33
    iget-object v0, p0, Lorg/kivy/android/PythonActivityUtil$1;->this$0:Lorg/kivy/android/PythonActivityUtil;

    invoke-static {v0}, Lorg/kivy/android/PythonActivityUtil;->access$000(Lorg/kivy/android/PythonActivityUtil;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/kivy/android/PythonActivityUtil$1;->val$msg:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
