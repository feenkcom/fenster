Class {
	#name : #GtFensterPhysicalPosition,
	#superclass : #GtFensterPosition,
	#category : #'GToolkit-Fenster-Geometry'
}

{ #category : #'api - converting' }
GtFensterPhysicalPosition >> asLogical: aScaleFactor [
	| aX aY |
	
	(aScaleFactor <= 0 or: [ aScaleFactor isInfinite ])
		ifTrue: [ (GtFensterWrongScaleFactor scaleFactor: aScaleFactor) signal ].

	aX := self x / aScaleFactor asFloat.
	aY := self y / aScaleFactor asFloat.

	^ GtFensterLogicalPosition x: aX y: aY
]

{ #category : #'api - converting' }
GtFensterPhysicalPosition >> asPhysical: aScaleFactor [
	^ self
]
