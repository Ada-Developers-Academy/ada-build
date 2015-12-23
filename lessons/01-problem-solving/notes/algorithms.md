# Notes: Algorithms

## What is an algorithm?
An algorithm is a series of steps to solve a problem. We use algorithms everyday without even realizing it. For example, this morning my algorithm for getting to work consisted of:

- Hear alarm going off
- Hit snooze
- Hear alarm going off
- Get kicked in the side by a 2 year old that crawled into my bed
- Get out of bed and turn off alarm
- Shower
- ...
- Get off at my bus stop
- Walk 2 blocks to the Ada building
- Take the elevator to our floor
- Walk into the office

An algorithm is the procedure we follow to complete a task. Each step can be broken down to varying degrees of preciseness. For humans, we might not need to be as exact or precise because we can make assumptions. For a computer, these instructions need to be extremely precise because a computer cannot make assumptions or inferences.

## 5 Essential Properties of an algorithm
In [The Art of Computer Programming (Knuth)](https://en.wikipedia.org/wiki/The_Art_of_Computer_Programming), a famous computer scientist, [Donald Knuth](https://en.wikipedia.org/wiki/Donald_Knuth), defines an algorithm as a set of steps, or rules, with five basic properties:

1. **Finiteness** - An algorithm must start and stop. The rules an algorithm applies must also conclude in a reasonable amount of time. What “reasonable” is depends on the nature of the algorithm, but in no case can an algorithm take an infinite amount of time to complete its task. Knuth calls this property the finiteness of an algorithm.
1. **Definiteness** - The actions that an algorithm performs cannot be open to multiple interpretations; each step must be precise and unambiguous. Knuth terms this quality definiteness. An algorithm cannot iterate a “bunch” of times. The number of times must be precisely expressed, for example 2, 1000000, or a randomly chosen number.
1. **Inputs** - An algorithm starts its computation from an initial state. This state may be expressed as input values given to the algorithm before it starts.
1. **Outputs** - An algorithm must produces a result with a specific relation to the inputs.
1. **Effectiveness** - The steps an algorithm takes must be sufficiently simple that they could be expressed “on paper”; these steps must make sense for the quantities used. Knuth terms this property effectiveness.

So for the example above of getting to work in the morning, the algorithm is considered _finite_ because it will eventually end when I reach work. It is _definite_ because each step can be followed exactly. The _inputs_ include: my kids, the bus, myself, etc... The _output_ is that I arrive at work. And the algorithm is considered _effective_ because the steps can be listed for you to read and understand.

## Think: Getting to grandma's house
What is an algorithm for getting to your grandmother's house?
- Input?
- Output?
- Definiteness?
- Effectiveness?
- Finiteness?

## Algorithms in Programming Languages
Again, humans can make assumptions about algorithms related to context and prior knowledge. For example, in driving directions if there was an instruction to "Go over the river", a human would know to take the bridge over the river. If we were writing code for a driverless car, we would need to be specific to test for road in front itself so that it doesn't barrel into a river and sink.

Watch the following about driverless (autonomous) cars and think about why writing instructions for computers might be different than writing instructions for humans. [YouTube: Driverless Car Hits the Street - Not People (2008)](https://www.youtube.com/watch?v=yDVLUiJfpPw)

Now take a look at a more recent clip and think about what the computer scientists writing code for these robots have to think about. What inputs do they have? What is their intended output? How are their algorithms considered Definite, Effective, and Finite? [YouTube: The 2015 DARPA Robotics Challenge Finals (2015)](https://www.youtube.com/watch?v=8P9geWwi9e0)

## Writing an algorithm
When we initially write an algorithm, we attempt to be as precise as necessary to produce our intended output. It is important to address all 5 properties of an algorithm.

## Testing an algorithm
Once we have an algorithm, we want to test it out. This is done by having someone else (or the computer) follow the instructions we have provided and see if the result is what we intended. Did they get to grandma's house?

Even if the instructions worked for one particular case, we should consider how the algorithm would fair if given different inputs. What if we didn't start our algorithm to grandma's house from our house, but instead from our work. Would the instructions still produce the desired result.

For this reason, it is important to try multiple test cases on an algorithm. _Further Reading_: [What Is a Good Test Case? (Cem Kaner, J.D., Ph.D.)](http://www.kaner.com/pdfs/GoodTest.pdf)

## Refining an algorithm
Often times some of our test cases fail (we can't get to grandma's if we leave from work) or our desired output is reached but not in the most efficient way possible (we reach grandma's 2 hours after leaving, when she lives 5 miles away). This can be caused by a variety of reasons, and means that while our algorithm might _work_, it doesn't _work well_. Refining, or [refactoring](https://en.wikipedia.org/wiki/Code_refactoring), involves making our algorithm better, so that it works for more test cases or more efficiently solves our problem. In order to do this, we have to rewrite our steps to be more clear and consider more inputs.

## Evaluating an algorithm
Writing algorithms can be difficult! It's ok if your algorithm doesn't work perfectly the first time; it rarely will in software development. What you should concentrate on is:

1. Write an algorithm to solve a problem
1. Make it work
1. Make it right
1. Make it fast
