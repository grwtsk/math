# List Public Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2c93ebd32f21a9b3fe5061ffc4ac8e785ecfef38` · SHA-256 `715b6805a47990be9c0a48d8a18571973f25976742857bca02ba8a128ad20b0e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public import Lean.Meta.Tactic.Simp.BuiltinSimprocs.Nat

public section

namespace List
open Lean Meta Simp

/-- Simplification procedure for `List.replicate` applied to a `Nat` literal. -/
-- We don't always want `List.replicate_succ` as a `simp` lemma,
-- so we use this `dsimproc` to unfold `List.replicate` applied to literals.
builtin_dsimproc [simp, seval] reduceReplicate (replicate _ _) := fun e => do
  let_expr replicate α n x ← e | return .continue
  let some n ← Nat.fromExpr? n | return .continue
  return .done <| (← mkListLit α (List.replicate n x))

end List
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6e77cb3e2156fe023ecc8134d398971417fbf7f3b1585ba2c2ce11359b31f03b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant715b6805a47990be9c0a48d8a18571973f25976742857bca02ba8a128ad20b0e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
