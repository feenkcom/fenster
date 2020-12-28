Class {
	#name : #BaselineOfFenster,
	#superclass : #BaselineOf,
	#category : #BaselineOfFenster
}

{ #category : #baselines }
BaselineOfFenster >> baseline: spec [
	<baseline>
	spec for: #common do: [
		spec
			package: 'Fenster';
			package: 'Fenster-Examples' with: [ spec requires: #(Fenster) ] ]
]
