.class Lorg/libsdl/app/SDLClipboardHandler_Old;
.super Ljava/lang/Object;
.source "SDLActivity.java"

# interfaces
.implements Lorg/libsdl/app/SDLClipboardHandler;


# instance fields
.field protected mClipMgrOld:Landroid/text/ClipboardManager;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 2179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2180
    invoke-static {}, Lorg/libsdl/app/SDL;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    iput-object v0, p0, Lorg/libsdl/app/SDLClipboardHandler_Old;->mClipMgrOld:Landroid/text/ClipboardManager;

    return-void
.end method


# virtual methods
.method public clipboardGetText()Ljava/lang/String;
    .locals 1

    .line 2191
    iget-object v0, p0, Lorg/libsdl/app/SDLClipboardHandler_Old;->mClipMgrOld:Landroid/text/ClipboardManager;

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2193
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public clipboardHasText()Z
    .locals 1

    .line 2185
    iget-object v0, p0, Lorg/libsdl/app/SDLClipboardHandler_Old;->mClipMgrOld:Landroid/text/ClipboardManager;

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v0

    return v0
.end method

.method public clipboardSetText(Ljava/lang/String;)V
    .locals 1

    .line 2200
    iget-object v0, p0, Lorg/libsdl/app/SDLClipboardHandler_Old;->mClipMgrOld:Landroid/text/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
