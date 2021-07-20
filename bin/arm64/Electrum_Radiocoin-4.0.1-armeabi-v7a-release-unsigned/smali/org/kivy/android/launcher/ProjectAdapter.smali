.class public Lorg/kivy/android/launcher/ProjectAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ProjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lorg/kivy/android/launcher/Project;",
        ">;"
    }
.end annotation


# instance fields
.field private resourceManager:Lorg/renpy/android/ResourceManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 18
    new-instance v0, Lorg/renpy/android/ResourceManager;

    invoke-direct {v0, p1}, Lorg/renpy/android/ResourceManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lorg/kivy/android/launcher/ProjectAdapter;->resourceManager:Lorg/renpy/android/ResourceManager;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 22
    invoke-virtual {p0, p1}, Lorg/kivy/android/launcher/ProjectAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/kivy/android/launcher/Project;

    .line 24
    iget-object p2, p0, Lorg/kivy/android/launcher/ProjectAdapter;->resourceManager:Lorg/renpy/android/ResourceManager;

    const-string p3, "chooser_item"

    invoke-virtual {p2, p3}, Lorg/renpy/android/ResourceManager;->inflateView(Ljava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 25
    iget-object p3, p0, Lorg/kivy/android/launcher/ProjectAdapter;->resourceManager:Lorg/renpy/android/ResourceManager;

    const-string v0, "title"

    invoke-virtual {p3, p2, v0}, Lorg/renpy/android/ResourceManager;->getViewById(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 26
    iget-object v0, p0, Lorg/kivy/android/launcher/ProjectAdapter;->resourceManager:Lorg/renpy/android/ResourceManager;

    const-string v1, "author"

    invoke-virtual {v0, p2, v1}, Lorg/renpy/android/ResourceManager;->getViewById(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 27
    iget-object v1, p0, Lorg/kivy/android/launcher/ProjectAdapter;->resourceManager:Lorg/renpy/android/ResourceManager;

    const-string v2, "icon"

    invoke-virtual {v1, p2, v2}, Lorg/renpy/android/ResourceManager;->getViewById(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 29
    iget-object v2, p1, Lorg/kivy/android/launcher/Project;->title:Ljava/lang/String;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object p3, p1, Lorg/kivy/android/launcher/Project;->author:Ljava/lang/String;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object p1, p1, Lorg/kivy/android/launcher/Project;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-object p2
.end method
