.class public Lio/appium/android/apis/accessibility/TaskBackService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "TaskBackService.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TaskBackService/onAccessibilityEvent"

.field private static final SEPARATOR:Ljava/lang/String; = ", "

.field private static final TASK_LIST_VIEW_CLASS_NAME:Ljava/lang/String; = "io.appium.android.apis.accessibility.TaskListView"


# instance fields
.field private mTextToSpeechInitialized:Z

.field private mTts:Landroid/speech/tts/TextToSpeech;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    return-void
.end method

.method private getListItemNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4
    .param p1, "source"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 144
    move-object v0, p1

    .line 146
    .local v0, "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 147
    .local v1, "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v1, :cond_0

    .line 148
    const/4 v2, 0x0

    return-object v2

    .line 150
    :cond_0
    const-string v2, "io.appium.android.apis.accessibility.TaskListView"

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    return-object v0

    .line 154
    :cond_1
    move-object v2, v0

    .line 155
    .local v2, "oldCurrent":Landroid/view/accessibility/AccessibilityNodeInfo;
    move-object v0, v1

    .line 156
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 157
    .end local v1    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v2    # "oldCurrent":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_0
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 17
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 69
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lio/appium/android/apis/accessibility/TaskBackService;->mTextToSpeechInitialized:Z

    if-nez v1, :cond_0

    .line 70
    const-string v1, "TaskBackService/onAccessibilityEvent"

    const-string v2, "Text-To-Speech engine not ready.  Bailing out."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void

    .line 82
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 83
    .local v1, "source":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v1, :cond_1

    .line 84
    return-void

    .line 88
    :cond_1
    invoke-direct {v0, v1}, Lio/appium/android/apis/accessibility/TaskBackService;->getListItemNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 89
    .local v2, "rowNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v2, :cond_2

    .line 90
    return-void

    .line 94
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    .line 95
    .local v4, "labelNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v4, :cond_3

    .line 96
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 97
    return-void

    .line 100
    :cond_3
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    .line 101
    .local v6, "completeNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v6, :cond_4

    .line 102
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 103
    return-void

    .line 108
    :cond_4
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_9

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v7

    if-nez v7, :cond_5

    move-object/from16 v13, p1

    goto :goto_2

    .line 113
    :cond_5
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    .line 114
    .local v7, "taskLabel":Ljava/lang/CharSequence;
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v9

    .line 116
    .local v9, "isComplete":Z
    const/4 v10, 0x0

    .line 117
    .local v10, "completeStr":Ljava/lang/String;
    if-eqz v9, :cond_6

    .line 118
    const v11, 0x7f0e039d

    invoke-virtual {v0, v11}, Lio/appium/android/apis/accessibility/TaskBackService;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 120
    :cond_6
    const v11, 0x7f0e03a0

    invoke-virtual {v0, v11}, Lio/appium/android/apis/accessibility/TaskBackService;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 123
    :goto_0
    const v11, 0x7f0e039e

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v7, v8, v3

    aput-object v10, v8, v5

    invoke-virtual {v0, v11, v8}, Lio/appium/android/apis/accessibility/TaskBackService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 124
    .local v5, "taskStr":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .local v8, "utterance":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getRecordCount()I

    move-result v11

    .line 129
    .local v11, "records":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v11, :cond_8

    .line 130
    move-object/from16 v13, p1

    invoke-virtual {v13, v12}, Landroid/view/accessibility/AccessibilityEvent;->getRecord(I)Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v14

    .line 131
    .local v14, "record":Landroid/view/accessibility/AccessibilityRecord;
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityRecord;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v15

    .line 132
    .local v15, "contentDescription":Ljava/lang/CharSequence;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_7

    .line 133
    const-string v3, ", "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 129
    .end local v14    # "record":Landroid/view/accessibility/AccessibilityRecord;
    .end local v15    # "contentDescription":Ljava/lang/CharSequence;
    :cond_7
    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x0

    goto :goto_1

    :cond_8
    move-object/from16 v13, p1

    .line 139
    .end local v12    # "i":I
    iget-object v3, v0, Lio/appium/android/apis/accessibility/TaskBackService;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v3, v12, v15, v14}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 140
    const-string v3, "TaskBackService/onAccessibilityEvent"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void

    .line 108
    .end local v5    # "taskStr":Ljava/lang/String;
    .end local v7    # "taskLabel":Ljava/lang/CharSequence;
    .end local v8    # "utterance":Ljava/lang/StringBuilder;
    .end local v9    # "isComplete":Z
    .end local v10    # "completeStr":Ljava/lang/String;
    .end local v11    # "records":I
    :cond_9
    move-object/from16 v13, p1

    .line 109
    :goto_2
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 110
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 186
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onDestroy()V

    .line 187
    iget-boolean v0, p0, Lio/appium/android/apis/accessibility/TaskBackService;->mTextToSpeechInitialized:Z

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lio/appium/android/apis/accessibility/TaskBackService;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 190
    :cond_0
    return-void
.end method

.method public onInit(I)V
    .locals 2
    .param p1, "status"    # I

    .line 175
    if-nez p1, :cond_0

    .line 176
    iget-object v0, p0, Lio/appium/android/apis/accessibility/TaskBackService;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/appium/android/apis/accessibility/TaskBackService;->mTextToSpeechInitialized:Z

    .line 179
    :cond_0
    return-void
.end method

.method public onInterrupt()V
    .locals 0

    .line 166
    return-void
.end method

.method public onServiceConnected()V
    .locals 2

    .line 60
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lio/appium/android/apis/accessibility/TaskBackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lio/appium/android/apis/accessibility/TaskBackService;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 61
    return-void
.end method
