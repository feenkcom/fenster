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
			baseline: 'GToolkitExamplesEngine' with: [ spec repository: 'github://feenkcom/gtoolkit-examples/src' ].
		spec
			package: 'Fenster';
			package: 'Fenster' with: [ spec requires: #(Fenster GToolkitExamplesEngine) ] ]
]
