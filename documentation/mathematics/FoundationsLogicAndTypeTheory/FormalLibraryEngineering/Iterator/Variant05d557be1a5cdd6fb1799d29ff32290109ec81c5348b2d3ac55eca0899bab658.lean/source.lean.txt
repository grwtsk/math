-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iter.Variant87101fc07aa102f79036c92ebb4b9f301af0ebab75dd2342f65fdedefa6b23ac","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"87101fc07aa102f79036c92ebb4b9f301af0ebab75dd2342f65fdedefa6b23ac","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Iter.Variant87101fc07aa102f79036c92ebb4b9f301af0ebab75dd2342f65fdedefa6b23ac","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"87101fc07aa102f79036c92ebb4b9f301af0ebab75dd2342f65fdedefa6b23ac","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/DTreeMap/Raw/Iterator.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Std.Data.DTreeMap.Internal.Zipper
public import Std.Data.DTreeMap.Raw.Basic
import Init.Data.Iterators.Lemmas.Combinators.FilterMap

/-!
# Iterators on `DTreeMap.Raw`
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iter.Variant87101fc07aa102f79036c92ebb4b9f301af0ebab75dd2342f65fdedefa6b23ac

namespace Std.DTreeMap.Raw
open Std.Iterators

/--
Returns a finite iterator over the entries of a dependent tree map.
The iterator yields the elements of the map in order and then terminates.

**Termination properties:**

* `Finite` instance: always
* `Productive` instance: always
-/
@[inline]
public def iter {α : Type u} {β : α → Type v}
    {cmp : α → α → Ordering} (m : Raw α β cmp) :=
  (Internal.Zipper.iterOfTree m.inner : Iter ((a : α) × β a))

/--
Returns a finite iterator over the keys of a dependent tree map.
The iterator yields the keys in order and then terminates.

The key and value types must live in the same universe.

**Termination properties:**

* `Finite` instance: always
* `Productive` instance: always
-/
@[inline]
public def keysIter {α : Type u} {β : α → Type u}
    {cmp : α → α → Ordering} (m : Raw α β cmp) :=
  (m.iter.map fun e => e.1 : Iter α)

/--
Returns a finite iterator over the values of a tree map.
The iterator yields the values in order and then terminates.

The key and value types must live in the same universe.

**Termination properties:**

* `Finite` instance: always
* `Productive` instance: always
-/
@[inline]
public def valuesIter {α : Type u} {β : Type u}
    {cmp : α → α → Ordering} (m : Raw α (fun _ => β) cmp) :=
  (m.iter.map fun e => e.2 : Iter β)

@[simp]
public theorem toList_iter {cmp : α → α → Ordering} (m : Raw α β cmp) :
    (m.iter).toList = m.toList := by
  rw [iter, toList]
  apply Internal.Zipper.toList_iterOfTree

@[simp]
public theorem keysIter_toList {cmp : α → α → Ordering} (m : Raw α β cmp) :
    (m.keysIter).toList = m.keys := by
  rw [keysIter, keys, iter, ← Internal.Impl.map_fst_toList_eq_keys]
  rw [Iter.toList_map, Internal.Zipper.toList_iterOfTree]

@[simp]
public theorem valuesIter_toList {cmp : α → α → Ordering} (m : Raw α (fun _ => β) cmp) :
    (m.valuesIter).toList = m.values := by
  rw [valuesIter, values, iter, Internal.Impl.values_eq_map_snd, ← Internal.Impl.toList_eq_toListModel]
  rw [Iter.toList_map, Internal.Zipper.toList_iterOfTree]

end Std.DTreeMap.Raw
