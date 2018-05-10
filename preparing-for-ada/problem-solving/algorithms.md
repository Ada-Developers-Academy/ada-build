# Algorithms

## Overview
An algorithm is a series of steps to solve a problem. We use algorithms everyday without even realizing it. An algorithm is the procedure we follow to complete a task. Each step can be broken down to varying degrees of preciseness. For humans, we might not need to be as exact or precise because we can make assumptions. For a computer, these instructions need to be extremely precise because a computer cannot make assumptions or inferences.

Humans can make assumptions about algorithms related to context and prior knowledge. For example, in driving directions if there was an instruction to "Go over the river", a human would know to take the bridge over the river. If we were writing code for a driverless car, we would need to be specific so that it doesn't barrel into a river and sink.

## 5 Essential Properties of an algorithm
In [The Art of Computer Programming (Knuth)](https://en.wikipedia.org/wiki/The_Art_of_Computer_Programming), a famous computer scientist, [Donald Knuth](https://en.wikipedia.org/wiki/Donald_Knuth), defines an algorithm as a set of steps, or rules, with five basic properties, finiteness, definiteness, inputs, outputs, and effectiveness.

When we initially write an algorithm, we attempt to be as precise as necessary to produce our intended output. It is important to address all 5 properties of an algorithm.

### Input
An algorithm starts its computation from an initial state. This state may be expressed as input values given to the algorithm before it starts.

### Output
An algorithm must produce a result with a specific relation to the inputs.

### Finiteness
An algorithm must start and stop. The rules an algorithm applies must also conclude in a reasonable amount of time. What "reasonable" is depends on the nature of the algorithm, but in no case can an algorithm take an infinite amount of time to complete its task. Knuth calls this property the finiteness of an algorithm.

### Definiteness
The actions that an algorithm performs cannot be open to multiple interpretations; each step must be precise and unambiguous. Knuth terms this quality definiteness. An algorithm cannot iterate a "bunch" of times. The number of times must be precisely expressed, for example 2, 1000000, or a randomly chosen number.

### Effectiveness
The steps an algorithm takes must be sufficiently simple that they could be expressed; these steps must make sense for the quantities used.

## Algorithm example
This is an example of a morning routine algorithm for one of our instructors

1. Hear alarm going off
1. Hit snooze
1. Hear alarm going off
1. Get kicked in the side by a 2 year old that crawled into my bed
1. Get out of bed and turn off alarm
1. Shower
1. ...
1. Get off at my bus stop
1. Walk 2 blocks to the Ada building
1. Take the elevator to our floor
1. Walk into the office

For this example the algorithm is considered _finite_ because it will eventually end when the instructor reaches work. It is _definite_ because each step can be followed exactly. The _inputs_ are: their kids, the bus, myself, etc. The _output_ is that they arrive at work. And the algorithm is considered _effective_ because the steps can be listed to read and understand.

Once we have an algorithm, we want to test it out. This is done by having someone else (or the computer) follow the instructions we have provided and see if the result is what we intended.

Even if the instructions worked for one particular case, we should consider how the algorithm would fair if given different inputs. What if we didn't start our morning routine algorithm from home, would the instructions still produce the desired result.

Often times some of our test cases fail or our desired output is reached but not in the most efficient way possible (e.g., we arrive late). This can be caused by a variety of reasons, and means that while our algorithm might work, it doesn't work well. Refining, or refactoring, involves making our algorithm better, so that it works for more test cases or more efficiently solves our problem. In order to do this, we have to rewrite our steps to be more clear and consider more inputs.
