Class {
	#name : #GtFensterPosition,
	#superclass : #Object,
	#instVars : [
		'x',
		'y'
	],
	#category : #'GToolkit-Fenster-Geometry'
}

{ #category : #'instance creation' }
GtFensterPosition class >> fromPoint: aPoint [
	^ self x: aPoint x y: aPoint y
]

{ #category : #'instance creation' }
GtFensterPosition class >> x: aX y: aY [
	^ self new initializeX: aX Y: aY
]

{ #category : #'api - arithmetic' }
GtFensterPosition >> + aGtFensterPosition [
	<return: #GtFensterPosition>

	^ self class
		x: self x + aGtFensterPosition x
		y: self y + aGtFensterPosition y
]

{ #category : #'api - arithmetic' }
GtFensterPosition >> - aGtFensterPosition [
	<return: #GtFensterPosition>

	^ self class
		x: self x - aGtFensterPosition x
		y: self y - aGtFensterPosition y
]

{ #category : #comparing }
GtFensterPosition >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ x = anObject x and: [ y = anObject y ]
]

{ #category : #'api - converting' }
GtFensterPosition >> asLogical: aScaleFactor [
	<return: #GtFensterLogicalPosition>
	
	^ self subclassResponsibility
]

{ #category : #'api - converting' }
GtFensterPosition >> asPhysical: aScaleFactor [
	<return: #GtFensterPhysicalPosition>
	
	^ self subclassResponsibility
]

{ #category : #'api - converting' }
GtFensterPosition >> asPoint [
	<return: #Point>

	^ self x @ self y
]

{ #category : #comparing }
GtFensterPosition >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ y hash bitXor: x hash
]

{ #category : #initialization }
GtFensterPosition >> initialize [
	super initialize.
	
	x := 0.
	y := 0
]

{ #category : #initialization }
GtFensterPosition >> initializeX: aX Y: aY [
	x := aX.
	y := aY
]

{ #category : #testing }
GtFensterPosition >> isZero [
	<return: #Boolean>
	
	^ self x isZero or: [ self y isZero ]
]

{ #category : #printing }
GtFensterPosition >> printOn: aStream [
	aStream
		nextPutAll: self class name;
		nextPutAll: ' { x: ';
		print: x;
		nextPutAll: ' y: ';
		print: y;
		nextPutAll: ' }'
]

{ #category : #accessing }
GtFensterPosition >> x [
	<return: #Number>

	^ x
]

{ #category : #accessing }
GtFensterPosition >> y [
	<return: #Number>

	^ y
]
