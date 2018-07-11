.class Landroid/support/design/widget/FloatingActionButtonGingerbread$DisabledElevationAnimation;
.super Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;
.source "FloatingActionButtonGingerbread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/FloatingActionButtonGingerbread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisabledElevationAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/FloatingActionButtonGingerbread;


# direct methods
.method constructor <init>(Landroid/support/design/widget/FloatingActionButtonGingerbread;)V
    .locals 1

    .prologue
    .line 269
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButtonGingerbread$DisabledElevationAnimation;->this$0:Landroid/support/design/widget/FloatingActionButtonGingerbread;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/FloatingActionButtonGingerbread$ShadowAnimatorImpl;-><init>(Landroid/support/design/widget/FloatingActionButtonGingerbread;Landroid/support/design/widget/FloatingActionButtonGingerbread$1;)V

    .line 270
    return-void
.end method


# virtual methods
.method protected getTargetShadowSize()F
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    return v0
.end method
