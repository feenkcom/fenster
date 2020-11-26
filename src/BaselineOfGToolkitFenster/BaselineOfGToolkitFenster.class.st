Class {
	#name : #BaselineOfGToolkitFenster,
	#superclass : #BaselineOf,
	#category : #BaselineOfGToolkitFenster
}

{ #category : #baseline }
BaselineOfGToolkitFenster >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec baseline: 'GToolkitExamplesEngine' with: [
				spec repository: 'github://feenkcom/gtoolkit-examples:v0.8.13/src' ].
		spec package: 'GToolkit-Fenster' with: [
				spec requires: #('GToolkitExamplesEngine' ). ]. ].

]
