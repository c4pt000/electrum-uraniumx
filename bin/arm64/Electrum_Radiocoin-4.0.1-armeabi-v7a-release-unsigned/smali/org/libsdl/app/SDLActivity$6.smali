.class Lorg/libsdl/app/SDLActivity$6;
.super Ljava/lang/Object;
.source "SDLActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/libsdl/app/SDLActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/libsdl/app/SDLActivity;

.field final synthetic val$mapping:Landroid/util/SparseArray;


# direct methods
.method constructor <init>(Lorg/libsdl/app/SDLActivity;Landroid/util/SparseArray;)V
    .locals 0

    .line 1338
    iput-object p1, p0, Lorg/libsdl/app/SDLActivity$6;->this$0:Lorg/libsdl/app/SDLActivity;

    iput-object p2, p0, Lorg/libsdl/app/SDLActivity$6;->val$mapping:Landroid/util/SparseArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1341
    iget-object p1, p0, Lorg/libsdl/app/SDLActivity$6;->val$mapping:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_1

    .line 1343
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    .line 1344
    invoke-virtual {p1}, Landroid/widget/Button;->performClick()Z

    :cond_0
    return p3

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
