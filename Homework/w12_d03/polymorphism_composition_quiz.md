# Polymorphism & Composition Homework - Quiz

# Polymorphism

1. What does the ___word___ 'polymorphism' mean?<br><br>
The literal translation is: many forms.

2. What does it mean when we apply polymorphism to OO design? Give a simple Java example.<br><br>
It means that object types can be treated as another type. For instance, if there were an interface of EngineParts, and the classes Clutch, Pistons, Radiator etc implemented the interface EngineParts, then the type EngineParts can be grouped together and include all of the classes implementing EngineParts.

3. What can we use to implement polymorphism in Java?<br><br>
In order to implement polymorphism in java, use an interface or an abstract class.

4. How many 'forms' can an object take when using polymorphism? <br><br>
The same number as however many interfaces are implemented and classes which are being inherited.

5. Give an example of when you could use polymorphism.<br><br>
When you want hold objects instanced form different classes within a data structure.



# Composition

6. What do we mean by 'composition' in reference to object-oriented programming?<br><br>
An object holds an instance of another. The two objects are strongly linked. If the holding object is deleted the instance of the held object is also lost.

7. When would you use composition? Provide a simple example in Java.<br><br>
When you want to implement a 'has-a' type relationship and where you might want to be able to make changes to the objects without affecting the other.


8. What is/are the advantage(s) of using composition?<br><br>
- be able to make changes to the has-a Object without affecting the higher object. 
- control the visibility of the objects

9. When an object is destroyed, what happens to all the objects it is composed of?<br><br>
The instances of the objects that are held, will also be lost.