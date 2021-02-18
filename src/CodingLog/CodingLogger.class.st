Class {
	#name : #CodingLogger,
	#superclass : #MemoryLogger,
	#category : #CodingLog
}

{ #category : #registering }
CodingLogger >> start [
	self startFor: CodingLogSignal
]
