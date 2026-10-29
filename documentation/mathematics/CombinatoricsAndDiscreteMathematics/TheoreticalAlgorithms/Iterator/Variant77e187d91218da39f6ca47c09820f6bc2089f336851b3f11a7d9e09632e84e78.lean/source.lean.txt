-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Iter.Variant0cfcef6b2d4faf54dcd7cf74745a5a8b322eb4d4677dcdfebe5f9ed7891e1d15","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0cfcef6b2d4faf54dcd7cf74745a5a8b322eb4d4677dcdfebe5f9ed7891e1d15","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Iter.Variant0cfcef6b2d4faf54dcd7cf74745a5a8b322eb4d4677dcdfebe5f9ed7891e1d15","mathematical_subject":"Computation.DataStructures","original_sha256":"0cfcef6b2d4faf54dcd7cf74745a5a8b322eb4d4677dcdfebe5f9ed7891e1d15","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/HashMap/Iterator.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Std.Data.DHashMap.Iterator
public import Std.Data.HashMap.Basic
public import Std.Data.HashMap.Raw
import Init.Data.Iterators.Combinators.FilterMap

/-!
# Iterators on `HashMap` and `HashMap.Raw`
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Iter.Variant0cfcef6b2d4faf54dcd7cf74745a5a8b322eb4d4677dcdfebe5f9ed7891e1d15

namespace Std.HashMap.Raw

/--
Returns a finite iterator over the entries of a hash map.
The iterator yields the elements of the map in order and then terminates.

**Termination properties:**

* `Finite` instance: always
* `Productive` instance: always
-/
@[inline]
public def iter {α : Type u} {β : Type v} (m : Raw α β) :=
  (m.inner.iter.map fun e => (e.1, e.2) : Iter (α × β))

/--
Returns a finite iterator over the keys of a hash map.
The iterator yields the keys in order and then terminates.

The key and value types must live in the same universe.

**Termination properties:**

* `Finite` instance: always
* `Productive` instance: always
-/
@[inline]
public def keysIter {α : Type u} {β : Type u} (m : Raw α β) :=
  (m.inner.keysIter : Iter α)

/--
Returns a finite iterator over the values of a hash map.
The iterator yields the values in order and then terminates.

The key and value types must live in the same universe.

**Termination properties:**

* `Finite` instance: always
* `Productive` instance: always
-/
@[inline]
public def valuesIter {α : Type u} {β : Type u} (m : Raw α β) :=
  (m.inner.valuesIter : Iter β)

end Std.HashMap.Raw

namespace Std.HashMap

@[inline, inherit_doc Raw.iter]
public def iter {α : Type u} {β : Type v} [BEq α] [Hashable α] (m : HashMap α β) :=
  (m.inner.iter.map fun e => (e.1, e.2) : Iter (α × β))

@[inline, inherit_doc Raw.iter]
public def keysIter {α : Type u} {β : Type u} [BEq α] [Hashable α] (m : HashMap α β) :=
  (m.1.keysIter : Iter α)

@[inline, inherit_doc Raw.iter]
public def valuesIter {α : Type u} {β : Type u} [BEq α] [Hashable α] (m : HashMap α β) :=
  (m.inner.valuesIter : Iter β)

end Std.HashMap
