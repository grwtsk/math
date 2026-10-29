# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.203.Variantd6ab0a2c12a1f8d6511216deb70cbdfd960206746741c9ad7c2606e54481156a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d8d5b65742c95618447db854ff599001cf54fe28` · SHA-256 `d6ab0a2c12a1f8d6511216deb70cbdfd960206746741c9ad7c2606e54481156a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop.Frontend

-- Thank to Damiano Testa for this bug report.

/--
info: @[aesop (rule_sets := [builtin✝]) safe✝ apply✝]
example : True✝ :=
  trivial✝
-/
#guard_msgs in
#eval do
  let stx ← `(@[aesop (rule_sets := [builtin]) safe apply] example : True := trivial)
  Lean.logInfo stx
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a0eaa2aa21980d2680640802929eeb32afa6cf7965fc5c066cf8707350f5ff07 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/203/Variantd6ab0a2c12a1f8d6511216deb70cbdfd960206746741c9ad7c2606e54481156a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
