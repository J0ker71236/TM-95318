.class Lio/appium/android/apis/app/SetWallpaperActivity$2;
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

.field final synthetic val$wallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/SetWallpaperActivity;Landroid/app/WallpaperManager;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/SetWallpaperActivity;

    .line 77
    iput-object p1, p0, Lio/appium/android/apis/app/SetWallpaperActivity$2;->this$0:Lio/appium/android/apis/app/SetWallpaperActivity;

    iput-object p2, p0, Lio/appium/android/apis/app/SetWallpaperActivity$2;->val$wallpaperManager:Landroid/app/WallpaperManager;

    iput-object p3, p0, Lio/appium/android/apis/app/SetWallpaperActivity$2;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 80
    :try_start_0
    iget-object v0, p0, Lio/appium/android/apis/app/SetWallpaperActivity$2;->val$wallpaperManager:Landroid/app/WallpaperManager;

    iget-object v1, p0, Lio/appium/android/apis/app/SetWallpaperActivity$2;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 81
    iget-object v0, p0, Lio/appium/android/apis/app/SetWallpaperActivity$2;->this$0:Lio/appium/android/apis/app/SetWallpaperActivity;

    invoke-virtual {v0}, Lio/appium/android/apis/app/SetWallpaperActivity;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 85
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
