-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.InternalIterEqToIteratorIter.Variant680c306f305600e6e44b4c088738cf1fd2701c838f6bbaf66de3e0200665a21d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"680c306f305600e6e44b4c088738cf1fd2701c838f6bbaf66de3e0200665a21d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.InternalIterEqToIteratorIter.Variant680c306f305600e6e44b4c088738cf1fd2701c838f6bbaf66de3e0200665a21d","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"680c306f305600e6e44b4c088738cf1fd2701c838f6bbaf66de3e0200665a21d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Slice/InternalLemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Slice.Operations
import all Init.Data.Slice.Operations
public import Init.Data.Iterators.Consumers.Collect
import Init.Data.Iterators.Lemmas.Consumers
import Init.Data.List.Control


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.InternalIterEqToIteratorIter.Variant680c306f305600e6e44b4c088738cf1fd2701c838f6bbaf66de3e0200665a21d

public section

namespace Std.Slice

open Std Std.Iterators

variable {γ : Type u} {α β : Type v}

theorem Internal.iter_eq_toIteratorIter {γ : Type u}
    [ToIterator (Slice γ) Id α β] {s : Slice γ} :
    Internal.iter s = ToIterator.iter s :=
  (rfl)

theorem Internal.forIn_iter {γ : Type u} {β : Type v}
    {m : Type w → Type x} [Monad m] {δ : Type w}
    [ToIterator (Slice γ) Id α β]
    [Iterator α Id β] [IteratorLoop α Id m]
    {s : Slice γ}
    {init : δ} {f : β → δ → m (ForInStep δ)} :
    ForIn.forIn (Internal.iter s) init f = ForIn.forIn s init f :=
  (rfl)

theorem Internal.size_eq_length_iter [ToIterator (Slice γ) Id α β]
    [Iterator α Id β] [Finite α Id]
    [IteratorLoop α Id Id] [LawfulIteratorLoop α Id Id]
    {s : Slice γ} [SliceSize γ] [LawfulSliceSize γ] :
    s.size = (Internal.iter s).length := by
  simp only [Slice.size, iter, LawfulSliceSize.lawful, ← Iter.length_toList_eq_length]

theorem Internal.toArray_eq_toArray_iter {s : Slice γ} [ToIterator (Slice γ) Id α β]
    [Iterator α Id β]
    [Finite α Id] :
    s.toArray = (Internal.iter s).toArray :=
  (rfl)

theorem Internal.toList_eq_toList_iter {s : Slice γ} [ToIterator (Slice γ) Id α β]
    [Iterator α Id β]
    [Finite α Id] :
    s.toList = (Internal.iter s).toList :=
  (rfl)

theorem Internal.toListRev_eq_toListRev_iter {s : Slice γ} [ToIterator (Slice γ) Id α β]
    [Iterator α Id β] [Finite α Id] :
    s.toListRev = (Internal.iter s).toListRev :=
  (rfl)

theorem Internal.fold_iter [ToIterator (Slice γ) Id α β]
    [Iterator α Id β] [IteratorLoop α Id Id] [Iterators.Finite α Id] {s : Slice γ} :
    (Internal.iter s).fold (init := init) f = s.foldl (init := init) f := by
  rfl

theorem Internal.foldM_iter {m : Type w → Type w'} [Monad m] [ToIterator (Slice γ) Id α β]
    [Iterator α Id β] [IteratorLoop α Id m] [Iterators.Finite α Id] {s : Slice γ} {f : δ → β → m δ} :
    (Internal.iter s).foldM (init := init) f = s.foldlM (init := init) f := by
  rfl
