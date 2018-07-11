.class Landroid/support/transition/TransitionManagerKitKat;
.super Landroid/support/transition/TransitionManagerImpl;
.source "TransitionManagerKitKat.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x13
.end annotation


# instance fields
.field private final mTransitionManager:Landroid/transition/TransitionManager;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/transition/TransitionManagerImpl;-><init>()V

    .line 28
    new-instance v0, Landroid/transition/TransitionManager;

    invoke-direct {v0}, Landroid/transition/TransitionManager;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionManagerKitKat;->mTransitionManager:Landroid/transition/TransitionManager;

    return-void
.end method


# virtual methods
.method public setTransition(Landroid/support/transition/SceneImpl;Landroid/support/transition/SceneImpl;Landroid/support/transition/TransitionImpl;)V
    .locals 4
    .param p1, "fromScene"    # Landroid/support/transition/SceneImpl;
    .param p2, "toScene"    # Landroid/support/transition/SceneImpl;
    .param p3, "transition"    # Landroid/support/transition/TransitionImpl;

    .prologue
    .line 38
    iget-object v1, p0, Landroid/support/transition/TransitionManagerKitKat;->mTransitionManager:Landroid/transition/TransitionManager;

    check-cast p1, Landroid/support/transition/SceneWrapper;

    .end local p1    # "fromScene":Landroid/support/transition/SceneImpl;
    iget-object v2, p1, Landroid/support/transition/SceneWrapper;->mScene:Landroid/transition/Scene;

    check-cast p2, Landroid/support/transition/SceneWrapper;

    .end local p2    # "toScene":Landroid/support/transition/SceneImpl;
    iget-object v3, p2, Landroid/support/transition/SceneWrapper;->mScene:Landroid/transition/Scene;

    if-nez p3, :cond_0

    const/4 v0, 0x0

    .end local p3    # "transition":Landroid/support/transition/TransitionImpl;
    :goto_0
    invoke-virtual {v1, v2, v3, v0}, Landroid/transition/TransitionManager;->setTransition(Landroid/transition/Scene;Landroid/transition/Scene;Landroid/transition/Transition;)V

    .line 41
    return-void

    .line 38
    .restart local p3    # "transition":Landroid/support/transition/TransitionImpl;
    :cond_0
    check-cast p3, Landroid/support/transition/TransitionKitKat;

    .end local p3    # "transition":Landroid/support/transition/TransitionImpl;
    iget-object v0, p3, Landroid/support/transition/TransitionKitKat;->mTransition:Landroid/transition/Transition;

    goto :goto_0
.end method

.method public setTransition(Landroid/support/transition/SceneImpl;Landroid/support/transition/TransitionImpl;)V
    .locals 3
    .param p1, "scene"    # Landroid/support/transition/SceneImpl;
    .param p2, "transition"    # Landroid/support/transition/TransitionImpl;

    .prologue
    .line 32
    iget-object v1, p0, Landroid/support/transition/TransitionManagerKitKat;->mTransitionManager:Landroid/transition/TransitionManager;

    check-cast p1, Landroid/support/transition/SceneWrapper;

    .end local p1    # "scene":Landroid/support/transition/SceneImpl;
    iget-object v2, p1, Landroid/support/transition/SceneWrapper;->mScene:Landroid/transition/Scene;

    if-nez p2, :cond_0

    const/4 v0, 0x0

    .end local p2    # "transition":Landroid/support/transition/TransitionImpl;
    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/transition/TransitionManager;->setTransition(Landroid/transition/Scene;Landroid/transition/Transition;)V

    .line 34
    return-void

    .line 32
    .restart local p2    # "transition":Landroid/support/transition/TransitionImpl;
    :cond_0
    check-cast p2, Landroid/support/transition/TransitionKitKat;

    .end local p2    # "transition":Landroid/support/transition/TransitionImpl;
    iget-object v0, p2, Landroid/support/transition/TransitionKitKat;->mTransition:Landroid/transition/Transition;

    goto :goto_0
.end method

.method public transitionTo(Landroid/support/transition/SceneImpl;)V
    .locals 2
    .param p1, "scene"    # Landroid/support/transition/SceneImpl;

    .prologue
    .line 45
    iget-object v0, p0, Landroid/support/transition/TransitionManagerKitKat;->mTransitionManager:Landroid/transition/TransitionManager;

    check-cast p1, Landroid/support/transition/SceneWrapper;

    .end local p1    # "scene":Landroid/support/transition/SceneImpl;
    iget-object v1, p1, Landroid/support/transition/SceneWrapper;->mScene:Landroid/transition/Scene;

    invoke-virtual {v0, v1}, Landroid/transition/TransitionManager;->transitionTo(Landroid/transition/Scene;)V

    .line 46
    return-void
.end method
