-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkNatLookupTable.Variant377abb7c9a590d5f9871c2ae331fec24fe9b551cebef3679790f3689f425a98b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"377abb7c9a590d5f9871c2ae331fec24fe9b551cebef3679790f3689f425a98b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MkNatLookupTable.Variant377abb7c9a590d5f9871c2ae331fec24fe9b551cebef3679790f3689f425a98b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"377abb7c9a590d5f9871c2ae331fec24fe9b551cebef3679790f3689f425a98b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/NatTable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joachim Breitner
-/

module
prelude
public import Lean.Meta.Basic
import Lean.Meta.InferType
import Init.Omega


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkNatLookupTable.Variant377abb7c9a590d5f9871c2ae331fec24fe9b551cebef3679790f3689f425a98b

open Lean Meta

/-!
This module provides builder for efficient `Nat → …` functions based on binary decision trees.
-/

namespace Lean

/--
Builds an expression of type `Nat → $type` that returns the `es[i]`, using binary search.
The array must be non-empty.
-/
public def mkNatLookupTable (i : Expr) (type : Expr) (es : Array Expr) : MetaM Expr := do
  if h : es.size = 0 then
    panic! "mkNatLookupTable: expected non-empty array"
  else
    let u ← getLevel type
    let rec go (start stop : Nat) (hstart : start < stop := by omega) (hstop : stop ≤ es.size := by omega) : MetaM Expr := do
      if h : start + 1 = stop then
        return es[start]
      else
        let mid := (start + stop) / 2
        let low ← go start mid
        let high ← go mid stop
        return mkApp4 (mkConst ``cond [u]) type (mkApp2 (mkConst ``Nat.ble) i (mkRawNatLit (mid-1))) low high
    go 0 es.size

end Lean
