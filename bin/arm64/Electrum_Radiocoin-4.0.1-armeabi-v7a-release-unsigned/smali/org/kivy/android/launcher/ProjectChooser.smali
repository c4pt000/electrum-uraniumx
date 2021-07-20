.class public Lorg/kivy/android/launcher/ProjectChooser;
.super Landroid/app/Activity;
.source "ProjectChooser.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field resourceManager:Lorg/renpy/android/ResourceManager;

.field urlScheme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 80
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/kivy/android/launcher/Project;

    .line 82
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lorg/kivy/android/launcher/ProjectChooser;->urlScheme:Ljava/lang/String;

    iget-object p1, p1, Lorg/kivy/android/launcher/Project;->dir:Ljava/lang/String;

    const-string p4, ""

    .line 84
    invoke-static {p3, p1, p4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p3, "org.kivy.LAUNCH"

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 86
    invoke-virtual {p0}, Lorg/kivy/android/launcher/ProjectChooser;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "org.kivy.android.PythonActivity"

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, p2}, Lorg/kivy/android/launcher/ProjectChooser;->startActivity(Landroid/content/Intent;)V

    .line 88
    invoke-virtual {p0}, Lorg/kivy/android/launcher/ProjectChooser;->finish()V

    return-void
.end method

.method public onStart()V
    .locals 6

    .line 27
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 29
    new-instance v0, Lorg/renpy/android/ResourceManager;

    invoke-direct {v0, p0}, Lorg/renpy/android/ResourceManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lorg/kivy/android/launcher/ProjectChooser;->resourceManager:Lorg/renpy/android/ResourceManager;

    .line 31
    iget-object v0, p0, Lorg/kivy/android/launcher/ProjectChooser;->resourceManager:Lorg/renpy/android/ResourceManager;

    const-string v1, "urlScheme"

    invoke-virtual {v0, v1}, Lorg/renpy/android/ResourceManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/kivy/android/launcher/ProjectChooser;->urlScheme:Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lorg/kivy/android/launcher/ProjectChooser;->resourceManager:Lorg/renpy/android/ResourceManager;

    const-string v1, "appName"

    invoke-virtual {v0, v1}, Lorg/renpy/android/ResourceManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/kivy/android/launcher/ProjectChooser;->setTitle(Ljava/lang/CharSequence;)V

    .line 37
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lorg/kivy/android/launcher/ProjectChooser;->urlScheme:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-array v1, v2, [Ljava/io/File;

    .line 45
    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 48
    new-instance v3, Lorg/kivy/android/launcher/ProjectAdapter;

    invoke-direct {v3, p0}, Lorg/kivy/android/launcher/ProjectAdapter;-><init>(Landroid/app/Activity;)V

    .line 51
    array-length v4, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v1, v2

    .line 52
    invoke-static {v5}, Lorg/kivy/android/launcher/Project;->scanDirectory(Ljava/io/File;)Lorg/kivy/android/launcher/Project;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 54
    invoke-virtual {v3, v5}, Lorg/kivy/android/launcher/ProjectAdapter;->add(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {v3}, Lorg/kivy/android/launcher/ProjectAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_3

    .line 60
    iget-object v0, p0, Lorg/kivy/android/launcher/ProjectChooser;->resourceManager:Lorg/renpy/android/ResourceManager;

    const-string v1, "project_chooser"

    invoke-virtual {v0, v1}, Lorg/renpy/android/ResourceManager;->inflateView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lorg/kivy/android/launcher/ProjectChooser;->resourceManager:Lorg/renpy/android/ResourceManager;

    const-string v2, "projectList"

    invoke-virtual {v1, v0, v2}, Lorg/renpy/android/ResourceManager;->getViewById(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 63
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 66
    invoke-virtual {p0, v0}, Lorg/kivy/android/launcher/ProjectChooser;->setContentView(Landroid/view/View;)V

    goto :goto_1

    .line 70
    :cond_3
    iget-object v1, p0, Lorg/kivy/android/launcher/ProjectChooser;->resourceManager:Lorg/renpy/android/ResourceManager;

    const-string v2, "project_empty"

    invoke-virtual {v1, v2}, Lorg/renpy/android/ResourceManager;->inflateView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 71
    iget-object v2, p0, Lorg/kivy/android/launcher/ProjectChooser;->resourceManager:Lorg/renpy/android/ResourceManager;

    const-string v3, "emptyText"

    invoke-virtual {v2, v1, v3}, Lorg/renpy/android/ResourceManager;->getViewById(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No projects are available to launch. Please place a project into "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " and restart this application. Press the back button to exit."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {p0, v1}, Lorg/kivy/android/launcher/ProjectChooser;->setContentView(Landroid/view/View;)V

    :goto_1
    return-void
.end method
