.class Lorg/libsdl/app/SDLActivity$5;
.super Ljava/lang/Object;
.source "SDLActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lorg/libsdl/app/SDLActivity;ILandroid/app/Dialog;)V
    .locals 0

    .line 1286
    iput-object p1, p0, Lorg/libsdl/app/SDLActivity$5;->this$0:Lorg/libsdl/app/SDLActivity;

    iput p2, p0, Lorg/libsdl/app/SDLActivity$5;->val$id:I

    iput-object p3, p0, Lorg/libsdl/app/SDLActivity$5;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1289
    iget-object p1, p0, Lorg/libsdl/app/SDLActivity$5;->this$0:Lorg/libsdl/app/SDLActivity;

    iget-object p1, p1, Lorg/libsdl/app/SDLActivity;->messageboxSelection:[I

    iget v0, p0, Lorg/libsdl/app/SDLActivity$5;->val$id:I

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 1290
    iget-object p1, p0, Lorg/libsdl/app/SDLActivity$5;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
