// ****** Mixins in dart ******

// *** references ***
// 1. https://medium.com/flutter-community/https-medium-com-shubhamhackzz-dart-for-flutter-mixins-in-dart-f8bb10a3d341
// 2. https://www.digitalocean.com/community/tutorials/dart-mixins

// *** definition ***
/*
    In object oriented programming languages,a mixin is a class that contains
    methods for use by other classes without having to be parent class of those
    other classes

    In other words mixins are normal classes from which we can borrow method
    or variables from without extending the class.In dart we can do this by 
    using with keyword.
*/

// *** problem ***
/*
    Imagine we have two creatures classes,each if them with their own set of
    behaviours.The obvious solution would be to just directly outline the 
    methods for each class as we need themmbut many classes aren't going to be 
    entirely unique and will share a lot of commonality with each other.We
    obviously want to find the most efficient structure for writing these 
    classes in the most reusable way.

    Our animals will have few specific actions they can perform and a larger 
    behaviour composed out of them.As you can see,thier diet may be different,
    but the methods are mostly the same and should ideally broken out into 
    something more resuable.
*/

/*
   class Alligator {
  void swim() => print('Swimming');
  void bite() => print('Chomp');
  void crawl() => print('Crawling');
  void hunt() {
    print('Alligator -------');
    swim();
    crawl();
    bite();
    print('Eat Fish');
  }
}

class Crocodile {
  void swim() => print('Swimming');
  void bite() => print('Chomp');
  void crawl() => print('Crawling');
  void hunt() {
    print('Crocodile -------');
    swim();
    crawl();
    bite();
    print('Eat Zebra');
  }
}

void main() {
  Crocodile().hunt();
  Alligator().hunt();
}

OUTPUT : 
    Crocodile -------
    Swimming
    Crawling
    Chomp
    Eat Zebra
    Alligator -------
    Swimming
    Crawling
    Chomp
    Eat Fish

*/

/*
    The most common option we have is extentions,where we can take properties
    and methods on one class and make them available in anothe.Since we would't 
    use Reptile on it's own instance we can set it as an abstract class so it 
    can't be initialized,just extended.
*/

/*
    abstract class Reptile {
      void bite() => print('Chomp');
      void swim() => print('Swimming');
      void crawl() => print('Crawling');
      void hunt() {
        print('${this.runtimeType} -------');
        swim();
        crawl();
        bite();
      }
    }

    class Alligator extends Reptile {
        // Alligator Specific stuff...
    }

    class Crocodile extends Reptile {
        // Crocodile Specific stuff...
    }

    void main() {
      Crocodile().hunt('Zebra');
      Alligator().hunt('Fish');
    }

    NOTE : output will be the same as given before

*/

/*
    That's noce for our current example,but as we add more animals it would 
    quickly become a evident that many of these methods aren't just for Reptiles.
    If we wated to create a Fish class with swim method,instead if just 
    extending Reptile,which is very limiting when we need more functionality 
    from other classes,since we can only use extends one per class.We can use
    mixins to break our more universal behaviours into smaller,more reusable
    components that we can add to whatever class we need them in.
    
    we just need to use the mixin type to store our methods and use the with 
    keyword on every class we want it included in.Unlike extends,we can add as
    many mixins as we want to a class.
*/

/*
    mixin Swim{
        void swim(){
            print("swiming");
        }
    }

    mixin Bite{
        void bite(){
            print("Chomp");
        }
    }

    mixin Crawl{
        void crawl(){
            print("crawling");
        }
    }

    abstract class Reptile with Swim,Crawl,Bite{
        void hunt(food){
            print("${this.runtimeType} -------- ");
            this.swim();
            this.crawl();
            this.bite();
            print("Eat $food");
        }
    }

    class Alligator extends Reptile{}

    class Crocodile extends Reptile{}

    class Fish with Swim,Bite{
        void feed(){
            print("Fish ------- ");
            this.swim();
            this.bite();
        }
    }


    void main(){

        Alligator alligator = new Alligator();
        Crocodile crocodile = new Crocodile();
        Fish fish = new Fish();

        alligator.hunt("zebra");
        crocodile.hunt("Fish");
        fish.feed();

    }

    output : 
        Alligator -------- 
        swiming
        crawling
        Chomp
        Eat zebra
        Crocodile -------- 
        swiming
        crawling
        Chomp
        Eat Fish
        Fish ------- 
        swiming
        Chomp

*/


// *** on keyword ***

/*
    The last trick we have is the ability to do something that we like think as
    a reverse extension.We can create a mixin that utilizes the methods from a
    class,which we can then use with each subclass.

    If we wanted to break Hunt into its own mixin,we can use the on keyword to 
    tell it that it will only be ised on the Reptile class,which will give it 
    access to all of its functuinality,like our Swim,Crawn and Bite functionality.
*/

mixin Swim{
    void swim(){
        print("swiming");
    }
}

mixin Bite{
    void bite(){
        print("Chomp");
    }
}

mixin Crawl{
    void crawl(){
        print("crawling");
    }
}

mixin Hunt on Reptile {
    void hunt(food){
        print("${this.runtimeType} -------- ");
        this.swim();
        this.crawl();
        this.bite();
        print("Eat $food");
    }
}

abstract class Reptile with Swim,Crawl,Bite{}

class Alligator extends Reptile with Hunt{}

class Crocodile extends Reptile with Hunt{}

class Fish with Swim,Bite{
    void feed(){
        print("Fish ------- ");
        this.swim();
        this.bite();
    }
}


/*
    output : 
        Alligator -------- 
        swiming
        crawling
        Chomp
        Eat zebra
        Crocodile -------- 
        swiming
        crawling
        Chomp
        Eat Fish
        Fish ------- 
        swiming
        Chomp

*/

// *** Preferences ***
/*

    abstract class Performer {
        void perform();
    }

    class Dancer extends Performer{
        void perform(){}
    }

    class Singer extends Performer{
        void perform(){}
    }

    class Musician extends Dancer,Singer{
        void showTime(){
            this.perform();
        }
    }

    NOTE : this is just an example for understanding Dart don't have multiple 
    inheritance like this

    consider above code where class Musician is inherited by class Dancer and
    Singer.Here Dancer and Singer have common method called perform();
    Now what will happen if we called perform method from musician class?
    which one will be executed?.

    Here we do not have any actual way to decide which is right method to call.
    This is very situation called deadly diamond of death and it is a core 
    problem of multiple inheritance.Thankfully we can fix this using mixins.

*/


class Performer {
    void perform(){
        print("[erforming");
    }
}

mixin Dancer {
    void perform(){
        print("singing");
    }
}

mixin Singer  {
    void perform(){
        print("dancing");
    }
}

class Musician extends Performer with Dancer,Singer{
    void showTime(){
        this.perform();
    }
}

/*

    Output : 
        dancing

    Explaination : 
        When mixing classes,the classes used as mixins are not parallel but 
    instead on top of the class using it.This is the reason why methods do not
    conflict with one another,allowing is to use codes from multiple classes 
    without having to deal with th vulnerabilities of multiple inheritance.

    ===========================================================================

    For determining which class method will be executed when using mixins,
    follow simple steps.
    
    1. If the class using mixins is extending any class put that class on top 
    of sth stack i.e. class Musician extends Performer.

    2. Always remember the order in which you declare mixins,this is very 
    important because it decides which class is more important.If mixins 
    contains identical methods then the mixin class that is declared later will 
    be executed.
    
    3. Finally,add the class which is using mixins i.e. Musician into the stack.
    This class would be the most important or most specific class.If this class
    contains any identical mehtods to mixins or super class then methods in this
    class would be called first.

    preference : Performer < Dancer < Singer < Musician.
    Musician highest and Performer lowest

*/



void main(){
    
    Alligator alligator = new Alligator();
    Crocodile crocodile = new Crocodile();
    Fish fish = new Fish();
    
    alligator.hunt("zebra");
    crocodile.hunt("Fish");
    fish.feed();

    print("__________________________");
    Musician musician = new Musician();
    musician.perform();


}

