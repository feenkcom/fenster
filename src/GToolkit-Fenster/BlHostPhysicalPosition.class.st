Class {
	#name : #BlHostPhysicalPosition,
	#superclass : #BlHostPosition,
	#category : #'GToolkit-Fenster-Geometry'
}

{ #category : #converting }
BlHostPhysicalPosition >> asLogical: aScaleFactor [
	| aX aY |
	
	self
		assert: [ aScaleFactor > 0 and: [ aScaleFactor isInfinite not ] ]
		description: [ 'Scale factor must be a positive non-infinite number' ].

	aX := self x / aScaleFactor asFloat.
	aY := self y / aScaleFactor asFloat.

	^ BlHostLogicalPosition x: aX y: aY
]

{ #category : #converting }
BlHostPhysicalPosition >> asPhysical: aScaleFactor [
	^ self
]
