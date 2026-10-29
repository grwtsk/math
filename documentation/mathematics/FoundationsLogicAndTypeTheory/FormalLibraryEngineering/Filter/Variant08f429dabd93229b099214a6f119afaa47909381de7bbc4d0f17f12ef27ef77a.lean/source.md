# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Filter.Variant08f429dabd93229b099214a6f119afaa47909381de7bbc4d0f17f12ef27ef77a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e9ba38d31a39919a216214010f76f2c23d623e7` · SHA-256 `08f429dabd93229b099214a6f119afaa47909381de7bbc4d0f17f12ef27ef77a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Elab.Tactic.Grind.Basic
public import Lean.Meta.Tactic.Grind.Filter
namespace Lean.Elab.Tactic.Grind
open Meta Lean.Meta.Grind

public partial def elabFilter (filter? : Option (TSyntax `grind_filter)) : GrindTacticM Filter := do
  let some filter := filter? | return .true
  go filter
where
  go (filter : TSyntax `grind_filter) : GrindTacticM Filter := do
    match filter with
    | `(grind_filter| $id:ident) =>
      match (← Term.resolveId? id) with
      | some (.const declName _) => return .const declName
      | some (.fvar fvarId) => return .fvar fvarId
      | _ => throwErrorAt id "invalid identifier"
    | `(grind_filter| $a:grind_filter && $b:grind_filter) => return .and (← go a) (← go b)
    | `(grind_filter| $a:grind_filter || $b:grind_filter) => return .or (← go a) (← go b)
    | `(grind_filter| ! $a:grind_filter) => return .not (← go a)
    | `(grind_filter| ($a:grind_filter)) => go a
    | `(grind_filter| gen = $n:num)  => let n := n.getNat; return .gen fun x => x == n
    | `(grind_filter| gen > $n:num)  => let n := n.getNat; return .gen fun x => x > n
    | `(grind_filter| gen ≥ $n:num)  => let n := n.getNat; return .gen fun x => x ≥ n
    | `(grind_filter| gen >= $n:num) => let n := n.getNat; return .gen fun x => x ≥ n
    | `(grind_filter| gen ≤ $n:num)  => let n := n.getNat; return .gen fun x => x ≤ n
    | `(grind_filter| gen <= $n:num) => let n := n.getNat; return .gen fun x => x ≤ n
    | `(grind_filter| gen < $n:num)  => let n := n.getNat; return .gen fun x => x < n
    | `(grind_filter| gen != $n:num) => let n := n.getNat; return .gen fun x => x != n
    | _ => throwUnsupportedSyntax

end Lean.Elab.Tactic.Grind
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=693eb33c0c423056df4d13f67d6b327b7a98f7346a60b9652f6860a2cce891d1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Filter/Variant08f429dabd93229b099214a6f119afaa47909381de7bbc4d0f17f12ef27ef77a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
