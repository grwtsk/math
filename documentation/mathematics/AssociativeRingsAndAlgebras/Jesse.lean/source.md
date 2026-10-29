# Jesse — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `57dfb869d95b4aae31885dcb6f1836bc0040b8b1` · SHA-256 `760c98ae775e7278b4933573e804fea0e1526624bbbdf4ed3c4c99653b63c78d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jesse Vogel, Jannis Limperg
-/

import Aesop

set_option aesop.check.all true

axiom Ring : Type
axiom Morphism (R S : Ring) : Type

@[aesop 99%]
axiom ZZ : Ring

@[aesop 99%]
axiom f : Morphism ZZ ZZ

noncomputable example : Σ (R : Ring), Morphism R R := by
  aesop

axiom domain (R : Ring) : Prop

@[aesop 99%]
axiom ZZ_domain : domain ZZ

noncomputable example : ∃ (R : Ring), domain R := by
  aesop
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6f4e52207d869c245ef1ed39a409143f93797c52bae324ea95afc086490db338 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Jesse/Variant760c98ae775e7278b4933573e804fea0e1526624bbbdf4ed3c4c99653b63c78d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
