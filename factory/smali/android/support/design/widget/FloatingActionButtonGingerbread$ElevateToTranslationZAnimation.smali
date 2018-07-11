.class Landroid/support/design/widget/FloatingActionButtonGingerbread$ElevateToTranslationZAnimation;
.super Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;
.source "FloatingActionButtonGingerbread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/FloatingActionButtonGingerbread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ElevateToTranslationZAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/FloatingActionButtonGingerbread;


# direct methods
.method constructor <init>(Landroid/support/design/widget/FloatingActionButtonGingerbread;)V
    .locals 1

    .prologue
    .line 259
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread$ElevateToTranslationZAnimation;->this$0:Landroid/support/design/widget/FloatingActionButtonGingerbread;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;-><init>(Landroid/support/design/widget/FloatingActionButtonGingerbread;Landroid/support/design/widget/FloatingActionButtonGingerbread$1;)V

    .line 260
    return-void
.end method


# virtual methods
.method protected getTargetShadowSize()F
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread$ElevateToTranslationZAnimation;->this$0:Landroid/support/design/widget/FloatingActionButtonGingerbread;

    iget v0, v0, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mElevation:F

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread$ElevateToTranslationZAnimation;->this$0:Landroid/support/design/widget/FloatingActionButtonGingerbread;

    iget v1, v1, Landroid/support/design/widget/FloatingActionButtonGingerbread;->mPressedTranslationZ:F

    add-float/2addr v0, v1

    return v0
.end method
