.class Landroid/support/transition/TransitionKitKat;
.super Landroid/support/transition/TransitionImpl;
.source "TransitionKitKat.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/TransitionKitKat$CompatListener;,
        Landroid/support/transition/TransitionKitKat$TransitionWrapper;
    }
.end annotation


# instance fields
.field private mCompatListener:Landroid/support/transition/TransitionKitKat$CompatListener;

.field mExternalTransition:Landroid/support/transition/TransitionInterface;

.field mTransition:Landroid/transition/Transition;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/transition/TransitionImpl;-><init>()V

    .line 328
    return-void
.end method

.method static convertToPlatform(Landroid/support/transition/TransitionValues;)Landroid/transition/TransitionValues;
    .locals 1
    .param p0, "values"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 91
    if-nez p0, :cond_0

    .line 92
    const/4 v0, 0x0

    .line 97
    :goto_0
    return-object v0

    .line 94
    :cond_0
    new-instance v0, Landroid/transition/TransitionValues;

    invoke-direct {v0}, Landroid/transition/TransitionValues;-><init>()V

    .line 96
    .local v0, "platformValues":Landroid/transition/TransitionValues;
    invoke-static {p0, v0}, Landroid/support/transition/TransitionKitKat;->copyValues(Landroid/support/transition/TransitionValues;Landroid/transition/TransitionValues;)V

    goto :goto_0
.end method

.method static convertToSupport(Landroid/transition/TransitionValues;)Landroid/support/transition/TransitionValues;
    .locals 1
    .param p0, "values"    # Landroid/transition/TransitionValues;

    .prologue
    .line 82
    if-nez p0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 87
    :goto_0
    return-object v0

    .line 85
    :cond_0
    new-instance v0, Landroid/support/transition/TransitionValues;

    invoke-direct {v0}, Landroid/support/transition/TransitionValues;-><init>()V

    .line 86
    .local v0, "supportValues":Landroid/support/transition/TransitionValues;
    invoke-static {p0, v0}, Landroid/support/transition/TransitionKitKat;->copyValues(Landroid/transition/TransitionValues;Landroid/support/transition/TransitionValues;)V

    goto :goto_0
.end method

.method static copyValues(Landroid/support/transition/TransitionValues;Landroid/transition/TransitionValues;)V
    .locals 2
    .param p0, "source"    # Landroid/support/transition/TransitionValues;
    .param p1, "dest"    # Landroid/transition/TransitionValues;

    .prologue
    .line 54
    if-nez p0, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    iput-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 58
    iget-object v0, p0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 59
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v1, p0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method static copyValues(Landroid/transition/TransitionValues;Landroid/support/transition/TransitionValues;)V
    .locals 2
    .param p0, "source"    # Landroid/transition/TransitionValues;
    .param p1, "dest"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 43
    if-nez p0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    iput-object v0, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 47
    iget-object v0, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 48
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v1, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method static wrapCaptureEndValues(Landroid/support/transition/TransitionInterface;Landroid/transition/TransitionValues;)V
    .locals 1
    .param p0, "transition"    # Landroid/support/transition/TransitionInterface;
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 74
    new-instance v0, Landroid/support/transition/TransitionValues;

    invoke-direct {v0}, Landroid/support/transition/TransitionValues;-><init>()V

    .line 76
    .local v0, "externalValues":Landroid/support/transition/TransitionValues;
    invoke-static {p1, v0}, Landroid/support/transition/TransitionKitKat;->copyValues(Landroid/transition/TransitionValues;Landroid/support/transition/TransitionValues;)V

    .line 77
    invoke-interface {p0, v0}, Landroid/support/transition/TransitionInterface;->captureEndValues(Landroid/support/transition/TransitionValues;)V

    .line 78
    invoke-static {v0, p1}, Landroid/support/transition/TransitionKitKat;->copyValues(Landroid/support/transition/TransitionValues;Landroid/transition/TransitionValues;)V

    .line 79
    return-void
.end method

.method static wrapCaptureStartValues(Landroid/support/transition/TransitionInterface;Landroid/transition/TransitionValues;)V
    .locals 1
    .param p0, "transition"    # Landroid/support/transition/TransitionInterface;
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 65
    new-instance v0, Landroid/support/transition/TransitionValues;

    invoke-direct {v0}, Landroid/support/transition/TransitionValues;-><init>()V

    .line 67
    .local v0, "externalValues":Landroid/support/transition/TransitionValues;
    invoke-static {p1, v0}, Landroid/support/transition/TransitionKitKat;->copyValues(Landroid/transition/TransitionValues;Landroid/support/transition/TransitionValues;)V

    .line 68
    invoke-interface {p0, v0}, Landroid/support/transition/TransitionInterface;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    .line 69
    invoke-static {v0, p1}, Landroid/support/transition/TransitionKitKat;->copyValues(Landroid/support/transition/TransitionValues;Landroid/transition/TransitionValues;)V

    .line 70
    return-void
.end method


# virtual methods
.method public addListener(Landroid/support/transition/TransitionInterfaceListener;)Landroid/support/transition/TransitionImpl;
    .locals 2
    .param p1, "listener"    # Landroid/support/transition/TransitionInterfaceListener;

    .prologue
    .line 112
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->mCompatListener:Landroid/support/transition/TransitionKitKat$CompatListener;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Landroid/support/transition/TransitionKitKat$CompatListener;

    invoke-direct {v0, p0}, Landroid/support/transition/TransitionKitKat$CompatListener;-><init>(Landroid/support/transition/TransitionKitKat;)V

    iput-object v0, p0, Landroid/support/transition/TransitionKitKat;->mCompatListener:Landroid/support/transition/TransitionKitKat$CompatListener;

    .line 114
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->mTransition:Landroid/transition/Transition;

    iget-object v1, p0, Landroid/support/transition/TransitionKitKat;->mCompatListener:Landroid/support/transition/TransitionKitKat$CompatListener;

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 116
    :cond_0
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->mCompatListener:Landroid/support/transition/TransitionKitKat$CompatListener;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionKitKat$CompatListener;->addListener(Landroid/support/transition/TransitionInterfaceListener;)V

    .line 117
    return-object p0
.end method

.method public addTarget(I)Landroid/support/transition/TransitionImpl;
    .locals 1
    .param p1, "targetId"    # I

    .prologue
    .line 141
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0, p1}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    .line 142
    return-object p0
.end method

.method public addTarget(Landroid/view/View;)Landroid/support/transition/TransitionImpl;
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 135
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0, p1}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 136
    return-object p0
.end method

.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .locals 2
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 147
    new-instance v0, Landroid/transition/TransitionValues;

    invoke-direct {v0}, Landroid/transition/TransitionValues;-><init>()V

    .line 149
    .local v0, "internalValues":Landroid/transition/TransitionValues;
    invoke-static {p1, v0}, Landroid/support/transition/TransitionKitKat;->copyValues(Landroid/support/transition/TransitionValues;Landroid/transition/TransitionValues;)V

    .line 150
    iget-object v1, p0, Landroid/support/transition/TransitionKitKat;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v1, v0}, Landroid/transition/Transition;->captureEndValues(Landroid/transition/TransitionValues;)V

    .line 151
    invoke-static {v0, p1}, Landroid/support/transition/TransitionKitKat;->copyValues(Landroid/transition/TransitionValues;Landroid/support/transition/TransitionValues;)V

    .line 152
    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .locals 2
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 156
    new-instance v0, Landroid/transition/TransitionValues;

    invoke-direct {v0}, Landroid/transition/TransitionValues;-><init>()V

    .line 158
    .local v0, "internalValues":Landroid/transition/TransitionValues;
    invoke-static {p1, v0}, Landroid/support/transition/TransitionKitKat;->copyValues(Landroid/support/transition/TransitionValues;Landroid/transition/TransitionValues;)V

    .line 159
    iget-object v1, p0, Landroid/support/transition/TransitionKitKat;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v1, v0}, Landroid/transition/Transition;->captureStartValues(Landroid/transition/TransitionValues;)V

    .line 160
    invoke-static {v0, p1}, Landroid/support/transition/TransitionKitKat;->copyValues(Landroid/transition/TransitionValues;Landroid/support/transition/TransitionValues;)V

    .line 161
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 3
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 168
    if-eqz p2, :cond_0

    .line 169
    new-instance v1, Landroid/transition/TransitionValues;

    invoke-direct {v1}, Landroid/transition/TransitionValues;-><init>()V

    .line 170
    .local v1, "internalStartValues":Landroid/transition/TransitionValues;
    invoke-static {p2, v1}, Landroid/support/transition/TransitionKitKat;->copyValues(Landroid/support/transition/TransitionValues;Landroid/transition/TransitionValues;)V

    .line 174
    :goto_0
    if-eqz p3, :cond_1

    .line 175
    new-instance v0, Landroid/transition/TransitionValues;

    invoke-direct {v0}, Landroid/transition/TransitionValues;-><init>()V

    .line 176
    .local v0, "internalEndValues":Landroid/transition/TransitionValues;
    invoke-static {p3, v0}, Landroid/support/transition/TransitionKitKat;->copyValues(Landroid/support/transition/TransitionValues;Landroid/transition/TransitionValues;)V

    .line 180
    :goto_1
    iget-object v2, p0, Landroid/support/transition/TransitionKitKat;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v2, p1, v1, v0}, Landroid/transition/Transition;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v2

    return-object v2

    .line 172
    .end local v0    # "internalEndValues":Landroid/transition/TransitionValues;
    .end local v1    # "internalStartValues":Landroid/transition/TransitionValues;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "internalStartValues":Landroid/transition/TransitionValues;
    goto :goto_0

    .line 178
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "internalEndValues":Landroid/transition/TransitionValues;
    goto :goto_1
.end method

.method public excludeChildren(IZ)Landroid/support/transition/TransitionImpl;
    .locals 1
    .param p1, "targetId"    # I
    .param p2, "exclude"    # Z

    .prologue
    .line 191
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->excludeChildren(IZ)Landroid/transition/Transition;

    .line 192
    return-object p0
.end method

.method public excludeChildren(Landroid/view/View;Z)Landroid/support/transition/TransitionImpl;
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    .prologue
    .line 185
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->excludeChildren(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 186
    return-object p0
.end method

.method public excludeChildren(Ljava/lang/Class;Z)Landroid/support/transition/TransitionImpl;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "exclude"    # Z

    .prologue
    .line 197
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->excludeChildren(Ljava/lang/Class;Z)Landroid/transition/Transition;

    .line 198
    return-object p0
.end method

.method public excludeTarget(IZ)Landroid/support/transition/TransitionImpl;
    .locals 1
    .param p1, "targetId"    # I
    .param p2, "exclude"    # Z

    .prologue
    .line 209
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->excludeTarget(IZ)Landroid/transition/Transition;

    .line 210
    return-object p0
.end method

.method public excludeTarget(Landroid/view/View;Z)Landroid/support/transition/TransitionImpl;
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    .prologue
    .line 203
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 204
    return-object p0
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Landroid/support/transition/TransitionImpl;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "exclude"    # Z

    .prologue
    .line 215
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->excludeTarget(Ljava/lang/Class;Z)Landroid/transition/Transition;

    .line 216
    return-object p0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0}, Landroid/transition/Transition;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0}, Landroid/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0}, Landroid/transition/Transition;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartDelay()J
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0}, Landroid/transition/Transition;->getStartDelay()J

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
    .line 259
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0}, Landroid/transition/Transition;->getTargetIds()Ljava/util/List;

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
    .line 264
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0}, Landroid/transition/Transition;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # Z

    .prologue
    .line 274
    new-instance v0, Landroid/support/transition/TransitionValues;

    invoke-direct {v0}, Landroid/support/transition/TransitionValues;-><init>()V

    .line 275
    .local v0, "values":Landroid/support/transition/TransitionValues;
    iget-object v1, p0, Landroid/support/transition/TransitionKitKat;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v1, p1, p2}, Landroid/transition/Transition;->getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/support/transition/TransitionKitKat;->copyValues(Landroid/transition/TransitionValues;Landroid/support/transition/TransitionValues;)V

    .line 276
    return-object v0
.end method

.method public init(Landroid/support/transition/TransitionInterface;Ljava/lang/Object;)V
    .locals 1
    .param p1, "external"    # Landroid/support/transition/TransitionInterface;
    .param p2, "internal"    # Ljava/lang/Object;

    .prologue
    .line 102
    iput-object p1, p0, Landroid/support/transition/TransitionKitKat;->mExternalTransition:Landroid/support/transition/TransitionInterface;

    .line 103
    if-nez p2, :cond_0

    .line 104
    new-instance v0, Landroid/support/transition/TransitionKitKat$TransitionWrapper;

    invoke-direct {v0, p1}, Landroid/support/transition/TransitionKitKat$TransitionWrapper;-><init>(Landroid/support/transition/TransitionInterface;)V

    iput-object v0, p0, Landroid/support/transition/TransitionKitKat;->mTransition:Landroid/transition/Transition;

    .line 108
    .end local p2    # "internal":Ljava/lang/Object;
    :goto_0
    return-void

    .line 106
    .restart local p2    # "internal":Ljava/lang/Object;
    :cond_0
    check-cast p2, Landroid/transition/Transition;

    .end local p2    # "internal":Ljava/lang/Object;
    iput-object p2, p0, Landroid/support/transition/TransitionKitKat;->mTransition:Landroid/transition/Transition;

    goto :goto_0
.end method

.method public removeListener(Landroid/support/transition/TransitionInterfaceListener;)Landroid/support/transition/TransitionImpl;
    .locals 2
    .param p1, "listener"    # Landroid/support/transition/TransitionInterfaceListener;

    .prologue
    .line 122
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->mCompatListener:Landroid/support/transition/TransitionKitKat$CompatListener;

    if-nez v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-object p0

    .line 125
    :cond_1
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->mCompatListener:Landroid/support/transition/TransitionKitKat$CompatListener;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionKitKat$CompatListener;->removeListener(Landroid/support/transition/TransitionInterfaceListener;)V

    .line 126
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->mCompatListener:Landroid/support/transition/TransitionKitKat$CompatListener;

    invoke-virtual {v0}, Landroid/support/transition/TransitionKitKat$CompatListener;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->mTransition:Landroid/transition/Transition;

    iget-object v1, p0, Landroid/support/transition/TransitionKitKat;->mCompatListener:Landroid/support/transition/TransitionKitKat$CompatListener;

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/transition/TransitionKitKat;->mCompatListener:Landroid/support/transition/TransitionKitKat$CompatListener;

    goto :goto_0
.end method

.method public removeTarget(I)Landroid/support/transition/TransitionImpl;
    .locals 2
    .param p1, "targetId"    # I

    .prologue
    .line 287
    if-lez p1, :cond_0

    .line 290
    invoke-virtual {p0}, Landroid/support/transition/TransitionKitKat;->getTargetIds()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 292
    :cond_0
    return-object p0
.end method

.method public removeTarget(Landroid/view/View;)Landroid/support/transition/TransitionImpl;
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 281
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0, p1}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 282
    return-object p0
.end method

.method public setDuration(J)Landroid/support/transition/TransitionImpl;
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 226
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 227
    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/TransitionImpl;
    .locals 1
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 237
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0, p1}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 238
    return-object p0
.end method

.method public setStartDelay(J)Landroid/support/transition/TransitionImpl;
    .locals 1
    .param p1, "startDelay"    # J

    .prologue
    .line 253
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->setStartDelay(J)Landroid/transition/Transition;

    .line 254
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Landroid/support/transition/TransitionKitKat;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0}, Landroid/transition/Transition;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
