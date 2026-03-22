.class Lio/appium/android/apis/app/SetWallpaperActivity$1;
.super Ljava/lang/Object;
.source "SetWallpaperActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/app/SetWallpaperActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/SetWallpaperActivity;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$wallpaperDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/SetWallpaperActivity;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/SetWallpaperActivity;

    .line 67
    iput-object p1, p0, Lio/appium/android/apis/app/SetWallpaperActivity$1;->this$0:Lio/appium/android/apis/app/SetWallpaperActivity;

    iput-object p2, p0, Lio/appium/android/apis/app/SetWallpaperActivity$1;->val$wallpaperDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lio/appium/android/apis/app/SetWallpaperActivity$1;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 69
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    invoke-static {}, Lio/appium/android/apis/app/SetWallpaperActivity;->access$000()[I

    move-result-object v2

    array-length v2, v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 70
    .local v0, "mColor":I
    iget-object v1, p0, Lio/appium/android/apis/app/SetWallpaperActivity$1;->val$wallpaperDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lio/appium/android/apis/app/SetWallpaperActivity;->access$000()[I

    move-result-object v2

    aget v2, v2, v0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 71
    iget-object v1, p0, Lio/appium/android/apis/app/SetWallpaperActivity$1;->val$imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lio/appium/android/apis/app/SetWallpaperActivity$1;->val$wallpaperDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    iget-object v1, p0, Lio/appium/android/apis/app/SetWallpaperActivity$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    .line 73
    return-void
.end method
