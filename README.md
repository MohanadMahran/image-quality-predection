# image-quality-predection

## Running on Matlab
Run the demo using:

```matlab
demo.m
````

## Dependencies

### Binaries

* `svm-predict`
* `svm-scale`
* `svm-train`

### Matlab Files

* `imgquar.m` — Pre-processing of image
* `CEIQA.m` — To calculate the CEIQA feature of image
* `feature_scale.m` — Scale the feature
* `lbp.m` — To calculate the LBP of image
* `getmapping.m` — To calculate the LBP of image

### Data Files

* `storem`
* `trainmode`

### Image Files

* `img.png` — MOS = 4.250

## LIBSVM Copyright Notice

Below is the required copyright notice for the LIBSVM tools distributed with this release:

**LibSVM tools:** `svm-predict`, `svm-scale`, `svm-train` (binaries)

### Linux Usage

If you want to run this on a Linux distribution, you can replace the following lines:

```matlab
system('svm-scale -r allrange test_ind >> test_ind_scaled');
system('svm-predict -b 1 test_ind_scaled allmodel output >>dump');
```

with:

```matlab
system('wine svm-scale -r allrange test_ind >> test_ind_scaled');
system('wine svm-predict -b 1 test_ind_scaled allmodel output >>dump');
```

> Note: This requires `wine` to be installed.

### Copyright

```
Copyright (c) 2000-2009 Chih-Chung Chang and Chih-Jen Lin
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions
are met:

1. Redistributions of source code must retain the above copyright
   notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright
   notice, this list of conditions and the following disclaimer in
   the documentation and/or other materials provided with the distribution.

3. Neither name of copyright holders nor the names of its contributors
   may be used to endorse or promote products derived from this software
   without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
"AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR
CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
```

```

If you want, I can also make it **even cleaner with tables for dependencies and a nicer layout** that looks professional on GitHub.  

Do you want me to do that version too?
```
