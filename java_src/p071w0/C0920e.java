package p071w0;

import android.graphics.Matrix;
import android.util.Property;
import android.widget.ImageView;
/* renamed from: w0.e */
/* loaded from: classes.dex */
public final class C0920e extends Property<ImageView, Matrix> {

    /* renamed from: a */
    public final Matrix f2880a;

    public C0920e() {
        super(Matrix.class, "imageMatrixProperty");
        this.f2880a = new Matrix();
    }

    @Override // android.util.Property
    public final Matrix get(ImageView imageView) {
        Matrix matrix = this.f2880a;
        matrix.set(imageView.getImageMatrix());
        return matrix;
    }

    @Override // android.util.Property
    public final void set(ImageView imageView, Matrix matrix) {
        imageView.setImageMatrix(matrix);
    }
}
