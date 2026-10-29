-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ZipWithIndex.Variante2ac8a0fa95a3b7f87408d8e52fb73e7a647d3209ae2857798edc65c39fd0d6b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e2ac8a0fa95a3b7f87408d8e52fb73e7a647d3209ae2857798edc65c39fd0d6b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ZipWithIndex.Variante2ac8a0fa95a3b7f87408d8e52fb73e7a647d3209ae2857798edc65c39fd0d6b","mathematical_subject":"Computation.DataStructures","original_sha256":"e2ac8a0fa95a3b7f87408d8e52fb73e7a647d3209ae2857798edc65c39fd0d6b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Data/Array/Init/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/

/-!
## Bootstrapping definitions about arrays

This file contains some definitions in `Array` needed for `Std.List.Basic`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ZipWithIndex.Variante2ac8a0fa95a3b7f87408d8e52fb73e7a647d3209ae2857798edc65c39fd0d6b

namespace Array

/-- Turns `#[a, b]` into `#[(a, 0), (b, 1)]`. -/
def zipWithIndex (arr : Array α) : Array (α × Nat) :=
  arr.mapIdx fun i a => (a, i)

/-- Like `as.toList ++ l`, but in a single pass. -/
@[inline] def toListAppend (as : Array α) (l : List α) : List α :=
  as.foldr List.cons l

/--
`ofFn f` with `f : Fin n → α` returns the list whose ith element is `f i`.
```
ofFn f = #[f 0, f 1, ... , f(n - 1)]
``` -/
def ofFn {n} (f : Fin n → α) : Array α := go 0 (mkEmpty n) where
  /-- Auxiliary for `ofFn`. `ofFn.go f i acc = acc ++ #[f i, ..., f(n - 1)]` -/
  go (i : Nat) (acc : Array α) : Array α :=
    if h : i < n then go (i+1) (acc.push (f ⟨i, h⟩)) else acc
termination_by _ => n - i

/-- The array `#[0, 1, ..., n - 1]`. -/
def range (n : Nat) : Array Nat :=
  n.fold (flip Array.push) #[]

/-- Turns `#[#[a₁, a₂, ⋯], #[b₁, b₂, ⋯], ⋯]` into `#[a₁, a₂, ⋯, b₁, b₂, ⋯]` -/
def flatten (arr : Array (Array α)) : Array α :=
  arr.foldl (init := #[]) fun acc a => acc.append a
