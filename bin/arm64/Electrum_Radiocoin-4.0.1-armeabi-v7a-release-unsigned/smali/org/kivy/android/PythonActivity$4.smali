.class Lorg/kivy/android/PythonActivity$4;
.super Ljava/lang/Object;
.source "PythonActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/kivy/android/PythonActivity;->removeLoadingScreen()V
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

    .line 419
    iput-object p1, p0, Lorg/kivy/android/PythonActivity$4;->this$0:Lorg/kivy/android/PythonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 421
    sget-object v0, Lorg/kivy/android/PythonActivity;->mLottieView:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/kivy/android/PythonActivity;->mLottieView:Landroid/view/View;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/kivy/android/PythonActivity;->mImageView:Landroid/widget/ImageView;

    :goto_0
    if-eqz v0, :cond_1

    .line 422
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 423
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 424
    sput-object v0, Lorg/kivy/android/PythonActivity;->mLottieView:Landroid/view/View;

    .line 425
    sput-object v0, Lorg/kivy/android/PythonActivity;->mImageView:Landroid/widget/ImageView;

    :cond_1
    return-void
.end method
