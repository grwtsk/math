# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RecursiveUnfoldRule.Variantf0fa3f3d1f57f980634218af1074c043732aabc8e11f0e6464a6eadf63c5bb3b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e70ee45b7e960df7446a757c5e97375f96a79041` · SHA-256 `f0fa3f3d1f57f980634218af1074c043732aabc8e11f0e6464a6eadf63c5bb3b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true

-- We forbid `unfold` rules for recursive functions since they would lead to
-- infinite unfolding.

@[aesop norm unfold]
def f₁ : Nat → Nat :=
  λ _ => 0

/--
error: Recursive definition 'f₂' cannot be used as an unfold rule (it would be unfolded infinitely often). Try adding a simp rule for it.
-/
#guard_msgs in
@[aesop norm unfold]
def f₂ : Nat → Nat
  | 0 => 0
  | n + 1 => f₂ n

/--
error: Recursive definition 'f₃' cannot be used as an unfold rule (it would be unfolded infinitely often). Try adding a simp rule for it.
-/
#guard_msgs in
@[aesop norm unfold]
def f₃ : Nat → Nat :=
  λ n =>
    match n with
    | 0 => 0
    | n + 1 => f₃ n


/--
error: Recursive definition 'f₄' cannot be used as an unfold rule (it would be unfolded infinitely often). Try adding a simp rule for it.
-/
#guard_msgs in
@[aesop norm unfold]
def f₄ : Nat → Nat
  | 0 => 0
  | n + 1 => f₄ n

-- A limitation of our approach to checking for recursive `unfold` rules:
-- mutually recursive rules are not detected. But that's probably fine in
-- practice.

mutual
  @[aesop norm unfold]
  def f₅ : Nat → Nat
    | 0 => 0
    | n + 1 => f₆ n

  @[aesop norm unfold]
  def f₆ : Nat → Nat
    | 0 => 0
    | n + 1 => f₅ n
end

-- We also forbid `unfold` rules for declarations that don't unfold.

/--
error: Declaration 'test' cannot be unfolded.
-/
#guard_msgs in
@[aesop norm unfold]
axiom test : Nat
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e1307d7a3e8ad5ae883efa688c20b80ddc903b9bac87855399120f090e6fb1c1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveUnfoldRule/Variantf0fa3f3d1f57f980634218af1074c043732aabc8e11f0e6464a6eadf63c5bb3b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
