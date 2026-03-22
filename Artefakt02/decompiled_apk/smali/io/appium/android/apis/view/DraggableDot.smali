.class public Lio/appium/android/apis/view/DraggableDot;
.super Landroid/view/View;
.source "DraggableDot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/view/DraggableDot$ANRShadowBuilder;
    }
.end annotation


# static fields
.field private static final ALPHA_STEP:I = -0x199999

.field static final ANR_DROP:I = 0x2

.field static final ANR_NONE:I = 0x0

.field static final ANR_SHADOW:I = 0x1

.field private static final GREEN_STEP:I = 0x1980

.field private static final NUM_GLOW_STEPS:I = 0xa

.field static final TAG:Ljava/lang/String; = "DraggableDot"

.field private static final WHITE_STEP:I = 0x199999


# instance fields
.field private mAcceptsDrag:Z

.field mAnrType:I

.field private mDragInProgress:Z

.field private mGlow:Landroid/graphics/Paint;

.field private mHovering:Z

.field mLegend:Ljava/lang/CharSequence;

.field private mLegendPaint:Landroid/text/TextPaint;

.field private mPaint:Landroid/graphics/Paint;

.field mRadius:I

.field mReportView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/DraggableDot;->setFocusable(Z)V

    .line 87
    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/DraggableDot;->setClickable(Z)V

    .line 89
    const-string v1, ""

    iput-object v1, p0, Lio/appium/android/apis/view/DraggableDot;->mLegend:Ljava/lang/CharSequence;

    .line 91
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lio/appium/android/apis/view/DraggableDot;->mPaint:Landroid/graphics/Paint;

    .line 92
    iget-object v1, p0, Lio/appium/android/apis/view/DraggableDot;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 93
    iget-object v1, p0, Lio/appium/android/apis/view/DraggableDot;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 94
    iget-object v1, p0, Lio/appium/android/apis/view/DraggableDot;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x300000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lio/appium/android/apis/view/DraggableDot;->mLegendPaint:Landroid/text/TextPaint;

    .line 97
    iget-object v1, p0, Lio/appium/android/apis/view/DraggableDot;->mLegendPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 98
    iget-object v1, p0, Lio/appium/android/apis/view/DraggableDot;->mLegendPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 99
    iget-object v1, p0, Lio/appium/android/apis/view/DraggableDot;->mLegendPaint:Landroid/text/TextPaint;

    const v2, -0xf0f01

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 101
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lio/appium/android/apis/view/DraggableDot;->mGlow:Landroid/graphics/Paint;

    .line 102
    iget-object v1, p0, Lio/appium/android/apis/view/DraggableDot;->mGlow:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 103
    iget-object v0, p0, Lio/appium/android/apis/view/DraggableDot;->mGlow:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 104
    iget-object v0, p0, Lio/appium/android/apis/view/DraggableDot;->mGlow:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 107
    sget-object v0, Lio/appium/android/apis/R$styleable;->DraggableDot:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 110
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 111
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 112
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 113
    .local v3, "attr":I
    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 115
    :pswitch_0
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lio/appium/android/apis/view/DraggableDot;->mRadius:I

    .line 116
    goto :goto_1

    .line 119
    :pswitch_1
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lio/appium/android/apis/view/DraggableDot;->mLegend:Ljava/lang/CharSequence;

    .line 120
    goto :goto_1

    .line 123
    :pswitch_2
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lio/appium/android/apis/view/DraggableDot;->mAnrType:I

    .line 111
    .end local v3    # "attr":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    .end local v2    # "i":I
    :cond_0
    const-string v2, "DraggableDot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DraggableDot @ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " : radius="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lio/appium/android/apis/view/DraggableDot;->mRadius:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " legend=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lio/appium/android/apis/view/DraggableDot;->mLegend:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\' anr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lio/appium/android/apis/view/DraggableDot;->mAnrType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v2, Lio/appium/android/apis/view/DraggableDot$1;

    invoke-direct {v2, p0}, Lio/appium/android/apis/view/DraggableDot$1;-><init>(Lio/appium/android/apis/view/DraggableDot;)V

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/DraggableDot;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 139
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processDrop(Landroid/view/DragEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/DragEvent;

    .line 247
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    .line 248
    .local v0, "data":Landroid/content/ClipData;
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    .line 249
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 250
    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    .line 251
    .local v3, "item":Landroid/content/ClipData$Item;
    const-string v4, "DraggableDot"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dropped item "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v4, p0, Lio/appium/android/apis/view/DraggableDot;->mReportView:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 253
    invoke-virtual {p0}, Lio/appium/android/apis/view/DraggableDot;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 254
    .local v4, "text":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p0, :cond_0

    .line 255
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : Dropped on self!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 257
    :cond_0
    iget-object v5, p0, Lio/appium/android/apis/view/DraggableDot;->mReportView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    .end local v3    # "item":Landroid/content/ClipData$Item;
    .end local v4    # "text":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 260
    .end local v2    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/DragEvent;

    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "result":Z
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    .line 238
    const-string v1, "DraggableDot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "other drag event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-boolean v0, p0, Lio/appium/android/apis/view/DraggableDot;->mAcceptsDrag:Z

    goto/16 :goto_0

    .line 232
    :pswitch_0
    const-string v1, "DraggableDot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exited dot @ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iput-boolean v2, p0, Lio/appium/android/apis/view/DraggableDot;->mHovering:Z

    .line 234
    invoke-virtual {p0}, Lio/appium/android/apis/view/DraggableDot;->invalidate()V

    .line 235
    goto/16 :goto_0

    .line 226
    :pswitch_1
    const-string v1, "DraggableDot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Entered dot @ "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iput-boolean v3, p0, Lio/appium/android/apis/view/DraggableDot;->mHovering:Z

    .line 228
    invoke-virtual {p0}, Lio/appium/android/apis/view/DraggableDot;->invalidate()V

    .line 229
    goto :goto_0

    .line 202
    :pswitch_2
    const-string v1, "DraggableDot"

    const-string v3, "Drag ended."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-boolean v1, p0, Lio/appium/android/apis/view/DraggableDot;->mAcceptsDrag:Z

    if-eqz v1, :cond_0

    .line 204
    invoke-virtual {p0}, Lio/appium/android/apis/view/DraggableDot;->invalidate()V

    .line 206
    :cond_0
    iput-boolean v2, p0, Lio/appium/android/apis/view/DraggableDot;->mDragInProgress:Z

    .line 207
    iput-boolean v2, p0, Lio/appium/android/apis/view/DraggableDot;->mHovering:Z

    .line 208
    goto :goto_0

    .line 217
    :pswitch_3
    const-string v1, "DraggableDot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got a drop! dot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget v1, p0, Lio/appium/android/apis/view/DraggableDot;->mAnrType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 219
    invoke-virtual {p0}, Lio/appium/android/apis/view/DraggableDot;->sleepSixSeconds()V

    .line 221
    :cond_1
    invoke-direct {p0, p1}, Lio/appium/android/apis/view/DraggableDot;->processDrop(Landroid/view/DragEvent;)V

    .line 222
    const/4 v0, 0x1

    .line 223
    goto :goto_0

    .line 212
    :pswitch_4
    const-string v1, "DraggableDot"

    const-string v2, "... seeing drag locations ..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-boolean v0, p0, Lio/appium/android/apis/view/DraggableDot;->mAcceptsDrag:Z

    .line 214
    goto :goto_0

    .line 191
    :pswitch_5
    const-string v1, "DraggableDot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Drag started, event="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iput-boolean v3, p0, Lio/appium/android/apis/view/DraggableDot;->mDragInProgress:Z

    .line 194
    move v0, v3

    iput-boolean v3, p0, Lio/appium/android/apis/view/DraggableDot;->mAcceptsDrag:Z

    .line 196
    iget-boolean v1, p0, Lio/appium/android/apis/view/DraggableDot;->mAcceptsDrag:Z

    if-eqz v1, :cond_2

    .line 197
    invoke-virtual {p0}, Lio/appium/android/apis/view/DraggableDot;->invalidate()V

    .line 243
    :cond_2
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 147
    invoke-virtual {p0}, Lio/appium/android/apis/view/DraggableDot;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 148
    .local v0, "wf":F
    invoke-virtual {p0}, Lio/appium/android/apis/view/DraggableDot;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 149
    .local v1, "hf":F
    const/high16 v2, 0x40000000    # 2.0f

    div-float v10, v0, v2

    .line 150
    .local v10, "cx":F
    div-float v11, v1, v2

    .line 151
    .local v11, "cy":F
    invoke-virtual {p0}, Lio/appium/android/apis/view/DraggableDot;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lio/appium/android/apis/view/DraggableDot;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v0, v3

    .line 152
    invoke-virtual {p0}, Lio/appium/android/apis/view/DraggableDot;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lio/appium/android/apis/view/DraggableDot;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v1, v3

    .line 153
    cmpg-float v3, v0, v1

    if-gez v3, :cond_0

    div-float v3, v0, v2

    goto :goto_0

    :cond_0
    div-float v3, v1, v2

    :goto_0
    move v12, v3

    .line 154
    .local v12, "rad":F
    iget-object v3, p0, Lio/appium/android/apis/view/DraggableDot;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v12, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 156
    iget-object v3, p0, Lio/appium/android/apis/view/DraggableDot;->mLegend:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 157
    iget-object v4, p0, Lio/appium/android/apis/view/DraggableDot;->mLegend:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    iget-object v3, p0, Lio/appium/android/apis/view/DraggableDot;->mLegendPaint:Landroid/text/TextPaint;

    .line 158
    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontSpacing()F

    move-result v3

    div-float/2addr v3, v2

    add-float v8, v11, v3

    iget-object v9, p0, Lio/appium/android/apis/view/DraggableDot;->mLegendPaint:Landroid/text/TextPaint;

    .line 157
    move-object v3, p1

    move v7, v10

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 163
    :cond_1
    iget-boolean v2, p0, Lio/appium/android/apis/view/DraggableDot;->mDragInProgress:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lio/appium/android/apis/view/DraggableDot;->mAcceptsDrag:Z

    if-eqz v2, :cond_3

    .line 164
    const/16 v2, 0xa

    .local v2, "i":I
    :goto_1
    if-lez v2, :cond_3

    .line 165
    iget-boolean v3, p0, Lio/appium/android/apis/view/DraggableDot;->mHovering:Z

    if-eqz v3, :cond_2

    const v3, 0x199999

    goto :goto_2

    :cond_2
    const/16 v3, 0x1980

    .line 166
    .local v3, "color":I
    :goto_2
    const v4, -0x199999

    or-int/2addr v4, v3

    mul-int v4, v4, v2

    .line 167
    .end local v3    # "color":I
    .local v4, "color":I
    iget-object v3, p0, Lio/appium/android/apis/view/DraggableDot;->mGlow:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    iget-object v3, p0, Lio/appium/android/apis/view/DraggableDot;->mGlow:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v12, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 169
    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v12, v3

    .line 170
    iget-object v5, p0, Lio/appium/android/apis/view/DraggableDot;->mGlow:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v11, v12, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 171
    sub-float/2addr v12, v3

    .line 164
    .end local v4    # "color":I
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 174
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .line 178
    iget v0, p0, Lio/appium/android/apis/view/DraggableDot;->mRadius:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lio/appium/android/apis/view/DraggableDot;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lio/appium/android/apis/view/DraggableDot;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 179
    .local v0, "totalDiameter":I
    invoke-virtual {p0, v0, v0}, Lio/appium/android/apis/view/DraggableDot;->setMeasuredDimension(II)V

    .line 180
    return-void
.end method

.method setReportView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TextView;

    .line 142
    iput-object p1, p0, Lio/appium/android/apis/view/DraggableDot;->mReportView:Landroid/widget/TextView;

    .line 143
    return-void
.end method

.method sleepSixSeconds()V
    .locals 7

    .line 59
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 61
    .local v0, "start":J
    :goto_0
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 62
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1770

    add-long/2addr v4, v0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    .line 63
    return-void

    .line 62
    :cond_0
    goto :goto_0
.end method
