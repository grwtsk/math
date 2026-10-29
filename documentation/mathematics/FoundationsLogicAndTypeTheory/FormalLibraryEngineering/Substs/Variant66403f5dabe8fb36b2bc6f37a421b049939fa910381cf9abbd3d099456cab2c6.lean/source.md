# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Substs.Variant66403f5dabe8fb36b2bc6f37a421b049939fa910381cf9abbd3d099456cab2c6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aad863daed3e9d1aa85319760e7397aaf2138347` · SHA-256 `66403f5dabe8fb36b2bc6f37a421b049939fa910381cf9abbd3d099456cab2c6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Evan Lohn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Evan Lohn, Mario Carneiro
-/
import Mathlib.Init

/-!
# The `substs` macro

The `substs` macro applies the `subst` tactic to a list of hypothesis, in left to right order.
-/

namespace Mathlib.Tactic.Substs


/--
Applies the `subst` tactic to all given hypotheses from left to right.
-/
syntax (name := substs) "substs" (colGt ppSpace ident)* : tactic

macro_rules
| `(tactic| substs $xs:ident*) => `(tactic| ($[subst $xs]*))

end Substs

end Mathlib.Tactic
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=89962914541b2eaf4172b239534db4b1861ba2ec83f35abc84fc04d7a6708b7a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substs/Variant66403f5dabe8fb36b2bc6f37a421b049939fa910381cf9abbd3d099456cab2c6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
