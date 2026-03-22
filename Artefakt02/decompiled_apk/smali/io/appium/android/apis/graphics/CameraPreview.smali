.class public Lio/appium/android/apis/graphics/CameraPreview;
.super Landroid/app/Activity;
.source "CameraPreview.java"


# instance fields
.field cameraCurrentlyLocked:I

.field defaultCameraId:I

.field mCamera:Landroid/hardware/Camera;

.field private mPreview:Lio/appium/android/apis/graphics/Preview;

.field numberOfCameras:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/CameraPreview;->requestWindowFeature(I)Z

    .line 61
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/CameraPreview;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 65
    new-instance v0, Lio/appium/android/apis/graphics/Preview;

    invoke-direct {v0, p0}, Lio/appium/android/apis/graphics/Preview;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/CameraPreview;->mPreview:Lio/appium/android/apis/graphics/Preview;

    .line 66
    iget-object v0, p0, Lio/appium/android/apis/graphics/CameraPreview;->mPreview:Lio/appium/android/apis/graphics/Preview;

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/CameraPreview;->setContentView(Landroid/view/View;)V

    .line 69
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    iput v0, p0, Lio/appium/android/apis/graphics/CameraPreview;->numberOfCameras:I

    .line 72
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 73
    .local v0, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lio/appium/android/apis/graphics/CameraPreview;->numberOfCameras:I

    if-ge v1, v2, :cond_1

    .line 74
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 75
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v2, :cond_0

    .line 76
    iput v1, p0, Lio/appium/android/apis/graphics/CameraPreview;->defaultCameraId:I

    .line 73
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 108
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/CameraPreview;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 109
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0c0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 110
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 116
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090203

    if-eq v0, v1, :cond_0

    .line 149
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 119
    :cond_0
    iget v0, p0, Lio/appium/android/apis/graphics/CameraPreview;->numberOfCameras:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 120
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 121
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0e00f7

    invoke-virtual {p0, v3}, Lio/appium/android/apis/graphics/CameraPreview;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Close"

    .line 122
    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 123
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 124
    .local v1, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 125
    return v2

    .line 130
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "alert":Landroid/app/AlertDialog;
    :cond_1
    iget-object v0, p0, Lio/appium/android/apis/graphics/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    .line 131
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 132
    iget-object v0, p0, Lio/appium/android/apis/graphics/CameraPreview;->mPreview:Lio/appium/android/apis/graphics/Preview;

    invoke-virtual {v0, v1}, Lio/appium/android/apis/graphics/Preview;->setCamera(Landroid/hardware/Camera;)V

    .line 133
    iget-object v0, p0, Lio/appium/android/apis/graphics/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 134
    iput-object v1, p0, Lio/appium/android/apis/graphics/CameraPreview;->mCamera:Landroid/hardware/Camera;

    .line 139
    :cond_2
    iget v0, p0, Lio/appium/android/apis/graphics/CameraPreview;->cameraCurrentlyLocked:I

    add-int/2addr v0, v2

    iget v1, p0, Lio/appium/android/apis/graphics/CameraPreview;->numberOfCameras:I

    rem-int/2addr v0, v1

    .line 140
    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/graphics/CameraPreview;->mCamera:Landroid/hardware/Camera;

    .line 141
    iget v0, p0, Lio/appium/android/apis/graphics/CameraPreview;->cameraCurrentlyLocked:I

    add-int/2addr v0, v2

    iget v1, p0, Lio/appium/android/apis/graphics/CameraPreview;->numberOfCameras:I

    rem-int/2addr v0, v1

    iput v0, p0, Lio/appium/android/apis/graphics/CameraPreview;->cameraCurrentlyLocked:I

    .line 143
    iget-object v0, p0, Lio/appium/android/apis/graphics/CameraPreview;->mPreview:Lio/appium/android/apis/graphics/Preview;

    iget-object v1, p0, Lio/appium/android/apis/graphics/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lio/appium/android/apis/graphics/Preview;->switchCamera(Landroid/hardware/Camera;)V

    .line 146
    iget-object v0, p0, Lio/appium/android/apis/graphics/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 147
    return v2
.end method

.method protected onPause()V
    .locals 2

    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 97
    iget-object v0, p0, Lio/appium/android/apis/graphics/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lio/appium/android/apis/graphics/CameraPreview;->mPreview:Lio/appium/android/apis/graphics/Preview;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/appium/android/apis/graphics/Preview;->setCamera(Landroid/hardware/Camera;)V

    .line 99
    iget-object v0, p0, Lio/appium/android/apis/graphics/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 100
    iput-object v1, p0, Lio/appium/android/apis/graphics/CameraPreview;->mCamera:Landroid/hardware/Camera;

    .line 102
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 86
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/graphics/CameraPreview;->mCamera:Landroid/hardware/Camera;

    .line 87
    iget v0, p0, Lio/appium/android/apis/graphics/CameraPreview;->defaultCameraId:I

    iput v0, p0, Lio/appium/android/apis/graphics/CameraPreview;->cameraCurrentlyLocked:I

    .line 88
    iget-object v0, p0, Lio/appium/android/apis/graphics/CameraPreview;->mPreview:Lio/appium/android/apis/graphics/Preview;

    iget-object v1, p0, Lio/appium/android/apis/graphics/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lio/appium/android/apis/graphics/Preview;->setCamera(Landroid/hardware/Camera;)V

    .line 89
    return-void
.end method
