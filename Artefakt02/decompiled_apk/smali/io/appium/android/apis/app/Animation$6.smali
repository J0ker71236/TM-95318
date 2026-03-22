.class Lio/appium/android/apis/app/Animation$6;
.super Ljava/lang/Object;
.source "Animation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/Animation;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/Animation;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/Animation;

    .line 130
    iput-object p1, p0, Lio/appium/android/apis/app/Animation$6;->this$0:Lio/appium/android/apis/app/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .line 136
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 137
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->refreshDrawableState()V

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 140
    .local v1, "bm":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 142
    .local v2, "c":Landroid/graphics/Canvas;
    invoke-static {p1, v1, v0, v0}, Landroid/app/ActivityOptions;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroid/app/ActivityOptions;

    move-result-object v3

    .line 145
    .local v3, "opts":Landroid/app/ActivityOptions;
    iget-object v4, p0, Lio/appium/android/apis/app/Animation$6;->this$0:Lio/appium/android/apis/app/Animation;

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lio/appium/android/apis/app/AlertDialogSamples;

    invoke-direct {v5, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lio/appium/android/apis/app/Animation;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 146
    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 147
    return-void
.end method
