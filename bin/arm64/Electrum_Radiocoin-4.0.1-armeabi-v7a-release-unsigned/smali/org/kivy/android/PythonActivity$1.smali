.class Lorg/kivy/android/PythonActivity$1;
.super Ljava/lang/Object;
.source "PythonActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/kivy/android/PythonActivity;->toastError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/kivy/android/PythonActivity;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$thisActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lorg/kivy/android/PythonActivity;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lorg/kivy/android/PythonActivity$1;->this$0:Lorg/kivy/android/PythonActivity;

    iput-object p2, p0, Lorg/kivy/android/PythonActivity$1;->val$thisActivity:Landroid/app/Activity;

    iput-object p3, p0, Lorg/kivy/android/PythonActivity$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 89
    iget-object v0, p0, Lorg/kivy/android/PythonActivity$1;->val$thisActivity:Landroid/app/Activity;

    iget-object v1, p0, Lorg/kivy/android/PythonActivity$1;->val$msg:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
