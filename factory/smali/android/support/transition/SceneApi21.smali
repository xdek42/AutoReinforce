.class Landroid/support/transition/SceneApi21;
.super Landroid/support/transition/SceneWrapper;
.source "SceneApi21.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/transition/SceneWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Landroid/support/transition/SceneApi21;->mScene:Landroid/transition/Scene;

    invoke-virtual {v0}, Landroid/transition/Scene;->enter()V

    .line 41
    return-void
.end method

.method public init(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 30
    new-instance v0, Landroid/transition/Scene;

    invoke-direct {v0, p1}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/support/transition/SceneApi21;->mScene:Landroid/transition/Scene;

    .line 31
    return-void
.end method

.method public init(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "layout"    # Landroid/view/View;

    .prologue
    .line 35
    new-instance v0, Landroid/transition/Scene;

    invoke-direct {v0, p1, p2}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/transition/SceneApi21;->mScene:Landroid/transition/Scene;

    .line 36
    return-void
.end method
