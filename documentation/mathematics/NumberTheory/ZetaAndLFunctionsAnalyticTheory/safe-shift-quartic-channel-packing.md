# Axial/transverse positive safe-shift channels

The signed quartic has the exact algebraic decomposition

-witnessTrace(a,t)/4 = a^4 + 3 a^2 t^2.

The safe-shift source now has two separate nonnegative three-point Gram channels with the same zero-set structure.

Axial channel:
- x = Re(E);
- y = Re(E - center), where center is the a=0 safe source at 2+i t;
- y vanishes when a=0;
- this is the candidate a^4 channel.

Transverse channel:
- x = Re(E);
- y = Im(O);
- O is reflection-odd in a;
- Im(O) vanishes when a=0;
- all safe terms are real when t=0, so Im(O) also vanishes when t=0;
- this is the candidate a^2 t^2 channel.

Define the structural positive source

Q_n(s) = axialGram_n(s) + 3 transverseGram_n(s).

Then Q_n(s)>=0 for every stage. Q_n vanishes stagewise on the critical line. At zero height the transverse term vanishes identically and Q_n reduces to the axial channel.

This matches the target quartic's decomposition at the level of parity, positivity, and special-locus vanishing, but NOT yet at the level of coefficient equality. The next obligation is to factor the safe prime terms explicitly and determine whether normalized axial/transverse areas converge to source-derived multiples of a^4 and a^2 t^2, with all gamma/pole/zero residuals visible.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0a32d95626d27368e8199fc54e418826e3fc913c9ccbc07fdd2f590bdf01f488 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
