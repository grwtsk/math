-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.PRangeSucc.Variant9ac365898cd186f08916b9395fd8ce6b740e55157125de2f8f7591f7dcfa68ec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9ac365898cd186f08916b9395fd8ce6b740e55157125de2f8f7591f7dcfa68ec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.PRangeSucc.Variant9ac365898cd186f08916b9395fd8ce6b740e55157125de2f8f7591f7dcfa68ec","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"9ac365898cd186f08916b9395fd8ce6b740e55157125de2f8f7591f7dcfa68ec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Range/Polymorphic/Char.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Markus Himmel
-/
module

prelude
public import Init.Data.Char.Ordinal
public import Init.Data.Range.Polymorphic.Fin
import Init.Data.Range.Polymorphic.Map
import Init.Data.Char.Order
import Init.Data.Fin.Lemmas
import Init.Data.Option.Lemmas


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.PRangeSucc.Variant9ac365898cd186f08916b9395fd8ce6b740e55157125de2f8f7591f7dcfa68ec

open Std Std.PRange Std.PRange.UpwardEnumerable

namespace Char

public instance : UpwardEnumerable Char where
  succ?
  succMany?

@[simp]
public theorem pRangeSucc?_eq : PRange.succ? (α := Char) = Char.succ? := rfl

@[simp]
public theorem pRangeSuccMany?_eq : PRange.succMany? (α := Char) = Char.succMany? := rfl

public instance : Rxc.HasSize Char where
  size lo hi := Rxc.HasSize.size lo.ordinal hi.ordinal

public instance : Rxo.HasSize Char where
  size lo hi := Rxo.HasSize.size lo.ordinal hi.ordinal

public instance : Rxi.HasSize Char where
  size hi := Rxi.HasSize.size hi.ordinal

public instance : Least? Char where
  least? := some '\x00'

@[simp]
public theorem least?_eq : Least?.least? (α := Char) = some '\x00' := rfl

def map : Map Char (Fin Char.numCodePoints) where
  toFun := Char.ordinal
  injective := ordinal_injective
  succ?_toFun := by simp [succ?_eq]
  succMany?_toFun := by simp [succMany?_eq]

@[simp]
theorem toFun_map : map.toFun = Char.ordinal := rfl

instance : Map.PreservesLE map where
  le_iff := by simp [le_iff_ordinal_le]

instance : Map.PreservesRxcSize map where
  size_eq := rfl

instance : Map.PreservesRxoSize map where
  size_eq := rfl

instance : Map.PreservesRxiSize map where
  size_eq := rfl

instance : Map.PreservesLeast? map where
  map_least? := by simp

public instance : LawfulUpwardEnumerable Char := .ofMap map
public instance : LawfulUpwardEnumerableLE Char := .ofMap map
public instance : LawfulUpwardEnumerableLT Char := .ofMap map
public instance : LawfulUpwardEnumerableLeast? Char := .ofMap map
public instance : Rxc.LawfulHasSize Char := .ofMap map
public instance : Rxc.IsAlwaysFinite Char := .ofMap map
public instance : Rxo.LawfulHasSize Char := .ofMap map
public instance : Rxo.IsAlwaysFinite Char := .ofMap map
public instance : Rxi.LawfulHasSize Char := .ofMap map
public instance : Rxi.IsAlwaysFinite Char := .ofMap map

end Char
