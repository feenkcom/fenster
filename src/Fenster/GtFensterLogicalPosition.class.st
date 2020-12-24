Class {
	#name : #GtFensterLogicalPosition,
	#superclass : #GtFensterPosition,
	#category : #'Fenster-Geometry'
}

{ #category : #'api - converting' }
GtFensterLogicalPosition >> asLogical: aScaleFactor [
	^ self
]

{ #category : #'api - converting' }
GtFensterLogicalPosition >> asPhysical: aScaleFactor [
	<return: #GtFensterPhysicalPosition>
	| aX aY |
	
	(aScaleFactor <= 0 or: [ aScaleFactor isInfinite ])
		ifTrue: [ (GtFensterWrongScaleFactor scaleFactor: aScaleFactor) signal ].

	aX := self x * aScaleFactor.
	aY := self y * aScaleFactor.

	^ GtFensterPhysicalPosition x: aX y: aY
]
