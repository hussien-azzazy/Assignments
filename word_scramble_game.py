#Word Scramble Game

import random

L=["Monkey","Lion","Zebra","Giraffe","Elephant"] #List of 5 words

answer="yes"
#To replay game
while answer.lower()!="no": 
    random_word=random.choice(L) # choose a random word from List
    scrumble_c= random.sample(random_word, len(random_word)) #shuffle the random word and return characters

    scrumble=""
    for c in scrumble_c: #for loop to concatinate characters into a string
        scrumble+=c #scrumbled word
    
    print(
    "\nWelcome to the Word Scramble Game!\n"
    "Guess the word from the scrambled letters\n"
    f"scrambled word: {scrumble}"
    )
    
    i=1
    while i<=3:
        guess_word= input("Enter your guess: ")

        if guess_word.lower()==random_word.lower():
            print("Congratulations! You've guessed the correct word!\n")
            break   
        else:
            print(f"Wrong guess! You have {3-i} attempts left")

        i+=1

    if guess_word.lower() != random_word.lower():
        print(f"Game over! The correct word was: {random_word}")

    answer = input("Do you want to play again? (yes/no): ")


