-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Iter.Variant57c2712359c7e45233f168f3a50608d820d1a731cd28151853e743a050524000","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"57c2712359c7e45233f168f3a50608d820d1a731cd28151853e743a050524000","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Iter.Variant57c2712359c7e45233f168f3a50608d820d1a731cd28151853e743a050524000","mathematical_subject":"Computation.DataStructures","original_sha256":"57c2712359c7e45233f168f3a50608d820d1a731cd28151853e743a050524000","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/HashSet/Iterator.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Std.Data.HashMap.Iterator
public import Std.Data.HashSet.Basic
public import Std.Data.HashSet.Raw
import Init.Data.Iterators.Combinators.FilterMap

/-!
# Iterators on `HashSet` and `HashSet.Raw`
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Iter.Variant57c2712359c7e45233f168f3a50608d820d1a731cd28151853e743a050524000

namespace Std.HashSet.Raw

/--
Returns a finite iterator over the elements of a hash set.
The iterator yields the elements of the set in order and then terminates.

**Termination properties:**

* `Finite` instance: always
* `Productive` instance: always
-/
@[inline]
public def iter {α : Type u} (m : Raw α) :=
  (m.inner.inner.iter.map fun e => e.1 : Iter α)

end Std.HashSet.Raw

namespace Std.HashSet

@[inline, inherit_doc Raw.iter]
public def iter {α : Type u} [BEq α] [Hashable α] (m : HashSet α) :=
  (m.inner.inner.iter.map fun e => e.1 : Iter α)

end Std.HashSet
