# Instances Public To — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5b7d184b993200a52249eed5eefc461e6316987a` · SHA-256 `c1b0620dc1e286b8b5d82beb6e93e7f781bcb8800920a0bc1246718331b2b31c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Graf
-/
module

prelude
public import Std.Internal.Do.Order.Lemmas

public section

/-!
# Algebraic typeclass instances for `CompleteLattice`

The order `⊑` is reflexive, transitive and antisymmetric, and meet and join are commutative,
associative and idempotent monoid operations with units `⊤` and `⊥`. These instances expose that
structure to the generic algebra in `Std` (`Std.Commutative`, `Std.Associative`, `Trans`, ...).
-/

namespace Std.Internal.Do.CompleteLattice

open Lean.Order PartialOrder

instance [CompleteLattice l] : Std.Refl (α := l) (· ⊑ ·) := ⟨fun _ => rel_refl⟩
instance [CompleteLattice l] : Trans (· ⊑ · : l → l → Prop) (· ⊑ ·) (· ⊑ ·) := ⟨rel_trans⟩
instance [CompleteLattice l] : Std.Antisymm (α := l) (· ⊑ ·) := ⟨fun _ _ => rel_antisymm⟩

instance [CompleteLattice l] : Std.Commutative (α := l) (· ⊓ ·) := ⟨fun _ _ => meet_comm⟩
instance [CompleteLattice l] : Std.Commutative (α := l) (· ⊔ ·) := ⟨fun _ _ => join_comm⟩
instance [CompleteLattice l] : Std.Associative (α := l) (· ⊓ ·) := ⟨fun _ _ _ => meet_assoc⟩
instance [CompleteLattice l] : Std.Associative (α := l) (· ⊔ ·) := ⟨fun _ _ _ => join_assoc⟩
instance [CompleteLattice l] : Std.IdempotentOp (α := l) (· ⊓ ·) := ⟨fun _ => meet_self⟩
instance [CompleteLattice l] : Std.IdempotentOp (α := l) (· ⊔ ·) := ⟨fun _ => join_self⟩
instance [CompleteLattice l] : Std.LeftIdentity (· ⊓ ·) (⊤ : l) where
instance [CompleteLattice l] : Std.RightIdentity (· ⊓ ·) (⊤ : l) where
instance [CompleteLattice l] : Std.LeftIdentity (· ⊔ ·) (⊥ : l) where
instance [CompleteLattice l] : Std.RightIdentity (· ⊔ ·) (⊥ : l) where
instance [CompleteLattice l] : Std.LawfulIdentity (· ⊓ ·) (⊤ : l) where
  left_id _ := top_meet
  right_id _ := meet_top
instance [CompleteLattice l] : Std.LawfulIdentity (· ⊔ ·) (⊥ : l) where
  left_id _ := bot_join
  right_id _ := join_bot

end Std.Internal.Do.CompleteLattice
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=23e2e081f1c8035f52fec17e8fd06fff3ad6a434b8e52957e504b89614a0a54c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Instances/Variantc1b0620dc1e286b8b5d82beb6e93e7f781bcb8800920a0bc1246718331b2b31c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
