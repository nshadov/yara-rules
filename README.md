# yara-rules

My yara rules for classifying and detecting malware.

## Installation

You need to **clone recursively** (with submodules) because it also uses other great
rule libraries:

```
git clone --recursive https://github.com/nshadov/yara-rules
```

## Requirements

To classify anything, you'll need **yara**. Install it via python pip:

```
pip install yara
```

OR using apt-get/yum/your weapon of choice:

```
apt-get install yara
```

## How it works

This simple script find all yara rules in it's current directory and attempts to
match them one by one against provided suspicious file.

## Run

```
./rules_all.sh
```

# Other great rules libraries that are included here

All rights and kudos goes to these projects. This project is based on their
hard work and dedication. You can find their licenses on their GH pages:

  * https://github.com/Yara-Rules/rules
  * https://github.com/citizenlab/malware-signatures
  * https://github.com/ahhh/YARA
  * https://github.com/nbs-system/php-malware-finder
