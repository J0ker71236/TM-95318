.class public Lio/appium/android/apis/graphics/FingerPaint;
.super Lio/appium/android/apis/graphics/GraphicsActivity;
.source "FingerPaint.java"

# interfaces
.implements Lio/appium/android/apis/graphics/ColorPickerDialog$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/graphics/FingerPaint$MyView;
    }
.end annotation


# static fields
.field private static final BLUR_MENU_ID:I = 0x3

.field private static final COLOR_MENU_ID:I = 0x1

.field private static final EMBOSS_MENU_ID:I = 0x2

.field private static final ERASE_MENU_ID:I = 0x4

.field private static final SRCATOP_MENU_ID:I = 0x5


# instance fields
.field private mBlur:Landroid/graphics/MaskFilter;

.field private mEmboss:Landroid/graphics/MaskFilter;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lio/appium/android/apis/graphics/GraphicsActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/graphics/FingerPaint;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/graphics/FingerPaint;

    .line 27
    iget-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 1
    .param p1, "color"    # I

    .line 55
    iget-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 32
    invoke-super {p0, p1}, Lio/appium/android/apis/graphics/GraphicsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    new-instance v0, Lio/appium/android/apis/graphics/FingerPaint$MyView;

    invoke-direct {v0, p0, p0}, Lio/appium/android/apis/graphics/FingerPaint$MyView;-><init>(Lio/appium/android/apis/graphics/FingerPaint;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/FingerPaint;->setContentView(Landroid/view/View;)V

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    .line 36
    iget-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 37
    iget-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 38
    iget-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    iget-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    iget-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 41
    iget-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 42
    iget-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 44
    new-instance v0, Landroid/graphics/EmbossMaskFilter;

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const v2, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x40c00000    # 6.0f

    const/high16 v4, 0x40600000    # 3.5f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/EmbossMaskFilter;-><init>([FFFF)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint;->mEmboss:Landroid/graphics/MaskFilter;

    .line 47
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    sget-object v1, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-direct {v0, v2, v1}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint;->mBlur:Landroid/graphics/MaskFilter;

    .line 48
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .line 148
    invoke-super {p0, p1}, Lio/appium/android/apis/graphics/GraphicsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 150
    const-string v0, "Color"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v3, 0x33

    const/16 v4, 0x63

    invoke-interface {v0, v3, v4}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 151
    const-string v0, "Emboss"

    const/4 v3, 0x2

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v3, 0x34

    const/16 v4, 0x73

    invoke-interface {v0, v3, v4}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 152
    const-string v0, "Blur"

    const/4 v3, 0x3

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v3, 0x7a

    const/16 v4, 0x35

    invoke-interface {v0, v4, v3}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 153
    const-string v0, "Erase"

    const/4 v5, 0x4

    invoke-interface {p1, v2, v5, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4, v3}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 154
    const-string v0, "SrcATop"

    const/4 v5, 0x5

    invoke-interface {p1, v2, v5, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4, v3}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 164
    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 175
    iget-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 176
    iget-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 178
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 206
    invoke-super {p0, p1}, Lio/appium/android/apis/graphics/GraphicsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 201
    :pswitch_0
    iget-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 203
    iget-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 204
    return v2

    .line 197
    :pswitch_1
    iget-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 199
    return v2

    .line 190
    :pswitch_2
    iget-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getMaskFilter()Landroid/graphics/MaskFilter;

    move-result-object v0

    iget-object v3, p0, Lio/appium/android/apis/graphics/FingerPaint;->mBlur:Landroid/graphics/MaskFilter;

    if-eq v0, v3, :cond_0

    .line 191
    iget-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    .line 193
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 195
    :goto_0
    return v2

    .line 183
    :pswitch_3
    iget-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getMaskFilter()Landroid/graphics/MaskFilter;

    move-result-object v0

    iget-object v3, p0, Lio/appium/android/apis/graphics/FingerPaint;->mEmboss:Landroid/graphics/MaskFilter;

    if-eq v0, v3, :cond_1

    .line 184
    iget-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_1

    .line 186
    :cond_1
    iget-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 188
    :goto_1
    return v2

    .line 180
    :pswitch_4
    new-instance v0, Lio/appium/android/apis/graphics/ColorPickerDialog;

    iget-object v1, p0, Lio/appium/android/apis/graphics/FingerPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-direct {v0, p0, p0, v1}, Lio/appium/android/apis/graphics/ColorPickerDialog;-><init>(Landroid/content/Context;Lio/appium/android/apis/graphics/ColorPickerDialog$OnColorChangedListener;I)V

    invoke-virtual {v0}, Lio/appium/android/apis/graphics/ColorPickerDialog;->show()V

    .line 181
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .line 169
    invoke-super {p0, p1}, Lio/appium/android/apis/graphics/GraphicsActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 170
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic setContentView(Landroid/view/View;)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Lio/appium/android/apis/graphics/GraphicsActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method
