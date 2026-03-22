.class Lio/appium/android/apis/graphics/CompressedTextureActivity$CompressedTextureLoader;
.super Ljava/lang/Object;
.source "CompressedTextureActivity.java"

# interfaces
.implements Lio/appium/android/apis/graphics/StaticTriangleRenderer$TextureLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/CompressedTextureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompressedTextureLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/graphics/CompressedTextureActivity;


# direct methods
.method private constructor <init>(Lio/appium/android/apis/graphics/CompressedTextureActivity;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lio/appium/android/apis/graphics/CompressedTextureActivity$CompressedTextureLoader;->this$0:Lio/appium/android/apis/graphics/CompressedTextureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/appium/android/apis/graphics/CompressedTextureActivity;Lio/appium/android/apis/graphics/CompressedTextureActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lio/appium/android/apis/graphics/CompressedTextureActivity;
    .param p2, "x1"    # Lio/appium/android/apis/graphics/CompressedTextureActivity$1;

    .line 89
    invoke-direct {p0, p1}, Lio/appium/android/apis/graphics/CompressedTextureActivity$CompressedTextureLoader;-><init>(Lio/appium/android/apis/graphics/CompressedTextureActivity;)V

    return-void
.end method


# virtual methods
.method public load(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 91
    const-string v0, "CompressedTextureActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ETC1 texture support: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/ETC1Util;->isETC1Supported()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lio/appium/android/apis/graphics/CompressedTextureActivity$CompressedTextureLoader;->this$0:Lio/appium/android/apis/graphics/CompressedTextureActivity;

    invoke-virtual {v0}, Lio/appium/android/apis/graphics/CompressedTextureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 94
    .local v0, "input":Ljava/io/InputStream;
    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x1907

    const v6, 0x8363

    move-object v7, v0

    :try_start_0
    invoke-static/range {v2 .. v7}, Landroid/opengl/ETC1Util;->loadTexture(IIIIILjava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 103
    :goto_0
    goto :goto_1

    .line 101
    :catch_0
    move-exception v1

    .line 104
    goto :goto_1

    .line 99
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 96
    :catch_1
    move-exception v1

    .line 97
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v2, "CompressedTextureActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not load texture: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    .end local v1    # "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 105
    :goto_1
    return-void

    .line 100
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 103
    goto :goto_3

    .line 101
    :catch_2
    move-exception v2

    .line 103
    :goto_3
    throw v1

    return-void
.end method
