# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.While.Variant9725e34b4d9443115a35567dfb4aa94aef215c9c6f338403ab1336f1201023a8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `43684cdcedec42a09fcc17a8384a295adf02893c` · SHA-256 `4b7845040c834830bffc585f66e2466e071572269ddf4311b1872d9d4d0cdcb5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RepeatMBodyMonotoneOfMonadTail.Variant8c27ec6907a7ba90b367b86a20830a001c61d85099be0853f010928e9fb90f80","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8c27ec6907a7ba90b367b86a20830a001c61d85099be0853f010928e9fb90f80","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RepeatMBodyMonotoneOfMonadTail.Variant8c27ec6907a7ba90b367b86a20830a001c61d85099be0853f010928e9fb90f80","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"8c27ec6907a7ba90b367b86a20830a001c61d85099be0853f010928e9fb90f80","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Internal/Order/While.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Graf
-/
module

prelude
public import Init.While
import all Init.While
public import Init.Internal.Order.MonadTail


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RepeatMBodyMonotoneOfMonadTail.Variant8c27ec6907a7ba90b367b86a20830a001c61d85099be0853f010928e9fb90f80

set_option linter.missingDocs true

/-!
# Order-theoretic unfolding for `repeatM`

This module exposes the user-facing one-step unfolding lemma `repeatM_eq_of_monadTail`,
which holds for any monad with a `Lean.Order.MonadTail` instance. It works by exhibiting
the order-theoretic least fixed point `Lean.Order.fix (repeatM.body f)` and feeding it to
the module-internal `repeatM_eq`.

The lemma does not appear in `Init.While` itself to keep that module's import closure
small; clients that want to unfold `repeatM`/`Loop.forIn` should import this file.
-/

variable {α : Type u} {m : Type u → Type v} [Monad m]

/-- `repeatM.body f` is monotone in its `recur` argument whenever `m` admits `MonadTail`. -/
private theorem repeatM.body_monotone_of_monadTail [Lean.Order.MonadTail m] [Nonempty β]
    (f : α → m (α ⊕ β)) :
    Lean.Order.monotone (repeatM.body f) :=
  fun _ _ h _ => Lean.Order.MonadTail.bind_mono_right fun
    | .inl a' => h a'
    | .inr _ => Lean.Order.PartialOrder.rel_refl

/-- One-step unfolding of `repeatM` for any `MonadTail m`. -/
public theorem repeatM_eq_of_monadTail [Lean.Order.MonadTail m] [Nonempty β]
    {f : α → m (α ⊕ β)} (a : α) :
    repeatM f a = repeatM.body f (repeatM f) a :=
  have hMono := repeatM.body_monotone_of_monadTail f
  repeatM_eq a ⟨Lean.Order.fix (repeatM.body f) hMono, (Lean.Order.fix_eq hMono).symm⟩

namespace Lean

/-- One-step unfolding of `Lean.Loop.forIn` for any `MonadTail m`. -/
public theorem Loop.forIn_eq_of_monadTail [LawfulMonad m] [Lean.Order.MonadTail m]
    {l : Loop} {b : β} {f : Unit → β → m (ForInStep β)} :
    Loop.forIn l b f = (do
      match ← f () b with
      | .done val => pure val
      | .yield val => Loop.forIn l val f) := by
  haveI : Nonempty β := ⟨b⟩
  show repeatM _ b = _
  rw [repeatM_eq_of_monadTail]; unfold repeatM.body; rw [bind_assoc]
  exact bind_congr fun
    | .done _  => by simp
    | .yield _ => by simp [Loop.forIn]

end Lean
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2d01f36f778b820732cbf945182882c267e36b3b7359ea89e962677b50d1c64f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/While/Variant9725e34b4d9443115a35567dfb4aa94aef215c9c6f338403ab1336f1201023a8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
