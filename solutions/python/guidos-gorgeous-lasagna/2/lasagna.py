"""
Lasagna cooking time calculator.

This module provides simple helper functions for determining how long a
lasagna has been cooking and how much time remains. It defines two constants:
`EXPECTED_BAKE_TIME`, the total bake time required, and `PREPARATION_TIME`,
the number of minutes needed to prepare each layer.

Functions included:
- bake_time_remaining(elapsed_bake_time): returns how many minutes of baking
  are still needed.
- preparation_time_in_minutes(number_of_layers): returns the total preparation
  time based on the number of layers.
- elapsed_time_in_minutes(number_of_layers, elapsed_bake_time): returns the
  total time spent preparing and baking the lasagna so far.
"""

EXPECTED_BAKE_TIME = 40
PREPARATION_TIME = 2

def bake_time_remaining(elapsed_bake_time):
    
    """Calculate the bake time remaining.

    :param elapsed_bake_time: int - baking time already elapsed.
    :return: int - remaining bake time (in minutes) derived from 'EXPECTED_BAKE_TIME'.

    Function that takes the actual minutes the lasagna has been in the oven as
    an argument and returns how many minutes the lasagna still needs to bake
    based on the `EXPECTED_BAKE_TIME`.
    """
    
    return EXPECTED_BAKE_TIME - elapsed_bake_time



    
def preparation_time_in_minutes(number_of_layers):
    
    """Return the preparation time based on the number of layers.

    :param number_of_layers: int - how many layers the lasagna has.
    :return: int - total preparation time (in minutes).

    Each layer takes `PREPARATION_TIME` minutes to prepare, so this function
    multiplies the number of layers by that constant.
    """
    
    return number_of_layers * PREPARATION_TIME
    



def elapsed_time_in_minutes(number_of_layers, elapsed_bake_time):
      
    """Calculate the elapsed cooking time.

    :param number_of_layers: int - the number of layers in the lasagna.
    :param elapsed_bake_time: int - elapsed cooking time.
    :return: int - total time elapsed (in minutes) preparing and cooking.

    This function takes two integers representing the number of lasagna layers and the
    time already spent baking and calculates the total elapsed minutes spent cooking the
    lasagna.
    """
    
    return preparation_time_in_minutes(number_of_layers) + elapsed_bake_time