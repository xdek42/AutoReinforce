.class Landroid/support/transition/TransitionSetKitKat;
.super Landroid/support/transition/TransitionKitKat;
.source "TransitionSetKitKat.java"

# interfaces
.implements Landroid/support/transition/TransitionSetImpl;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x13
.end annotation


# instance fields
.field private mTransitionSet:Landroid/transition/TransitionSet;


# direct methods
.method public constructor <init>(Landroid/support/transition/TransitionInterface;)V
    .locals 1
    .param p1, "transition"    # Landroid/support/transition/TransitionInterface;

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/transition/TransitionKitKat;-><init>()V

    .line 29
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionSetKitKat;->mTransitionSet:Landroid/transition/TransitionSet;

    .line 30
    iget-object v0, p0, Landroid/support/transition/TransitionSetKitKat;->mTransitionSet:Landroid/transition/TransitionSet;

    invoke-virtual {p0, p1, v0}, Landroid/support/transition/TransitionSetKitKat;->init(Landroid/support/transition/TransitionInterface;Ljava/lang/Object;)V

    .line 31
    return-void
.end method


# virtual methods
.method public bridge synthetic addTransition(Landroid/support/transition/TransitionImpl;)Landroid/support/transition/TransitionSetImpl;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSetKitKat;->addTransition(Landroid/support/transition/TransitionImpl;)Landroid/support/transition/TransitionSetKitKat;

    move-result-object v0

    return-object v0
.end method

.method public addTransition(Landroid/support/transition/TransitionImpl;)Landroid/support/transition/TransitionSetKitKat;
    .locals 2
    .param p1, "transition"    # Landroid/support/transition/TransitionImpl;

    .prologue
    .line 46
    iget-object v0, p0, Landroid/support/transition/TransitionSetKitKat;->mTransitionSet:Landroid/transition/TransitionSet;

    check-cast p1, Landroid/support/transition/TransitionKitKat;

    .end local p1    # "transition":Landroid/support/transition/TransitionImpl;
    iget-object v1, p1, Landroid/support/transition/TransitionKitKat;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 47
    return-object p0
.end method

.method public getOrdering()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Landroid/support/transition/TransitionSetKitKat;->mTransitionSet:Landroid/transition/TransitionSet;

    invoke-virtual {v0}, Landroid/transition/TransitionSet;->getOrdering()I

    move-result v0

    return v0
.end method

.method public bridge synthetic removeTransition(Landroid/support/transition/TransitionImpl;)Landroid/support/transition/TransitionSetImpl;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSetKitKat;->removeTransition(Landroid/support/transition/TransitionImpl;)Landroid/support/transition/TransitionSetKitKat;

    move-result-object v0

    return-object v0
.end method

.method public removeTransition(Landroid/support/transition/TransitionImpl;)Landroid/support/transition/TransitionSetKitKat;
    .locals 2
    .param p1, "transition"    # Landroid/support/transition/TransitionImpl;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/transition/TransitionSetKitKat;->mTransitionSet:Landroid/transition/TransitionSet;

    check-cast p1, Landroid/support/transition/TransitionKitKat;

    .end local p1    # "transition":Landroid/support/transition/TransitionImpl;
    iget-object v1, p1, Landroid/support/transition/TransitionKitKat;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->removeTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 53
    return-object p0
.end method

.method public bridge synthetic setOrdering(I)Landroid/support/transition/TransitionSetImpl;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSetKitKat;->setOrdering(I)Landroid/support/transition/TransitionSetKitKat;

    move-result-object v0

    return-object v0
.end method

.method public setOrdering(I)Landroid/support/transition/TransitionSetKitKat;
    .locals 1
    .param p1, "ordering"    # I

    .prologue
    .line 40
    iget-object v0, p0, Landroid/support/transition/TransitionSetKitKat;->mTransitionSet:Landroid/transition/TransitionSet;

    invoke-virtual {v0, p1}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 41
    return-object p0
.end method
