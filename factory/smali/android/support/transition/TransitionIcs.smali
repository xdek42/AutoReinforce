.class Landroid/support/transition/TransitionIcs;
.super Landroid/support/transition/TransitionImpl;
.source "TransitionIcs.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/TransitionIcs$CompatListener;,
        Landroid/support/transition/TransitionIcs$TransitionWrapper;
    }
.end annotation


# instance fields
.field private mCompatListener:Landroid/support/transition/TransitionIcs$CompatListener;

.field mExternalTransition:Landroid/support/transition/TransitionInterface;

.field mTransition:Landroid/support/transition/TransitionPort;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/transition/TransitionImpl;-><init>()V

    .line 236
    return-void
.end method


# virtual methods
.method public addListener(Landroid/support/transition/TransitionInterfaceListener;)Landroid/support/transition/TransitionImpl;
    .locals 2
    .param p1, "listener"    # Landroid/support/transition/TransitionInterfaceListener;

    .prologue
    .line 51
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mCompatListener:Landroid/support/transition/TransitionIcs$CompatListener;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Landroid/support/transition/TransitionIcs$CompatListener;

    invoke-direct {v0, p0}, Landroid/support/transition/TransitionIcs$CompatListener;-><init>(Landroid/support/transition/TransitionIcs;)V

    iput-object v0, p0, Landroid/support/transition/TransitionIcs;->mCompatListener:Landroid/support/transition/TransitionIcs$CompatListener;

    .line 53
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    iget-object v1, p0, Landroid/support/transition/TransitionIcs;->mCompatListener:Landroid/support/transition/TransitionIcs$CompatListener;

    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionPort;->addListener(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionPort;

    .line 55
    :cond_0
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mCompatListener:Landroid/support/transition/TransitionIcs$CompatListener;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionIcs$CompatListener;->addListener(Landroid/support/transition/TransitionInterfaceListener;)V

    .line 56
    return-object p0
.end method

.method public addTarget(I)Landroid/support/transition/TransitionImpl;
    .locals 1
    .param p1, "targetId"    # I

    .prologue
    .line 80
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionPort;->addTarget(I)Landroid/support/transition/TransitionPort;

    .line 81
    return-object p0
.end method

.method public addTarget(Landroid/view/View;)Landroid/support/transition/TransitionImpl;
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 74
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionPort;->addTarget(Landroid/view/View;)Landroid/support/transition/TransitionPort;

    .line 75
    return-object p0
.end method

.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .locals 1
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 86
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionPort;->captureEndValues(Landroid/support/transition/TransitionValues;)V

    .line 87
    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .locals 1
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 91
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionPort;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    .line 92
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 97
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/transition/TransitionPort;->createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public excludeChildren(IZ)Landroid/support/transition/TransitionImpl;
    .locals 1
    .param p1, "targetId"    # I
    .param p2, "exclude"    # Z

    .prologue
    .line 108
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionPort;->excludeChildren(IZ)Landroid/support/transition/TransitionPort;

    .line 109
    return-object p0
.end method

.method public excludeChildren(Landroid/view/View;Z)Landroid/support/transition/TransitionImpl;
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    .prologue
    .line 102
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionPort;->excludeChildren(Landroid/view/View;Z)Landroid/support/transition/TransitionPort;

    .line 103
    return-object p0
.end method

.method public excludeChildren(Ljava/lang/Class;Z)Landroid/support/transition/TransitionImpl;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "exclude"    # Z

    .prologue
    .line 114
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionPort;->excludeChildren(Ljava/lang/Class;Z)Landroid/support/transition/TransitionPort;

    .line 115
    return-object p0
.end method

.method public excludeTarget(IZ)Landroid/support/transition/TransitionImpl;
    .locals 1
    .param p1, "targetId"    # I
    .param p2, "exclude"    # Z

    .prologue
    .line 126
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionPort;->excludeTarget(IZ)Landroid/support/transition/TransitionPort;

    .line 127
    return-object p0
.end method

.method public excludeTarget(Landroid/view/View;Z)Landroid/support/transition/TransitionImpl;
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    .prologue
    .line 120
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionPort;->excludeTarget(Landroid/view/View;Z)Landroid/support/transition/TransitionPort;

    .line 121
    return-object p0
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Landroid/support/transition/TransitionImpl;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "exclude"    # Z

    .prologue
    .line 132
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionPort;->excludeTarget(Ljava/lang/Class;Z)Landroid/support/transition/TransitionPort;

    .line 133
    return-object p0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0}, Landroid/support/transition/TransitionPort;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0}, Landroid/support/transition/TransitionPort;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0}, Landroid/support/transition/TransitionPort;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartDelay()J
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0}, Landroid/support/transition/TransitionPort;->getStartDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTargetIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0}, Landroid/support/transition/TransitionPort;->getTargetIds()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTargets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0}, Landroid/support/transition/TransitionPort;->getTargets()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0}, Landroid/support/transition/TransitionPort;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # Z

    .prologue
    .line 191
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionPort;->getTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/support/transition/TransitionInterface;Ljava/lang/Object;)V
    .locals 1
    .param p1, "external"    # Landroid/support/transition/TransitionInterface;
    .param p2, "internal"    # Ljava/lang/Object;

    .prologue
    .line 41
    iput-object p1, p0, Landroid/support/transition/TransitionIcs;->mExternalTransition:Landroid/support/transition/TransitionInterface;

    .line 42
    if-nez p2, :cond_0

    .line 43
    new-instance v0, Landroid/support/transition/TransitionIcs$TransitionWrapper;

    invoke-direct {v0, p1}, Landroid/support/transition/TransitionIcs$TransitionWrapper;-><init>(Landroid/support/transition/TransitionInterface;)V

    iput-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    .line 47
    .end local p2    # "internal":Ljava/lang/Object;
    :goto_0
    return-void

    .line 45
    .restart local p2    # "internal":Ljava/lang/Object;
    :cond_0
    check-cast p2, Landroid/support/transition/TransitionPort;

    .end local p2    # "internal":Ljava/lang/Object;
    iput-object p2, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    goto :goto_0
.end method

.method public removeListener(Landroid/support/transition/TransitionInterfaceListener;)Landroid/support/transition/TransitionImpl;
    .locals 2
    .param p1, "listener"    # Landroid/support/transition/TransitionInterfaceListener;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mCompatListener:Landroid/support/transition/TransitionIcs$CompatListener;

    if-nez v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-object p0

    .line 64
    :cond_1
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mCompatListener:Landroid/support/transition/TransitionIcs$CompatListener;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionIcs$CompatListener;->removeListener(Landroid/support/transition/TransitionInterfaceListener;)V

    .line 65
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mCompatListener:Landroid/support/transition/TransitionIcs$CompatListener;

    invoke-virtual {v0}, Landroid/support/transition/TransitionIcs$CompatListener;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    iget-object v1, p0, Landroid/support/transition/TransitionIcs;->mCompatListener:Landroid/support/transition/TransitionIcs$CompatListener;

    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionPort;->removeListener(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionPort;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/transition/TransitionIcs;->mCompatListener:Landroid/support/transition/TransitionIcs$CompatListener;

    goto :goto_0
.end method

.method public removeTarget(I)Landroid/support/transition/TransitionImpl;
    .locals 1
    .param p1, "targetId"    # I

    .prologue
    .line 202
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionPort;->removeTarget(I)Landroid/support/transition/TransitionPort;

    .line 203
    return-object p0
.end method

.method public removeTarget(Landroid/view/View;)Landroid/support/transition/TransitionImpl;
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 196
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionPort;->removeTarget(Landroid/view/View;)Landroid/support/transition/TransitionPort;

    .line 197
    return-object p0
.end method

.method public setDuration(J)Landroid/support/transition/TransitionImpl;
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 143
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionPort;->setDuration(J)Landroid/support/transition/TransitionPort;

    .line 144
    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/TransitionImpl;
    .locals 1
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 154
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionPort;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/TransitionPort;

    .line 155
    return-object p0
.end method

.method public setStartDelay(J)Landroid/support/transition/TransitionImpl;
    .locals 1
    .param p1, "startDelay"    # J

    .prologue
    .line 170
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionPort;->setStartDelay(J)Landroid/support/transition/TransitionPort;

    .line 171
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Landroid/support/transition/TransitionIcs;->mTransition:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0}, Landroid/support/transition/TransitionPort;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
