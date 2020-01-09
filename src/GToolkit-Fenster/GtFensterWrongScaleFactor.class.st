Class {
	#name : #GtFensterWrongScaleFactor,
	#superclass : #GtFensterError,
	#instVars : [
		'scaleFactor'
	],
	#category : #'GToolkit-Fenster-Errors'
}

{ #category : #'instance creation' }
GtFensterWrongScaleFactor class >> scaleFactor: aNumber [
	^ self new scaleFactor: aNumber
]

{ #category : #accessing }
GtFensterWrongScaleFactor >> description [

	^ 'Wrong scale factor',  (scaleFactor
		ifNotNil: [ ' ({1})' format: { scaleFactor } ]
		ifNil: [ '' ])
]

{ #category : #accessing }
GtFensterWrongScaleFactor >> scaleFactor: aNumber [
	scaleFactor := aNumber
]
