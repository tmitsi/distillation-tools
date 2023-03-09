[![CC BY-NC-SA 4.0][cc-by-nc-sa-shield]][cc-by-nc-sa]

This work is licensed under a
[Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License][cc-by-nc-sa].

[![CC BY-NC-SA 4.0][cc-by-nc-sa-image]][cc-by-nc-sa]

[cc-by-nc-sa]: http://creativecommons.org/licenses/by-nc-sa/4.0/
[cc-by-nc-sa-image]: https://licensebuttons.net/l/by-nc-sa/4.0/88x31.png
[cc-by-nc-sa-shield]: https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg

# abv calculator

Octave files to generate the ethanol-water phase diagram and find the abv of the final product, relative to the v/v% of ethanol in the boiler and the number of plates.

Data from homedistiller.org

## Usage
In Octave (it should also work in Matlab, untested), open the `abv-calculator` directory.

Go to `abv.m` and put your own values, run it. 

Alternatively, call the function `plates(no_of_plates, percentage_in_boiler,zoom)` where zoom can be true or false.
For example call `plates(0, 35, true)` for a pot still, 35% abv in the boiler, and zoom in the generated diagram.

If you want only the diagram, run the `diagram.m`, or call the fuction plates without arguments, i.e. `plates()`

## Screenshots
![screenshot1](https://user-images.githubusercontent.com/34687500/224176604-e8c76a12-c8a5-430b-8470-ed862a463f18.png)
![screenshot2](https://user-images.githubusercontent.com/34687500/223664154-abe19ec5-777b-4fa9-82e0-0d6f92d8111c.png)
![screenshot3](https://user-images.githubusercontent.com/34687500/223664182-100b1a36-16df-4bd8-8398-a9667a500906.png)

## Credits
All calculations are based on material found in https://homedistiller.org/wiki/htm/calcs/calcs_calc.htm

## Contributing
Any idea is welcome. If you have more data/alternative formulas etc., let me know
