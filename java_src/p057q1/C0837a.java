package p057q1;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
/* renamed from: q1.a */
/* loaded from: classes.dex */
public final class C0837a extends C0843g implements List<C0843g> {

    /* renamed from: b */
    public final ArrayList<C0843g> f2735b;

    public C0837a() {
        this.f2744a = 1;
        this.f2735b = new ArrayList<>();
    }

    @Override // java.util.List
    public final void add(int i, C0843g c0843g) {
        this.f2735b.add(i, c0843g);
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection<? extends C0843g> collection) {
        return this.f2735b.addAll(i, collection);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean addAll(Collection<? extends C0843g> collection) {
        return this.f2735b.addAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public final void clear() {
        this.f2735b.clear();
    }

    public final Object clone() {
        return this.f2735b.clone();
    }

    @Override // java.util.List, java.util.Collection
    public final boolean contains(Object obj) {
        return this.f2735b.contains(obj);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean containsAll(Collection collection) {
        return this.f2735b.contains(collection);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean equals(Object obj) {
        return this.f2735b.equals(obj);
    }

    @Override // java.util.List
    public final C0843g get(int i) {
        return this.f2735b.get(i);
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        return this.f2735b.indexOf(obj);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean isEmpty() {
        return this.f2735b.isEmpty();
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public final Iterator<C0843g> iterator() {
        return this.f2735b.iterator();
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        return this.f2735b.indexOf(obj);
    }

    @Override // java.util.List
    public final ListIterator<C0843g> listIterator() {
        return this.f2735b.listIterator();
    }

    @Override // java.util.List
    public final ListIterator<C0843g> listIterator(int i) {
        return this.f2735b.listIterator(i);
    }

    @Override // java.util.List
    public final C0843g remove(int i) {
        return this.f2735b.remove(i);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean remove(Object obj) {
        return this.f2735b.remove(obj);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean removeAll(Collection<?> collection) {
        return this.f2735b.remove(collection);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean retainAll(Collection<?> collection) {
        return this.f2735b.retainAll(collection);
    }

    @Override // java.util.List
    public final C0843g set(int i, C0843g c0843g) {
        return this.f2735b.set(i, c0843g);
    }

    @Override // java.util.List, java.util.Collection
    public final int size() {
        return this.f2735b.size();
    }

    @Override // java.util.List
    public final List<C0843g> subList(int i, int i2) {
        return this.f2735b.subList(i, i2);
    }

    @Override // java.util.List, java.util.Collection
    public final Object[] toArray() {
        return this.f2735b.toArray();
    }

    @Override // java.util.List, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        return this.f2735b.toArray(objArr);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean add(Object obj) {
        return this.f2735b.add((C0843g) obj);
    }
}
