.class Landroid/support/v4/graphics/PaintCompatGingerbread;
.super Ljava/lang/Object;
.source "PaintCompatGingerbread.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x9
.end annotation


# static fields
.field private static final TOFU_STRING:Ljava/lang/String; = "\udb3f\udffd"

.field private static final sRectThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/support/v4/util/Pair",
            "<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/PaintCompatGingerbread;->sRectThreadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static hasGlyph(Landroid/graphics/Paint;Ljava/lang/String;)Z
    .locals 12
    .param p0, "paint"    # Landroid/graphics/Paint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "string"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 35
    .local v2, "length":I
    if-ne v2, v8, :cond_1

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_1

    move v9, v8

    .line 87
    :cond_0
    :goto_0
    return v9

    .line 40
    :cond_1
    const-string v7, "\udb3f\udffd"

    invoke-virtual {p0, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 41
    .local v3, "missingGlyphWidth":F
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 43
    .local v6, "width":F
    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-eqz v7, :cond_0

    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v9, v7}, Ljava/lang/String;->codePointCount(II)I

    move-result v7

    if-le v7, v8, :cond_3

    .line 51
    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v7, v3

    cmpl-float v7, v6, v7

    if-gtz v7, :cond_0

    .line 65
    const/4 v5, 0x0

    .line 66
    .local v5, "sumWidth":F
    const/4 v1, 0x0

    .line 67
    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 68
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    .line 69
    .local v0, "charCount":I
    add-int v7, v1, v0

    invoke-virtual {p0, p1, v1, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v7

    add-float/2addr v5, v7

    .line 70
    add-int/2addr v1, v0

    .line 71
    goto :goto_1

    .line 72
    .end local v0    # "charCount":I
    :cond_2
    cmpl-float v7, v6, v5

    if-gez v7, :cond_0

    .line 77
    .end local v1    # "i":I
    .end local v5    # "sumWidth":F
    :cond_3
    cmpl-float v7, v6, v3

    if-eqz v7, :cond_4

    move v9, v8

    .line 79
    goto :goto_0

    .line 84
    :cond_4
    invoke-static {}, Landroid/support/v4/graphics/PaintCompatGingerbread;->obtainEmptyRects()Landroid/support/v4/util/Pair;

    move-result-object v4

    .line 85
    .local v4, "rects":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/graphics/Rect;Landroid/graphics/Rect;>;"
    const-string v10, "\udb3f\udffd"

    const-string v7, "\udb3f\udffd"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    iget-object v7, v4, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/graphics/Rect;

    invoke-virtual {p0, v10, v9, v11, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 86
    iget-object v7, v4, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v9, v2, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 87
    iget-object v7, v4, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/graphics/Rect;

    iget-object v10, v4, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v7, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    move v7, v8

    :goto_2
    move v9, v7

    goto :goto_0

    :cond_5
    move v7, v9

    goto :goto_2
.end method

.method private static obtainEmptyRects()Landroid/support/v4/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/Pair",
            "<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    sget-object v1, Landroid/support/v4/graphics/PaintCompatGingerbread;->sRectThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/Pair;

    .line 92
    .local v0, "rects":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/graphics/Rect;Landroid/graphics/Rect;>;"
    if-nez v0, :cond_0

    .line 93
    new-instance v0, Landroid/support/v4/util/Pair;

    .end local v0    # "rects":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/graphics/Rect;Landroid/graphics/Rect;>;"
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    .restart local v0    # "rects":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/graphics/Rect;Landroid/graphics/Rect;>;"
    sget-object v1, Landroid/support/v4/graphics/PaintCompatGingerbread;->sRectThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 99
    :goto_0
    return-object v0

    .line 96
    :cond_0
    iget-object v1, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 97
    iget-object v1, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method
