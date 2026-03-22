.class public Lio/appium/android/apis/content/ExternalStorage;
.super Landroid/app/Activity;
.source "ExternalStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/content/ExternalStorage$Item;
    }
.end annotation


# instance fields
.field mExternalStorageAvailable:Z

.field mExternalStoragePrivateFile:Lio/appium/android/apis/content/ExternalStorage$Item;

.field mExternalStoragePrivatePicture:Lio/appium/android/apis/content/ExternalStorage$Item;

.field mExternalStoragePublicPicture:Lio/appium/android/apis/content/ExternalStorage$Item;

.field mExternalStorageReceiver:Landroid/content/BroadcastReceiver;

.field mExternalStorageWriteable:Z

.field mLayout:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/appium/android/apis/content/ExternalStorage;->mExternalStorageAvailable:Z

    .line 142
    iput-boolean v0, p0, Lio/appium/android/apis/content/ExternalStorage;->mExternalStorageWriteable:Z

    return-void
.end method


# virtual methods
.method createExternalStoragePrivateFile()V
    .locals 5

    .line 316
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lio/appium/android/apis/content/ExternalStorage;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "DemoFile.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 324
    .local v0, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {p0}, Lio/appium/android/apis/content/ExternalStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 325
    .local v1, "is":Ljava/io/InputStream;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 326
    .local v2, "os":Ljava/io/OutputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v3, v3, [B

    .line 327
    .local v3, "data":[B
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    .line 328
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 329
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 330
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "os":Ljava/io/OutputStream;
    .end local v3    # "data":[B
    goto :goto_0

    .line 331
    :catch_0
    move-exception v1

    .line 334
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "ExternalStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method createExternalStoragePrivatePicture()V
    .locals 8

    .line 253
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lio/appium/android/apis/content/ExternalStorage;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 254
    .local v0, "path":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "DemoPicture.jpg"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 262
    .local v1, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {p0}, Lio/appium/android/apis/content/ExternalStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 263
    .local v2, "is":Ljava/io/InputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 264
    .local v3, "os":Ljava/io/OutputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v4

    new-array v4, v4, [B

    .line 265
    .local v4, "data":[B
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    .line 266
    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 267
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 268
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 272
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 273
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    new-instance v7, Lio/appium/android/apis/content/ExternalStorage$9;

    invoke-direct {v7, p0}, Lio/appium/android/apis/content/ExternalStorage$9;-><init>(Lio/appium/android/apis/content/ExternalStorage;)V

    .line 272
    invoke-static {p0, v5, v6, v7}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "os":Ljava/io/OutputStream;
    .end local v4    # "data":[B
    goto :goto_0

    .line 280
    :catch_0
    move-exception v2

    .line 283
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "ExternalStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error writing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method createExternalStoragePublicPicture()V
    .locals 8

    .line 185
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 187
    .local v0, "path":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "DemoPicture.jpg"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 191
    .local v1, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 198
    invoke-virtual {p0}, Lio/appium/android/apis/content/ExternalStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 199
    .local v2, "is":Ljava/io/InputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 200
    .local v3, "os":Ljava/io/OutputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v4

    new-array v4, v4, [B

    .line 201
    .local v4, "data":[B
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    .line 202
    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 203
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 204
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 208
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 209
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    new-instance v7, Lio/appium/android/apis/content/ExternalStorage$8;

    invoke-direct {v7, p0}, Lio/appium/android/apis/content/ExternalStorage$8;-><init>(Lio/appium/android/apis/content/ExternalStorage;)V

    .line 208
    invoke-static {p0, v5, v6, v7}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "os":Ljava/io/OutputStream;
    .end local v4    # "data":[B
    goto :goto_0

    .line 216
    :catch_0
    move-exception v2

    .line 219
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "ExternalStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error writing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method createStorageControls(Ljava/lang/CharSequence;Ljava/io/File;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Lio/appium/android/apis/content/ExternalStorage$Item;
    .locals 5
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "path"    # Ljava/io/File;
    .param p3, "createClick"    # Landroid/view/View$OnClickListener;
    .param p4, "deleteClick"    # Landroid/view/View$OnClickListener;

    .line 361
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/content/ExternalStorage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 362
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v1, Lio/appium/android/apis/content/ExternalStorage$Item;

    invoke-direct {v1}, Lio/appium/android/apis/content/ExternalStorage$Item;-><init>()V

    .line 363
    .local v1, "item":Lio/appium/android/apis/content/ExternalStorage$Item;
    const v2, 0x7f0b005b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lio/appium/android/apis/content/ExternalStorage$Item;->mRoot:Landroid/view/View;

    .line 364
    iget-object v2, v1, Lio/appium/android/apis/content/ExternalStorage$Item;->mRoot:Landroid/view/View;

    const v3, 0x7f090102

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 365
    .local v2, "tv":Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    if-eqz p2, :cond_0

    .line 367
    iget-object v3, v1, Lio/appium/android/apis/content/ExternalStorage$Item;->mRoot:Landroid/view/View;

    const v4, 0x7f09015d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/widget/TextView;

    .line 368
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    :cond_0
    iget-object v3, v1, Lio/appium/android/apis/content/ExternalStorage$Item;->mRoot:Landroid/view/View;

    const v4, 0x7f09007c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, v1, Lio/appium/android/apis/content/ExternalStorage$Item;->mCreate:Landroid/widget/Button;

    .line 371
    iget-object v3, v1, Lio/appium/android/apis/content/ExternalStorage$Item;->mCreate:Landroid/widget/Button;

    invoke-virtual {v3, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    iget-object v3, v1, Lio/appium/android/apis/content/ExternalStorage$Item;->mRoot:Landroid/view/View;

    const v4, 0x7f09008d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, v1, Lio/appium/android/apis/content/ExternalStorage$Item;->mDelete:Landroid/widget/Button;

    .line 373
    iget-object v3, v1, Lio/appium/android/apis/content/ExternalStorage$Item;->mDelete:Landroid/widget/Button;

    invoke-virtual {v3, p4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    return-object v1
.end method

.method deleteExternalStoragePrivateFile()V
    .locals 3

    .line 341
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lio/appium/android/apis/content/ExternalStorage;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "DemoFile.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 342
    .local v0, "file":Ljava/io/File;
    nop

    .line 343
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 345
    return-void
.end method

.method deleteExternalStoragePrivatePicture()V
    .locals 3

    .line 291
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lio/appium/android/apis/content/ExternalStorage;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 292
    .local v0, "path":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 293
    new-instance v1, Ljava/io/File;

    const-string v2, "DemoPicture.jpg"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 294
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 296
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method deleteExternalStoragePublicPicture()V
    .locals 3

    .line 227
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 229
    .local v0, "path":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "DemoPicture.jpg"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 230
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 231
    return-void
.end method

.method handleExternalStorageState(ZZ)V
    .locals 5
    .param p1, "available"    # Z
    .param p2, "writeable"    # Z

    .line 128
    invoke-virtual {p0}, Lio/appium/android/apis/content/ExternalStorage;->hasExternalStoragePublicPicture()Z

    move-result v0

    .line 129
    .local v0, "has":Z
    iget-object v1, p0, Lio/appium/android/apis/content/ExternalStorage;->mExternalStoragePublicPicture:Lio/appium/android/apis/content/ExternalStorage$Item;

    iget-object v1, v1, Lio/appium/android/apis/content/ExternalStorage$Item;->mCreate:Landroid/widget/Button;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 130
    iget-object v1, p0, Lio/appium/android/apis/content/ExternalStorage;->mExternalStoragePublicPicture:Lio/appium/android/apis/content/ExternalStorage$Item;

    iget-object v1, v1, Lio/appium/android/apis/content/ExternalStorage$Item;->mDelete:Landroid/widget/Button;

    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 131
    invoke-virtual {p0}, Lio/appium/android/apis/content/ExternalStorage;->hasExternalStoragePrivatePicture()Z

    move-result v0

    .line 132
    iget-object v1, p0, Lio/appium/android/apis/content/ExternalStorage;->mExternalStoragePrivatePicture:Lio/appium/android/apis/content/ExternalStorage$Item;

    iget-object v1, v1, Lio/appium/android/apis/content/ExternalStorage$Item;->mCreate:Landroid/widget/Button;

    if-eqz p2, :cond_2

    if-nez v0, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 133
    iget-object v1, p0, Lio/appium/android/apis/content/ExternalStorage;->mExternalStoragePrivatePicture:Lio/appium/android/apis/content/ExternalStorage$Item;

    iget-object v1, v1, Lio/appium/android/apis/content/ExternalStorage$Item;->mDelete:Landroid/widget/Button;

    if-eqz p2, :cond_3

    if-eqz v0, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 134
    invoke-virtual {p0}, Lio/appium/android/apis/content/ExternalStorage;->hasExternalStoragePrivateFile()Z

    move-result v0

    .line 135
    iget-object v1, p0, Lio/appium/android/apis/content/ExternalStorage;->mExternalStoragePrivateFile:Lio/appium/android/apis/content/ExternalStorage$Item;

    iget-object v1, v1, Lio/appium/android/apis/content/ExternalStorage$Item;->mCreate:Landroid/widget/Button;

    if-eqz p2, :cond_4

    if-nez v0, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 136
    iget-object v1, p0, Lio/appium/android/apis/content/ExternalStorage;->mExternalStoragePrivateFile:Lio/appium/android/apis/content/ExternalStorage$Item;

    iget-object v1, v1, Lio/appium/android/apis/content/ExternalStorage$Item;->mDelete:Landroid/widget/Button;

    if-eqz p2, :cond_5

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 137
    return-void
.end method

.method hasExternalStoragePrivateFile()Z
    .locals 3

    .line 350
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lio/appium/android/apis/content/ExternalStorage;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "DemoFile.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 351
    .local v0, "file":Ljava/io/File;
    nop

    .line 352
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method hasExternalStoragePrivatePicture()Z
    .locals 3

    .line 303
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lio/appium/android/apis/content/ExternalStorage;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 304
    .local v0, "path":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 305
    new-instance v1, Ljava/io/File;

    const-string v2, "DemoPicture.jpg"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 306
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    return v2

    .line 308
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method hasExternalStoragePublicPicture()Z
    .locals 3

    .line 238
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 240
    .local v0, "path":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "DemoPicture.jpg"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 241
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    return v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f0b005a

    invoke-virtual {p0, v0}, Lio/appium/android/apis/content/ExternalStorage;->setContentView(I)V

    .line 67
    const v0, 0x7f090106

    invoke-virtual {p0, v0}, Lio/appium/android/apis/content/ExternalStorage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lio/appium/android/apis/content/ExternalStorage;->mLayout:Landroid/view/ViewGroup;

    .line 68
    const-string v0, "Picture: getExternalStoragePublicDirectory"

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 70
    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Lio/appium/android/apis/content/ExternalStorage$1;

    invoke-direct {v2, p0}, Lio/appium/android/apis/content/ExternalStorage$1;-><init>(Lio/appium/android/apis/content/ExternalStorage;)V

    new-instance v3, Lio/appium/android/apis/content/ExternalStorage$2;

    invoke-direct {v3, p0}, Lio/appium/android/apis/content/ExternalStorage$2;-><init>(Lio/appium/android/apis/content/ExternalStorage;)V

    .line 68
    invoke-virtual {p0, v0, v1, v2, v3}, Lio/appium/android/apis/content/ExternalStorage;->createStorageControls(Ljava/lang/CharSequence;Ljava/io/File;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Lio/appium/android/apis/content/ExternalStorage$Item;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/content/ExternalStorage;->mExternalStoragePublicPicture:Lio/appium/android/apis/content/ExternalStorage$Item;

    .line 84
    iget-object v0, p0, Lio/appium/android/apis/content/ExternalStorage;->mLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lio/appium/android/apis/content/ExternalStorage;->mExternalStoragePublicPicture:Lio/appium/android/apis/content/ExternalStorage$Item;

    iget-object v1, v1, Lio/appium/android/apis/content/ExternalStorage$Item;->mRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 85
    const-string v0, "Picture getExternalFilesDir"

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 87
    invoke-virtual {p0, v1}, Lio/appium/android/apis/content/ExternalStorage;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Lio/appium/android/apis/content/ExternalStorage$3;

    invoke-direct {v2, p0}, Lio/appium/android/apis/content/ExternalStorage$3;-><init>(Lio/appium/android/apis/content/ExternalStorage;)V

    new-instance v3, Lio/appium/android/apis/content/ExternalStorage$4;

    invoke-direct {v3, p0}, Lio/appium/android/apis/content/ExternalStorage$4;-><init>(Lio/appium/android/apis/content/ExternalStorage;)V

    .line 85
    invoke-virtual {p0, v0, v1, v2, v3}, Lio/appium/android/apis/content/ExternalStorage;->createStorageControls(Ljava/lang/CharSequence;Ljava/io/File;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Lio/appium/android/apis/content/ExternalStorage$Item;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/content/ExternalStorage;->mExternalStoragePrivatePicture:Lio/appium/android/apis/content/ExternalStorage$Item;

    .line 100
    iget-object v0, p0, Lio/appium/android/apis/content/ExternalStorage;->mLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lio/appium/android/apis/content/ExternalStorage;->mExternalStoragePrivatePicture:Lio/appium/android/apis/content/ExternalStorage$Item;

    iget-object v1, v1, Lio/appium/android/apis/content/ExternalStorage$Item;->mRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 101
    const-string v0, "File getExternalFilesDir"

    .line 103
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lio/appium/android/apis/content/ExternalStorage;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Lio/appium/android/apis/content/ExternalStorage$5;

    invoke-direct {v2, p0}, Lio/appium/android/apis/content/ExternalStorage$5;-><init>(Lio/appium/android/apis/content/ExternalStorage;)V

    new-instance v3, Lio/appium/android/apis/content/ExternalStorage$6;

    invoke-direct {v3, p0}, Lio/appium/android/apis/content/ExternalStorage$6;-><init>(Lio/appium/android/apis/content/ExternalStorage;)V

    .line 101
    invoke-virtual {p0, v0, v1, v2, v3}, Lio/appium/android/apis/content/ExternalStorage;->createStorageControls(Ljava/lang/CharSequence;Ljava/io/File;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Lio/appium/android/apis/content/ExternalStorage$Item;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/content/ExternalStorage;->mExternalStoragePrivateFile:Lio/appium/android/apis/content/ExternalStorage$Item;

    .line 116
    iget-object v0, p0, Lio/appium/android/apis/content/ExternalStorage;->mLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lio/appium/android/apis/content/ExternalStorage;->mExternalStoragePrivateFile:Lio/appium/android/apis/content/ExternalStorage$Item;

    iget-object v1, v1, Lio/appium/android/apis/content/ExternalStorage$Item;->mRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 118
    invoke-virtual {p0}, Lio/appium/android/apis/content/ExternalStorage;->startWatchingExternalStorage()V

    .line 119
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 124
    invoke-virtual {p0}, Lio/appium/android/apis/content/ExternalStorage;->stopWatchingExternalStorage()V

    .line 125
    return-void
.end method

.method startWatchingExternalStorage()V
    .locals 2

    .line 159
    new-instance v0, Lio/appium/android/apis/content/ExternalStorage$7;

    invoke-direct {v0, p0}, Lio/appium/android/apis/content/ExternalStorage$7;-><init>(Lio/appium/android/apis/content/ExternalStorage;)V

    iput-object v0, p0, Lio/appium/android/apis/content/ExternalStorage;->mExternalStorageReceiver:Landroid/content/BroadcastReceiver;

    .line 166
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 167
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lio/appium/android/apis/content/ExternalStorage;->mExternalStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lio/appium/android/apis/content/ExternalStorage;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    invoke-virtual {p0}, Lio/appium/android/apis/content/ExternalStorage;->updateExternalStorageState()V

    .line 171
    return-void
.end method

.method stopWatchingExternalStorage()V
    .locals 1

    .line 174
    iget-object v0, p0, Lio/appium/android/apis/content/ExternalStorage;->mExternalStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lio/appium/android/apis/content/ExternalStorage;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 175
    return-void
.end method

.method updateExternalStorageState()V
    .locals 4

    .line 145
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 147
    iput-boolean v2, p0, Lio/appium/android/apis/content/ExternalStorage;->mExternalStorageWriteable:Z

    iput-boolean v2, p0, Lio/appium/android/apis/content/ExternalStorage;->mExternalStorageAvailable:Z

    goto :goto_0

    .line 148
    :cond_0
    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 149
    iput-boolean v2, p0, Lio/appium/android/apis/content/ExternalStorage;->mExternalStorageAvailable:Z

    .line 150
    iput-boolean v3, p0, Lio/appium/android/apis/content/ExternalStorage;->mExternalStorageWriteable:Z

    goto :goto_0

    .line 152
    :cond_1
    iput-boolean v3, p0, Lio/appium/android/apis/content/ExternalStorage;->mExternalStorageWriteable:Z

    iput-boolean v3, p0, Lio/appium/android/apis/content/ExternalStorage;->mExternalStorageAvailable:Z

    .line 154
    :goto_0
    iget-boolean v1, p0, Lio/appium/android/apis/content/ExternalStorage;->mExternalStorageAvailable:Z

    iget-boolean v2, p0, Lio/appium/android/apis/content/ExternalStorage;->mExternalStorageWriteable:Z

    invoke-virtual {p0, v1, v2}, Lio/appium/android/apis/content/ExternalStorage;->handleExternalStorageState(ZZ)V

    .line 156
    return-void
.end method
