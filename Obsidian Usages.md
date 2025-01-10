---
share: "True"
Date: 2024-12-18T17:23:00
---

Things left to be solved:
1. GitHub synchronization
2. Formula insertion
3. math formula typing
4. quick image insertion

Basic operations of the math formula typing
- @+capital letter = Greek letter
@S = $\Sigma$
@s = $\sigma$
- text = add {text} into the formula
"Hello! = $\text{Hello!}$
text if p <= 1, then /sum n conj p text diverges
$\text{if }p \leq 1 \text{ ,then} \sum n^{p} \text{  diverges}$
- adding subscripts and topscripts
a__n=$a_{n}$
barx = $\bar{x}$
x,.rdn = $\mathbf{x}^{n}$
- important symbols
lim a_n=$\lim_{ a_{n} \to \infty }$ 
infi a_x=$\int_{-\infty}^{\infty} a_{x} \, dx$
int = $\int$
ooo = $\infty$
sum = $\sum$
prod = $\prod$
~~wdec~~


## How to insert an image in an HTML?
Use the base64-image tranformation. Get the image's base64 code.
Advantages of the base-64 code:
1. Low LAN connection requirement. The user doesn't need any LAN connection to transform because this decoding method is just storing the binary code of an image into a 64-length string.
Then follow the steps listed below
- Make sure you have the base64 code.
- insert the image using the code 
```html
<img src=base-64code alt=nameofimage> 
<p class="image-caption">yourimagecaptionhere</p>
#Your code and imagename here
```

