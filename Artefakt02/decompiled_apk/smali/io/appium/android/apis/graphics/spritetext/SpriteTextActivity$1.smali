.class Lio/appium/android/apis/graphics/spritetext/SpriteTextActivity$1;
.super Ljava/lang/Object;
.source "SpriteTextActivity.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$GLWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/graphics/spritetext/SpriteTextActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/graphics/spritetext/SpriteTextActivity;


# direct methods
.method constructor <init>(Lio/appium/android/apis/graphics/spritetext/SpriteTextActivity;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/graphics/spritetext/SpriteTextActivity;

    .line 31
    iput-object p1, p0, Lio/appium/android/apis/graphics/spritetext/SpriteTextActivity$1;->this$0:Lio/appium/android/apis/graphics/spritetext/SpriteTextActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public wrap(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL;

    .line 33
    new-instance v0, Lio/appium/android/apis/graphics/spritetext/MatrixTrackingGL;

    invoke-direct {v0, p1}, Lio/appium/android/apis/graphics/spritetext/MatrixTrackingGL;-><init>(Ljavax/microedition/khronos/opengles/GL;)V

    return-object v0
.end method
