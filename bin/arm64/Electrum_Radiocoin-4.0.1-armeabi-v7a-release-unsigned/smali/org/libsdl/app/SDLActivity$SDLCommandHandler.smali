.class public Lorg/libsdl/app/SDLActivity$SDLCommandHandler;
.super Landroid/os/Handler;
.source "SDLActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libsdl/app/SDLActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SDLCommandHandler"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 567
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 570
    invoke-static {}, Lorg/libsdl/app/SDL;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SDL"

    if-nez v0, :cond_0

    const-string p1, "error handling message, getContext() returned null"

    .line 572
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 575
    :cond_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    const-string v3, "error handling message, getContext() returned no Activity"

    const/4 v4, 0x1

    if-eq v2, v4, :cond_8

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eq v2, v5, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    .line 642
    instance-of v2, v0, Lorg/libsdl/app/SDLActivity;

    if-eqz v2, :cond_a

    check-cast v0, Lorg/libsdl/app/SDLActivity;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/libsdl/app/SDLActivity;->onUnhandledMessage(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error handling message, command is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 629
    :cond_1
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_a

    .line 630
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 632
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Integer;

    const/16 v2, 0x80

    if-eqz v1, :cond_2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_2

    .line 633
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_0

    .line 635
    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_0

    .line 615
    :cond_3
    sget-object p1, Lorg/libsdl/app/SDLActivity;->mTextEdit:Landroid/view/View;

    if-eqz p1, :cond_a

    .line 619
    sget-object p1, Lorg/libsdl/app/SDLActivity;->mTextEdit:Landroid/view/View;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string p1, "input_method"

    .line 621
    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 622
    sget-object v0, Lorg/libsdl/app/SDLActivity;->mTextEdit:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 624
    sput-boolean v6, Lorg/libsdl/app/SDLActivity;->mScreenKeyboardShown:Z

    goto :goto_0

    .line 584
    :cond_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-ge v2, v5, :cond_5

    goto :goto_0

    .line 588
    :cond_5
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_7

    .line 589
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 591
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Integer;

    const/16 v2, 0x400

    const/16 v3, 0x800

    if-eqz v1, :cond_6

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_6

    const/16 p1, 0x1706

    .line 598
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 599
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 600
    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 601
    sput-boolean v4, Lorg/libsdl/app/SDLActivity;->mFullscreenModeActive:Z

    goto :goto_0

    :cond_6
    const/16 p1, 0x100

    .line 604
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 605
    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 606
    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 607
    sput-boolean v6, Lorg/libsdl/app/SDLActivity;->mFullscreenModeActive:Z

    goto :goto_0

    .line 611
    :cond_7
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 577
    :cond_8
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_9

    .line 578
    check-cast v0, Landroid/app/Activity;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 580
    :cond_9
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_0
    return-void
.end method
