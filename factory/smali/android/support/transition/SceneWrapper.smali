.class abstract Landroid/support/transition/SceneWrapper;
.super Landroid/support/transition/SceneImpl;
.source "SceneWrapper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x13
.end annotation


# instance fields
.field mScene:Landroid/transition/Scene;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/transition/SceneImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public exit()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Landroid/support/transition/SceneWrapper;->mScene:Landroid/transition/Scene;

    invoke-virtual {v0}, Landroid/transition/Scene;->exit()V

    .line 38
    return-void
.end method

.method public getSceneRoot()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Landroid/support/transition/SceneWrapper;->mScene:Landroid/transition/Scene;

    invoke-virtual {v0}, Landroid/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public setEnterAction(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 42
    iget-object v0, p0, Landroid/support/transition/SceneWrapper;->mScene:Landroid/transition/Scene;

    invoke-virtual {v0, p1}, Landroid/transition/Scene;->setEnterAction(Ljava/lang/Runnable;)V

    .line 43
    return-void
.end method

.method public setExitAction(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 47
    iget-object v0, p0, Landroid/support/transition/SceneWrapper;->mScene:Landroid/transition/Scene;

    invoke-virtual {v0, p1}, Landroid/transition/Scene;->setExitAction(Ljava/lang/Runnable;)V

    .line 48
    return-void
.end method
