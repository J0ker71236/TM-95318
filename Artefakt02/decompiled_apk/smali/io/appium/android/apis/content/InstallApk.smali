.class public Lio/appium/android/apis/content/InstallApk;
.super Landroid/app/Activity;
.source "InstallApk.java"


# static fields
.field static final REQUEST_INSTALL:I = 0x1

.field static final REQUEST_UNINSTALL:I = 0x2


# instance fields
.field private mMySourceListener:Landroid/view/View$OnClickListener;

.field private mReplaceListener:Landroid/view/View$OnClickListener;

.field private mUninstallListener:Landroid/view/View$OnClickListener;

.field private mUninstallResultListener:Landroid/view/View$OnClickListener;

.field private mUnknownSourceListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 95
    new-instance v0, Lio/appium/android/apis/content/InstallApk$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/content/InstallApk$1;-><init>(Lio/appium/android/apis/content/InstallApk;)V

    iput-object v0, p0, Lio/appium/android/apis/content/InstallApk;->mUnknownSourceListener:Landroid/view/View$OnClickListener;

    .line 103
    new-instance v0, Lio/appium/android/apis/content/InstallApk$2;

    invoke-direct {v0, p0}, Lio/appium/android/apis/content/InstallApk$2;-><init>(Lio/appium/android/apis/content/InstallApk;)V

    iput-object v0, p0, Lio/appium/android/apis/content/InstallApk;->mMySourceListener:Landroid/view/View$OnClickListener;

    .line 115
    new-instance v0, Lio/appium/android/apis/content/InstallApk$3;

    invoke-direct {v0, p0}, Lio/appium/android/apis/content/InstallApk$3;-><init>(Lio/appium/android/apis/content/InstallApk;)V

    iput-object v0, p0, Lio/appium/android/apis/content/InstallApk;->mReplaceListener:Landroid/view/View$OnClickListener;

    .line 128
    new-instance v0, Lio/appium/android/apis/content/InstallApk$4;

    invoke-direct {v0, p0}, Lio/appium/android/apis/content/InstallApk$4;-><init>(Lio/appium/android/apis/content/InstallApk;)V

    iput-object v0, p0, Lio/appium/android/apis/content/InstallApk;->mUninstallListener:Landroid/view/View$OnClickListener;

    .line 137
    new-instance v0, Lio/appium/android/apis/content/InstallApk$5;

    invoke-direct {v0, p0}, Lio/appium/android/apis/content/InstallApk$5;-><init>(Lio/appium/android/apis/content/InstallApk;)V

    iput-object v0, p0, Lio/appium/android/apis/content/InstallApk;->mUninstallResultListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/content/InstallApk;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/content/InstallApk;
    .param p1, "x1"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1}, Lio/appium/android/apis/content/InstallApk;->prepareApk(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private prepareApk(Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p1, "assetName"    # Ljava/lang/String;

    .line 150
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 151
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 152
    .local v1, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 154
    .local v2, "fout":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p0}, Lio/appium/android/apis/content/InstallApk;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    move-object v1, v3

    .line 155
    const-string v3, "tmp.apk"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lio/appium/android/apis/content/InstallApk;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    .line 157
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "n":I
    if-ltz v3, :cond_0

    .line 158
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 164
    .end local v4    # "n":I
    :cond_0
    if-eqz v1, :cond_1

    .line 165
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 167
    :catch_0
    move-exception v3

    goto :goto_2

    .line 168
    :cond_1
    :goto_1
    nop

    .line 170
    :goto_2
    if-eqz v2, :cond_2

    .line 171
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 173
    :catch_1
    move-exception v3

    .line 175
    goto :goto_6

    .line 174
    :cond_2
    :goto_3
    goto :goto_6

    .line 163
    :catchall_0
    move-exception v3

    goto :goto_7

    .line 160
    :catch_2
    move-exception v3

    .line 161
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    const-string v4, "InstallApk"

    const-string v5, "Failed transferring"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 164
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_3

    .line 165
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    .line 167
    :catch_3
    move-exception v3

    goto :goto_5

    .line 168
    :cond_3
    :goto_4
    nop

    .line 170
    :goto_5
    if-eqz v2, :cond_2

    .line 171
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 177
    :goto_6
    const-string v3, "tmp.apk"

    invoke-virtual {p0, v3}, Lio/appium/android/apis/content/InstallApk;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    return-object v3

    .line 164
    :goto_7
    if-eqz v1, :cond_4

    .line 165
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_8

    .line 167
    :catch_4
    move-exception v4

    goto :goto_9

    .line 168
    :cond_4
    :goto_8
    nop

    .line 170
    :goto_9
    if-eqz v2, :cond_5

    .line 171
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_a

    .line 173
    :catch_5
    move-exception v4

    goto :goto_b

    .line 174
    :cond_5
    :goto_a
    nop

    :goto_b
    throw v3

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .line 76
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 77
    if-ne p2, v0, :cond_0

    .line 78
    const-string v0, "Install succeeded!"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 79
    :cond_0
    if-nez p2, :cond_1

    .line 80
    const-string v0, "Install canceled!"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 82
    :cond_1
    const-string v0, "Install Failed!"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 84
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    .line 85
    if-ne p2, v0, :cond_3

    .line 86
    const-string v0, "Uninstall succeeded!"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 87
    :cond_3
    if-nez p2, :cond_4

    .line 88
    const-string v0, "Uninstall canceled!"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 90
    :cond_4
    const-string v0, "Uninstall Failed!"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 93
    :cond_5
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f0b0084

    invoke-virtual {p0, v0}, Lio/appium/android/apis/content/InstallApk;->setContentView(I)V

    .line 62
    const v0, 0x7f09023b

    invoke-virtual {p0, v0}, Lio/appium/android/apis/content/InstallApk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 63
    .local v0, "button":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/content/InstallApk;->mUnknownSourceListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v1, 0x7f090139

    invoke-virtual {p0, v1}, Lio/appium/android/apis/content/InstallApk;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 65
    iget-object v1, p0, Lio/appium/android/apis/content/InstallApk;->mMySourceListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v1, 0x7f090183

    invoke-virtual {p0, v1}, Lio/appium/android/apis/content/InstallApk;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 67
    iget-object v1, p0, Lio/appium/android/apis/content/InstallApk;->mReplaceListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v1, 0x7f090239

    invoke-virtual {p0, v1}, Lio/appium/android/apis/content/InstallApk;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 69
    iget-object v1, p0, Lio/appium/android/apis/content/InstallApk;->mUninstallListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v1, 0x7f09023a

    invoke-virtual {p0, v1}, Lio/appium/android/apis/content/InstallApk;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 71
    iget-object v1, p0, Lio/appium/android/apis/content/InstallApk;->mUninstallResultListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method
