# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RSuffices.Variantbbef4921a84f768ce217e3058663558ea8075442f847451c29a5a26f121a0602

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ef0156c6581e31c5006638b1d83c7decb775b880` · SHA-256 `bbef4921a84f768ce217e3058663558ea8075442f847451c29a5a26f121a0602`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Moritz Doll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Moritz Doll
-/
import Mathlib.Tactic.Basic

/-!
# `rsuffices` tactic

The `rsuffices` tactic is an alternative version of `suffices`, that allows the usage
of any syntax that would be valid in an `obtain` block. This tactic just calls `obtain`
on the expression, and then `rotate_left`.
-/

namespace Mathlib.Tactic

/--
The `rsuffices` tactic is an alternative version of `suffices`, that allows the usage
of any syntax that would be valid in an `obtain` block. This tactic just calls `obtain`
on the expression, and then `rotate_left`.
-/
syntax (name := rsuffices) "rsuffices"
  (ppSpace Lean.Parser.Tactic.rcasesPatMed)? (" : " term)? (" := " term,+)? : tactic

macro_rules
| `(tactic| rsuffices $[$pred]? $[: $foo]? $[:= $bar]?) =>
`(tactic | (obtain $[$pred]? $[: $foo]? $[:= $bar]?; rotate_left))

end Mathlib.Tactic
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d6da8b36e368695e850067401410e4423887a1d243fe8fcbbfd2ba1230f4a5a1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RSuffices/Variantbbef4921a84f768ce217e3058663558ea8075442f847451c29a5a26f121a0602.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
