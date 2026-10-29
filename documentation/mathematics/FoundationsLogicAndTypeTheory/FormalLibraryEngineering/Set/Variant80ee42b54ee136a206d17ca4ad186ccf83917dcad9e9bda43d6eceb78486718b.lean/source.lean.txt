-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterMToHashSetEqFold.Variantd1fbb512558749d008c6f54d30d5e84c69aaa5127af8e7f20f18e9ab101c492e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d1fbb512558749d008c6f54d30d5e84c69aaa5127af8e7f20f18e9ab101c492e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IterMToHashSetEqFold.Variantd1fbb512558749d008c6f54d30d5e84c69aaa5127af8e7f20f18e9ab101c492e","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"d1fbb512558749d008c6f54d30d5e84c69aaa5127af8e7f20f18e9ab101c492e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/Iterators/Lemmas/Consumers/Monadic/Set.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

prelude
public import Std.Data.Iterators.Consumers.Monadic.Set
public import Init.Data.Iterators.Consumers.Monadic.Collect
import all Std.Data.Iterators.Consumers.Monadic.Set
import Init.Data.Iterators.Lemmas.Consumers.Monadic.Loop
import Std.Data.ExtHashSet.Lemmas
import Std.Data.ExtTreeSet.Lemmas


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IterMToHashSetEqFold.Variantd1fbb512558749d008c6f54d30d5e84c69aaa5127af8e7f20f18e9ab101c492e

public section

namespace Std
open Iterators

theorem IterM.toHashSet_eq_fold {α β : Type w} {_ : BEq β} {_ : Hashable β} {m : Type w → Type w'}
    [Monad m] [Iterator α m β] [IteratorLoop α m m] {it : IterM (α := α) m β} :
    it.toHashSet = it.fold (init := ∅) fun acc a => acc.insert a := (rfl)

@[simp]
theorem IterM.toExtHashSet_eq_ofList {α β : Type w} {_ : BEq β} {_ : Hashable β} [EquivBEq β]
    [LawfulHashable β] {m : Type w → Type w'} [Monad m] [LawfulMonad m] [Iterator α m β]
    [Finite α m] [IteratorLoop α m m] [LawfulIteratorLoop α m m] {it : IterM (α := α) m β} :
    it.toExtHashSet = ExtHashSet.ofList <$> it.toList := by
  simp only [toExtHashSet, ← foldl_toList, ← ExtHashSet.ofList_eq_foldl]

theorem IterM.toTreeSet_eq_fold {α β : Type w} {m : Type w → Type w'} [Monad m]
    [Iterator α m β] [IteratorLoop α m m] {it : IterM (α := α) m β} {cmp : β → β → Ordering} :
    it.toTreeSet cmp = it.fold (init := ∅) fun acc a => acc.insert a := (rfl)

@[simp]
theorem IterM.toExtTreeSet_eq_ofList {α β : Type w} {m : Type w → Type w'} [Monad m] [LawfulMonad m]
    [Iterator α m β] [Finite α m] [IteratorLoop α m m] [LawfulIteratorLoop α m m]
    {it : IterM (α := α) m β} {cmp : β → β → Ordering} [TransCmp cmp] :
    it.toExtTreeSet cmp = (ExtTreeSet.ofList · cmp) <$> it.toList := by
  simp only [toExtTreeSet, ← foldl_toList, ← ExtTreeSet.ofList_eq_foldl]

end Std
