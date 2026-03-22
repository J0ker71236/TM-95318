.class public Lio/appium/android/apis/graphics/TouchPaint;
.super Lio/appium/android/apis/graphics/GraphicsActivity;
.source "TouchPaint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/graphics/TouchPaint$PaintView;,
        Lio/appium/android/apis/graphics/TouchPaint$PaintMode;
    }
.end annotation


# static fields
.field static final BACKGROUND_COLOR:I = -0x1000000

.field private static final CLEAR_ID:I = 0x1

.field static final COLORS:[I

.field private static final FADE_DELAY:I = 0x64

.field private static final FADE_ID:I = 0x2

.field private static final MSG_FADE:I = 0x1


# instance fields
.field mColorIndex:I

.field mFading:Z

.field private mHandler:Landroid/os/Handler;

.field mView:Lio/appium/android/apis/graphics/TouchPaint$PaintView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lio/appium/android/apis/graphics/TouchPaint;->COLORS:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x10000
        -0x100
        -0xff0100
        -0xff0001
        -0xffff01
        -0xff01
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lio/appium/android/apis/graphics/GraphicsActivity;-><init>()V

    .line 199
    new-instance v0, Lio/appium/android/apis/graphics/TouchPaint$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/graphics/TouchPaint$1;-><init>(Lio/appium/android/apis/graphics/TouchPaint;)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 95
    invoke-super {p0, p1}, Lio/appium/android/apis/graphics/GraphicsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    new-instance v0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;

    invoke-direct {v0, p0, p0}, Lio/appium/android/apis/graphics/TouchPaint$PaintView;-><init>(Lio/appium/android/apis/graphics/TouchPaint;Landroid/content/Context;)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint;->mView:Lio/appium/android/apis/graphics/TouchPaint$PaintView;

    .line 99
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint;->mView:Lio/appium/android/apis/graphics/TouchPaint$PaintView;

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/TouchPaint;->setContentView(Landroid/view/View;)V

    .line 100
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint;->mView:Lio/appium/android/apis/graphics/TouchPaint$PaintView;

    invoke-virtual {v0}, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->requestFocus()Z

    .line 105
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 106
    const-string v2, "fading"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lio/appium/android/apis/graphics/TouchPaint;->mFading:Z

    .line 107
    const-string v1, "color"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lio/appium/android/apis/graphics/TouchPaint;->mColorIndex:I

    goto :goto_0

    .line 109
    :cond_0
    iput-boolean v1, p0, Lio/appium/android/apis/graphics/TouchPaint;->mFading:Z

    .line 110
    iput v0, p0, Lio/appium/android/apis/graphics/TouchPaint;->mColorIndex:I

    .line 112
    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .line 116
    const-string v0, "Clear"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 117
    const-string v0, "Fade"

    const/4 v3, 0x2

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 118
    invoke-super {p0, p1}, Lio/appium/android/apis/graphics/GraphicsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 129
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 142
    invoke-super {p0, p1}, Lio/appium/android/apis/graphics/GraphicsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 134
    :pswitch_0
    iget-boolean v0, p0, Lio/appium/android/apis/graphics/TouchPaint;->mFading:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lio/appium/android/apis/graphics/TouchPaint;->mFading:Z

    .line 135
    iget-boolean v0, p0, Lio/appium/android/apis/graphics/TouchPaint;->mFading:Z

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/TouchPaint;->startFading()V

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/TouchPaint;->stopFading()V

    .line 140
    :goto_0
    return v1

    .line 131
    :pswitch_1
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint;->mView:Lio/appium/android/apis/graphics/TouchPaint$PaintView;

    invoke-virtual {v0}, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->clear()V

    .line 132
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .line 169
    invoke-super {p0}, Lio/appium/android/apis/graphics/GraphicsActivity;->onPause()V

    .line 173
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/TouchPaint;->stopFading()V

    .line 174
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 123
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lio/appium/android/apis/graphics/TouchPaint;->mFading:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 124
    invoke-super {p0, p1}, Lio/appium/android/apis/graphics/GraphicsActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .line 148
    invoke-super {p0}, Lio/appium/android/apis/graphics/GraphicsActivity;->onResume()V

    .line 152
    iget-boolean v0, p0, Lio/appium/android/apis/graphics/TouchPaint;->mFading:Z

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/TouchPaint;->startFading()V

    .line 155
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 159
    invoke-super {p0, p1}, Lio/appium/android/apis/graphics/GraphicsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 163
    const-string v0, "fading"

    iget-boolean v1, p0, Lio/appium/android/apis/graphics/TouchPaint;->mFading:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 164
    const-string v0, "color"

    iget v1, p0, Lio/appium/android/apis/graphics/TouchPaint;->mColorIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 165
    return-void
.end method

.method scheduleFade()V
    .locals 4

    .line 196
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 197
    return-void
.end method

.method public bridge synthetic setContentView(Landroid/view/View;)V
    .locals 0

    .line 62
    invoke-super {p0, p1}, Lio/appium/android/apis/graphics/GraphicsActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method startFading()V
    .locals 2

    .line 181
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 182
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/TouchPaint;->scheduleFade()V

    .line 183
    return-void
.end method

.method stopFading()V
    .locals 2

    .line 189
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 190
    return-void
.end method
