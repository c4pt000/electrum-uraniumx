.class public abstract Lme/dm7/barcodescanner/core/BarcodeScannerView;
.super Landroid/widget/FrameLayout;
.source "BarcodeScannerView.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field private mAspectTolerance:F

.field private mAutofocusState:Z

.field private mBorderAlpha:F

.field private mBorderColor:I

.field private mBorderLength:I

.field private mBorderWidth:I

.field private mCameraHandlerThread:Lme/dm7/barcodescanner/core/CameraHandlerThread;

.field private mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

.field private mCornerRadius:I

.field private mFlashState:Ljava/lang/Boolean;

.field private mFramingRectInPreview:Landroid/graphics/Rect;

.field private mIsLaserEnabled:Z

.field private mLaserColor:I

.field private mMaskColor:I

.field private mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

.field private mRoundedCorner:Z

.field private mShouldScaleToFill:Z

.field private mSquaredFinder:Z

.field private mViewFinderOffset:I

.field private mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mAutofocusState:Z

    .line 26
    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mShouldScaleToFill:Z

    .line 28
    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mIsLaserEnabled:Z

    .line 29
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lme/dm7/barcodescanner/core/R$color;->viewfinder_laser:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mLaserColor:I

    .line 30
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lme/dm7/barcodescanner/core/R$color;->viewfinder_border:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderColor:I

    .line 31
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lme/dm7/barcodescanner/core/R$color;->viewfinder_mask:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mMaskColor:I

    .line 32
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lme/dm7/barcodescanner/core/R$integer;->viewfinder_border_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderWidth:I

    .line 33
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lme/dm7/barcodescanner/core/R$integer;->viewfinder_border_length:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderLength:I

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mRoundedCorner:Z

    .line 35
    iput p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCornerRadius:I

    .line 36
    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mSquaredFinder:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 37
    iput v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderAlpha:F

    .line 38
    iput p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderOffset:I

    const p1, 0x3dcccccd    # 0.1f

    .line 39
    iput p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mAspectTolerance:F

    .line 43
    invoke-direct {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mAutofocusState:Z

    .line 26
    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mShouldScaleToFill:Z

    .line 28
    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mIsLaserEnabled:Z

    .line 29
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lme/dm7/barcodescanner/core/R$color;->viewfinder_laser:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mLaserColor:I

    .line 30
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lme/dm7/barcodescanner/core/R$color;->viewfinder_border:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderColor:I

    .line 31
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lme/dm7/barcodescanner/core/R$color;->viewfinder_mask:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mMaskColor:I

    .line 32
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lme/dm7/barcodescanner/core/R$integer;->viewfinder_border_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderWidth:I

    .line 33
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lme/dm7/barcodescanner/core/R$integer;->viewfinder_border_length:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderLength:I

    const/4 v1, 0x0

    .line 34
    iput-boolean v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mRoundedCorner:Z

    .line 35
    iput v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCornerRadius:I

    .line 36
    iput-boolean v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mSquaredFinder:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 37
    iput v2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderAlpha:F

    .line 38
    iput v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderOffset:I

    const v2, 0x3dcccccd    # 0.1f

    .line 39
    iput v2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mAspectTolerance:F

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v2, Lme/dm7/barcodescanner/core/R$styleable;->BarcodeScannerView:[I

    invoke-virtual {p1, p2, v2, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 55
    :try_start_0
    sget p2, Lme/dm7/barcodescanner/core/R$styleable;->BarcodeScannerView_shouldScaleToFill:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->setShouldScaleToFill(Z)V

    .line 56
    sget p2, Lme/dm7/barcodescanner/core/R$styleable;->BarcodeScannerView_laserEnabled:I

    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mIsLaserEnabled:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mIsLaserEnabled:Z

    .line 57
    sget p2, Lme/dm7/barcodescanner/core/R$styleable;->BarcodeScannerView_laserColor:I

    iget v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mLaserColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mLaserColor:I

    .line 58
    sget p2, Lme/dm7/barcodescanner/core/R$styleable;->BarcodeScannerView_borderColor:I

    iget v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderColor:I

    .line 59
    sget p2, Lme/dm7/barcodescanner/core/R$styleable;->BarcodeScannerView_maskColor:I

    iget v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mMaskColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mMaskColor:I

    .line 60
    sget p2, Lme/dm7/barcodescanner/core/R$styleable;->BarcodeScannerView_borderWidth:I

    iget v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderWidth:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderWidth:I

    .line 61
    sget p2, Lme/dm7/barcodescanner/core/R$styleable;->BarcodeScannerView_borderLength:I

    iget v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderLength:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderLength:I

    .line 63
    sget p2, Lme/dm7/barcodescanner/core/R$styleable;->BarcodeScannerView_roundedCorner:I

    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mRoundedCorner:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mRoundedCorner:Z

    .line 64
    sget p2, Lme/dm7/barcodescanner/core/R$styleable;->BarcodeScannerView_cornerRadius:I

    iget v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCornerRadius:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCornerRadius:I

    .line 65
    sget p2, Lme/dm7/barcodescanner/core/R$styleable;->BarcodeScannerView_squaredFinder:I

    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mSquaredFinder:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mSquaredFinder:Z

    .line 66
    sget p2, Lme/dm7/barcodescanner/core/R$styleable;->BarcodeScannerView_borderAlpha:I

    iget v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderAlpha:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderAlpha:F

    .line 67
    sget p2, Lme/dm7/barcodescanner/core/R$styleable;->BarcodeScannerView_finderOffset:I

    iget v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderOffset:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderOffset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    invoke-direct {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->init()V

    return-void

    :catchall_0
    move-exception p2

    .line 69
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method private init()V
    .locals 1

    .line 76
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->createViewFinderView(Landroid/content/Context;)Lme/dm7/barcodescanner/core/IViewFinder;

    move-result-object v0

    iput-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    return-void
.end method


# virtual methods
.method protected createViewFinderView(Landroid/content/Context;)Lme/dm7/barcodescanner/core/IViewFinder;
    .locals 1

    .line 111
    new-instance v0, Lme/dm7/barcodescanner/core/ViewFinderView;

    invoke-direct {v0, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;-><init>(Landroid/content/Context;)V

    .line 112
    iget p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderColor:I

    invoke-virtual {v0, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->setBorderColor(I)V

    .line 113
    iget p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mLaserColor:I

    invoke-virtual {v0, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->setLaserColor(I)V

    .line 114
    iget-boolean p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mIsLaserEnabled:Z

    invoke-virtual {v0, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->setLaserEnabled(Z)V

    .line 115
    iget p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderWidth:I

    invoke-virtual {v0, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->setBorderStrokeWidth(I)V

    .line 116
    iget p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderLength:I

    invoke-virtual {v0, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->setBorderLineLength(I)V

    .line 117
    iget p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mMaskColor:I

    invoke-virtual {v0, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->setMaskColor(I)V

    .line 119
    iget-boolean p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mRoundedCorner:Z

    invoke-virtual {v0, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->setBorderCornerRounded(Z)V

    .line 120
    iget p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCornerRadius:I

    invoke-virtual {v0, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->setBorderCornerRadius(I)V

    .line 121
    iget-boolean p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mSquaredFinder:Z

    invoke-virtual {v0, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->setSquareViewFinder(Z)V

    .line 122
    iget p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderOffset:I

    invoke-virtual {v0, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->setViewFinderOffset(I)V

    return-object v0
.end method

.method public getFlash()Z
    .locals 3

    .line 272
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lme/dm7/barcodescanner/core/CameraWrapper;->mCamera:Landroid/hardware/Camera;

    invoke-static {v0}, Lme/dm7/barcodescanner/core/CameraUtils;->isFlashSupported(Landroid/hardware/Camera;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    iget-object v0, v0, Lme/dm7/barcodescanner/core/CameraWrapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "torch"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public declared-synchronized getFramingRectInPreview(II)Landroid/graphics/Rect;
    .locals 4

    monitor-enter p0

    .line 226
    :try_start_0
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mFramingRectInPreview:Landroid/graphics/Rect;

    if-nez v0, :cond_4

    .line 227
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    invoke-interface {v0}, Lme/dm7/barcodescanner/core/IViewFinder;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    invoke-interface {v1}, Lme/dm7/barcodescanner/core/IViewFinder;->getWidth()I

    move-result v1

    .line 229
    iget-object v2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    invoke-interface {v2}, Lme/dm7/barcodescanner/core/IViewFinder;->getHeight()I

    move-result v2

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-nez v2, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    if-ge p1, v1, :cond_1

    .line 237
    iget v0, v3, Landroid/graphics/Rect;->left:I

    mul-int v0, v0, p1

    div-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Rect;->left:I

    .line 238
    iget v0, v3, Landroid/graphics/Rect;->right:I

    mul-int v0, v0, p1

    div-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Rect;->right:I

    :cond_1
    if-ge p2, v2, :cond_2

    .line 242
    iget p1, v3, Landroid/graphics/Rect;->top:I

    mul-int p1, p1, p2

    div-int/2addr p1, v2

    iput p1, v3, Landroid/graphics/Rect;->top:I

    .line 243
    iget p1, v3, Landroid/graphics/Rect;->bottom:I

    mul-int p1, p1, p2

    div-int/2addr p1, v2

    iput p1, v3, Landroid/graphics/Rect;->bottom:I

    .line 246
    :cond_2
    iput-object v3, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mFramingRectInPreview:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 231
    monitor-exit p0

    return-object p1

    .line 248
    :cond_4
    :goto_1
    :try_start_1
    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mFramingRectInPreview:Landroid/graphics/Rect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getRotatedData([BLandroid/hardware/Camera;)[B
    .locals 11

    .line 311
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p2

    .line 312
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p2

    .line 313
    iget v0, p2, Landroid/hardware/Camera$Size;->width:I

    .line 314
    iget p2, p2, Landroid/hardware/Camera$Size;->height:I

    .line 316
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getRotationCount()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    :cond_0
    const/4 v3, 0x0

    move v4, p2

    move-object p2, p1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v1, :cond_3

    .line 320
    array-length v5, p2

    new-array v5, v5, [B

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_2

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v0, :cond_1

    mul-int v8, v7, v4

    add-int/2addr v8, v4

    sub-int/2addr v8, v6

    sub-int/2addr v8, v2

    mul-int v9, v6, v0

    add-int/2addr v9, v7

    .line 323
    aget-byte v9, p2, v9

    aput-byte v9, v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    move-object p2, v5

    move v10, v4

    move v4, v0

    move v0, v10

    goto :goto_0

    :cond_3
    move-object p1, p2

    :cond_4
    return-object p1
.end method

.method public getRotationCount()I
    .locals 1

    .line 336
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-virtual {v0}, Lme/dm7/barcodescanner/core/CameraPreview;->getDisplayOrientation()I

    move-result v0

    .line 337
    div-int/lit8 v0, v0, 0x5a

    return v0
.end method

.method protected resumeCameraPreview()V
    .locals 1

    .line 220
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0}, Lme/dm7/barcodescanner/core/CameraPreview;->showCameraPreview()V

    :cond_0
    return-void
.end method

.method public setAspectTolerance(F)V
    .locals 0

    .line 307
    iput p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mAspectTolerance:F

    return-void
.end method

.method public setAutoFocus(Z)V
    .locals 1

    .line 296
    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mAutofocusState:Z

    .line 297
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0, p1}, Lme/dm7/barcodescanner/core/CameraPreview;->setAutoFocus(Z)V

    :cond_0
    return-void
.end method

.method public setBorderAlpha(F)V
    .locals 1

    .line 172
    iput p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderAlpha:F

    .line 173
    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    iget v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderAlpha:F

    invoke-interface {p1, v0}, Lme/dm7/barcodescanner/core/IViewFinder;->setBorderAlpha(F)V

    .line 174
    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    invoke-interface {p1}, Lme/dm7/barcodescanner/core/IViewFinder;->setupViewFinder()V

    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    .line 137
    iput p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderColor:I

    .line 138
    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    iget v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderColor:I

    invoke-interface {p1, v0}, Lme/dm7/barcodescanner/core/IViewFinder;->setBorderColor(I)V

    .line 139
    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    invoke-interface {p1}, Lme/dm7/barcodescanner/core/IViewFinder;->setupViewFinder()V

    return-void
.end method

.method public setBorderCornerRadius(I)V
    .locals 1

    .line 162
    iput p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCornerRadius:I

    .line 163
    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    iget v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCornerRadius:I

    invoke-interface {p1, v0}, Lme/dm7/barcodescanner/core/IViewFinder;->setBorderCornerRadius(I)V

    .line 164
    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    invoke-interface {p1}, Lme/dm7/barcodescanner/core/IViewFinder;->setupViewFinder()V

    return-void
.end method

.method public setBorderLineLength(I)V
    .locals 1

    .line 147
    iput p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderLength:I

    .line 148
    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    iget v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderLength:I

    invoke-interface {p1, v0}, Lme/dm7/barcodescanner/core/IViewFinder;->setBorderLineLength(I)V

    .line 149
    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    invoke-interface {p1}, Lme/dm7/barcodescanner/core/IViewFinder;->setupViewFinder()V

    return-void
.end method

.method public setBorderStrokeWidth(I)V
    .locals 1

    .line 142
    iput p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderWidth:I

    .line 143
    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    iget v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderWidth:I

    invoke-interface {p1, v0}, Lme/dm7/barcodescanner/core/IViewFinder;->setBorderStrokeWidth(I)V

    .line 144
    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    invoke-interface {p1}, Lme/dm7/barcodescanner/core/IViewFinder;->setupViewFinder()V

    return-void
.end method

.method public setFlash(Z)V
    .locals 2

    .line 252
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mFlashState:Ljava/lang/Boolean;

    .line 253
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lme/dm7/barcodescanner/core/CameraWrapper;->mCamera:Landroid/hardware/Camera;

    invoke-static {v0}, Lme/dm7/barcodescanner/core/CameraUtils;->isFlashSupported(Landroid/hardware/Camera;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 255
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    iget-object v0, v0, Lme/dm7/barcodescanner/core/CameraWrapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 257
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object p1

    const-string v1, "torch"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 260
    :cond_0
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_0

    .line 262
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object p1

    const-string v1, "off"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 265
    :cond_2
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 267
    :goto_0
    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    iget-object p1, p1, Lme/dm7/barcodescanner/core/CameraWrapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_3
    return-void
.end method

.method public setIsBorderCornerRounded(Z)V
    .locals 1

    .line 157
    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mRoundedCorner:Z

    .line 158
    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mRoundedCorner:Z

    invoke-interface {p1, v0}, Lme/dm7/barcodescanner/core/IViewFinder;->setBorderCornerRounded(Z)V

    .line 159
    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    invoke-interface {p1}, Lme/dm7/barcodescanner/core/IViewFinder;->setupViewFinder()V

    return-void
.end method

.method public setLaserColor(I)V
    .locals 1

    .line 127
    iput p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mLaserColor:I

    .line 128
    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    iget v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mLaserColor:I

    invoke-interface {p1, v0}, Lme/dm7/barcodescanner/core/IViewFinder;->setLaserColor(I)V

    .line 129
    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    invoke-interface {p1}, Lme/dm7/barcodescanner/core/IViewFinder;->setupViewFinder()V

    return-void
.end method

.method public setLaserEnabled(Z)V
    .locals 1

    .line 152
    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mIsLaserEnabled:Z

    .line 153
    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mIsLaserEnabled:Z

    invoke-interface {p1, v0}, Lme/dm7/barcodescanner/core/IViewFinder;->setLaserEnabled(Z)V

    .line 154
    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    invoke-interface {p1}, Lme/dm7/barcodescanner/core/IViewFinder;->setupViewFinder()V

    return-void
.end method

.method public setMaskColor(I)V
    .locals 1

    .line 132
    iput p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mMaskColor:I

    .line 133
    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    iget v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mMaskColor:I

    invoke-interface {p1, v0}, Lme/dm7/barcodescanner/core/IViewFinder;->setMaskColor(I)V

    .line 134
    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    invoke-interface {p1}, Lme/dm7/barcodescanner/core/IViewFinder;->setupViewFinder()V

    return-void
.end method

.method public setShouldScaleToFill(Z)V
    .locals 0

    .line 303
    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mShouldScaleToFill:Z

    return-void
.end method

.method public setSquareViewFinder(Z)V
    .locals 1

    .line 167
    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mSquaredFinder:Z

    .line 168
    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mSquaredFinder:Z

    invoke-interface {p1, v0}, Lme/dm7/barcodescanner/core/IViewFinder;->setSquareViewFinder(Z)V

    .line 169
    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    invoke-interface {p1}, Lme/dm7/barcodescanner/core/IViewFinder;->setupViewFinder()V

    return-void
.end method

.method public setupCameraPreview(Lme/dm7/barcodescanner/core/CameraWrapper;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    .line 186
    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    if-eqz p1, :cond_1

    .line 187
    invoke-virtual {p0, p1}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->setupLayout(Lme/dm7/barcodescanner/core/CameraWrapper;)V

    .line 188
    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    invoke-interface {p1}, Lme/dm7/barcodescanner/core/IViewFinder;->setupViewFinder()V

    .line 189
    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mFlashState:Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 190
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->setFlash(Z)V

    .line 192
    :cond_0
    iget-boolean p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mAutofocusState:Z

    invoke-virtual {p0, p1}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->setAutoFocus(Z)V

    :cond_1
    return-void
.end method

.method public final setupLayout(Lme/dm7/barcodescanner/core/CameraWrapper;)V
    .locals 2

    .line 80
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->removeAllViews()V

    .line 82
    new-instance v0, Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lme/dm7/barcodescanner/core/CameraPreview;-><init>(Landroid/content/Context;Lme/dm7/barcodescanner/core/CameraWrapper;Landroid/hardware/Camera$PreviewCallback;)V

    iput-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    .line 83
    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    iget v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mAspectTolerance:F

    invoke-virtual {p1, v0}, Lme/dm7/barcodescanner/core/CameraPreview;->setAspectTolerance(F)V

    .line 84
    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mShouldScaleToFill:Z

    invoke-virtual {p1, v0}, Lme/dm7/barcodescanner/core/CameraPreview;->setShouldScaleToFill(Z)V

    .line 85
    iget-boolean p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mShouldScaleToFill:Z

    if-nez p1, :cond_0

    .line 86
    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x11

    .line 87
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    const/high16 v0, -0x1000000

    .line 88
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 89
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 90
    invoke-virtual {p0, p1}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-virtual {p0, p1}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->addView(Landroid/view/View;)V

    .line 95
    :goto_0
    iget-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 96
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->addView(Landroid/view/View;)V

    return-void

    .line 98
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "IViewFinder object returned by \'createViewFinderView()\' should be instance of android.view.View"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startCamera()V
    .locals 1

    .line 197
    invoke-static {}, Lme/dm7/barcodescanner/core/CameraUtils;->getDefaultCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->startCamera(I)V

    return-void
.end method

.method public startCamera(I)V
    .locals 1

    .line 178
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraHandlerThread:Lme/dm7/barcodescanner/core/CameraHandlerThread;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Lme/dm7/barcodescanner/core/CameraHandlerThread;

    invoke-direct {v0, p0}, Lme/dm7/barcodescanner/core/CameraHandlerThread;-><init>(Lme/dm7/barcodescanner/core/BarcodeScannerView;)V

    iput-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraHandlerThread:Lme/dm7/barcodescanner/core/CameraHandlerThread;

    .line 181
    :cond_0
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraHandlerThread:Lme/dm7/barcodescanner/core/CameraHandlerThread;

    invoke-virtual {v0, p1}, Lme/dm7/barcodescanner/core/CameraHandlerThread;->startCamera(I)V

    return-void
.end method

.method public stopCamera()V
    .locals 2

    .line 201
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-virtual {v0}, Lme/dm7/barcodescanner/core/CameraPreview;->stopCameraPreview()V

    .line 203
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-virtual {v0, v1, v1}, Lme/dm7/barcodescanner/core/CameraPreview;->setCamera(Lme/dm7/barcodescanner/core/CameraWrapper;Landroid/hardware/Camera$PreviewCallback;)V

    .line 204
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    iget-object v0, v0, Lme/dm7/barcodescanner/core/CameraWrapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 205
    iput-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    .line 207
    :cond_0
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraHandlerThread:Lme/dm7/barcodescanner/core/CameraHandlerThread;

    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {v0}, Lme/dm7/barcodescanner/core/CameraHandlerThread;->quit()Z

    .line 209
    iput-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraHandlerThread:Lme/dm7/barcodescanner/core/CameraHandlerThread;

    :cond_1
    return-void
.end method

.method public stopCameraPreview()V
    .locals 1

    .line 214
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0}, Lme/dm7/barcodescanner/core/CameraPreview;->stopCameraPreview()V

    :cond_0
    return-void
.end method

.method public toggleFlash()V
    .locals 3

    .line 284
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lme/dm7/barcodescanner/core/CameraWrapper;->mCamera:Landroid/hardware/Camera;

    invoke-static {v0}, Lme/dm7/barcodescanner/core/CameraUtils;->isFlashSupported(Landroid/hardware/Camera;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    iget-object v0, v0, Lme/dm7/barcodescanner/core/CameraWrapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "torch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "off"

    .line 287
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_0
    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 291
    :goto_0
    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    iget-object v1, v1, Lme/dm7/barcodescanner/core/CameraWrapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_1
    return-void
.end method
