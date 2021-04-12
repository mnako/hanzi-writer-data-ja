# Japanese K/Hanzi Writer Data

## About

This project transforms AnimCJK (https://github.com/parsimonhi/animCJK) data 
into the same format as the individual JSON files in the hanzi-writer-data 
project (https://github.com/chanind/hanzi-writer-data) used by the excellent 
Hanzi Writer (https://github.com/chanind/hanzi-writer).

This means that all features of the Hanzi Writer project 
(https://chanind.github.io/hanzi-writer/) can be easily and quickly used with 
Japanese kanji data.

## Usage

The data/ directory in this repository contains the data for each individual 
character as a separate JSON file. It follows the same structure as the 
hanzi-writer-data project but imports the data from the AnimCJK project.

In order to use Hanzi Writer with Japanese kanji, you can load the character 
data, as described in Hanzi Writer documentation 
(https://chanind.github.io/hanzi-writer/docs.html#loading-character-data-link):

> You can host these files from your server and load them via AJAX inside of 
> Hanzi Writer however you see fit. Loading character data is way is 
> accomplished via passing a custom closure to the charDataLoader option. An 
> example is shown below using jQuery: 

```js
var writer = HanziWriter.create('target', '巻', {
  charDataLoader: function(char, onComplete) {
    $.getJSON("https://raw.githubusercontent.com/mnako/hanzi-writer-data-ja/master/data/" + char + ".json", function(charData) {
      onComplete(charData);
    });
  }
});
```

## Licenses

The data coming from AnimCJK is licensed under Arphic Public License.

Copy of the license is included in the APL/ directory in this repository.
