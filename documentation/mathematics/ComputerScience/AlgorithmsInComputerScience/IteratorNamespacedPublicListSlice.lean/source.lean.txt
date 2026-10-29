-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ListSliceInstToIterator.Variant4393afea9c3d45181cc35c97013b3fda86651bae5f9dabdf7e34a776c4610d3d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4393afea9c3d45181cc35c97013b3fda86651bae5f9dabdf7e34a776c4610d3d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ListSliceInstToIterator.Variant4393afea9c3d45181cc35c97013b3fda86651bae5f9dabdf7e34a776c4610d3d","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"4393afea9c3d45181cc35c97013b3fda86651bae5f9dabdf7e34a776c4610d3d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Slice/List/Iterator.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Slice.List.Basic
public import Init.Data.Iterators.Producers.List
public import Init.Data.Iterators.Combinators.Take
import all Init.Data.Range.Polymorphic.Basic
public import Init.Data.Slice.Operations
public import Init.Data.ToString.Extra


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ListSliceInstToIterator.Variant4393afea9c3d45181cc35c97013b3fda86651bae5f9dabdf7e34a776c4610d3d

public section

/-!
This module implements an iterator for list slices.
-/

open Std Slice PRange Iterators

variable {α : Type u}

@[inline, expose, instance_reducible]
def ListSlice.instToIterator :=
  ToIterator.of (γ := Slice (Internal.ListSliceData α)) _ (fun s => match s.internalRepresentation.stop with
      | some n => s.internalRepresentation.list.iter.take n
      | none => s.internalRepresentation.list.iter.toTake)
attribute [instance] ListSlice.instToIterator

universe v w

instance : SliceSize (Internal.ListSliceData α) where
  size s := (Internal.iter s).length

@[no_expose]
instance {α : Type u} {m : Type v → Type w} [Monad m] :
    ForIn m (ListSlice α) α where
  forIn xs init f := forIn (Internal.iter xs) init f

namespace List

instance : Append (ListSlice α) where
  append x y :=
   let a := x.toList ++ y.toList
   a.toSlice 0 a.length

/-- `ListSlice` representation. -/
protected def ListSlice.repr [Repr α] (s : ListSlice α) : Std.Format :=
  let xs := s.toList
  repr xs ++ ".toSlice 0 " ++ toString xs.length

instance [Repr α] : Repr (ListSlice α) where
  reprPrec s  _ := ListSlice.repr s

instance [ToString α] : ToString (ListSlice α) where
  toString s := toString s.toArray

end List
