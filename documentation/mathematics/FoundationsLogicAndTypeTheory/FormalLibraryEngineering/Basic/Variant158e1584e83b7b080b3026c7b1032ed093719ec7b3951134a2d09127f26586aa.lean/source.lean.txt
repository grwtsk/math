-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LawfulMonadLift.Variantba156ce1e42bcba235810036e6850c7ba201ae6723c3e3e3276e1bedde29436b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ba156ce1e42bcba235810036e6850c7ba201ae6723c3e3e3276e1bedde29436b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.LawfulMonadLift.Variantba156ce1e42bcba235810036e6850c7ba201ae6723c3e3e3276e1bedde29436b","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"ba156ce1e42bcba235810036e6850c7ba201ae6723c3e3e3276e1bedde29436b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Control/Lawful/MonadLift/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Quang Dao. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Quang Dao
-/
module

prelude
public import Init.Notation


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LawfulMonadLift.Variantba156ce1e42bcba235810036e6850c7ba201ae6723c3e3e3276e1bedde29436b

public section

/-!
# LawfulMonadLift and LawfulMonadLiftT

This module provides classes asserting that `MonadLift` and `MonadLiftT` are lawful, which means
that `monadLift` is compatible with `pure` and `bind`.
-/

section MonadLift

/-- The `MonadLift` typeclass only contains the lifting operation. `LawfulMonadLift` further
  asserts that lifting commutes with `pure` and `bind`:
```
monadLift (pure a) = pure a
monadLift (ma >>= f) = monadLift ma >>= monadLift ∘ f
```
-/
class LawfulMonadLift (m : semiOutParam (Type u → Type v)) (n : Type u → Type w)
    [Monad m] [Monad n] [inst : MonadLift m n] : Prop where
  /-- Lifting preserves `pure` -/
  monadLift_pure {α : Type u} (a : α) : inst.monadLift (pure a) = pure a
  /-- Lifting preserves `bind` -/
  monadLift_bind {α β : Type u} (ma : m α) (f : α → m β) :
    inst.monadLift (ma >>= f) = inst.monadLift ma >>= (fun x => inst.monadLift (f x))

/-- The `MonadLiftT` typeclass only contains the transitive lifting operation.
  `LawfulMonadLiftT` further asserts that lifting commutes with `pure` and `bind`:
```
monadLift (pure a) = pure a
monadLift (ma >>= f) = monadLift ma >>= monadLift ∘ f
```
-/
class LawfulMonadLiftT (m : Type u → Type v) (n : Type u → Type w) [Monad m] [Monad n]
    [inst : MonadLiftT m n] : Prop where
  /-- Lifting preserves `pure` -/
  monadLift_pure {α : Type u} (a : α) : inst.monadLift (pure a) = pure a
  /-- Lifting preserves `bind` -/
  monadLift_bind {α β : Type u} (ma : m α) (f : α → m β) :
    inst.monadLift (ma >>= f) = monadLift ma >>= (fun x => monadLift (f x))

export LawfulMonadLiftT (monadLift_pure monadLift_bind)

end MonadLift
