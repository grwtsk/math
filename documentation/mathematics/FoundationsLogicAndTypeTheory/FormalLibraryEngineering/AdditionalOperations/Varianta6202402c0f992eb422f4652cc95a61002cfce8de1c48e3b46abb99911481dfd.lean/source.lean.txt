-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FilterMap.Variant0cf3bd3110ccc8e43ceee5ed9fb56619866d7658a8a602be69f28e8979e81225","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0cf3bd3110ccc8e43ceee5ed9fb56619866d7658a8a602be69f28e8979e81225","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.FilterMap.Variant0cf3bd3110ccc8e43ceee5ed9fb56619866d7658a8a602be69f28e8979e81225","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"0cf3bd3110ccc8e43ceee5ed9fb56619866d7658a8a602be69f28e8979e81225","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/TreeMap/AdditionalOperations.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Std.Data.TreeMap.Basic
public import Std.Data.TreeMap.Raw.Basic
public import Std.Data.DTreeMap.AdditionalOperations


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FilterMap.Variant0cf3bd3110ccc8e43ceee5ed9fb56619866d7658a8a602be69f28e8979e81225

@[expose] public section

/-!
# Additional tree map operations

This file defines more operations on `Std.TreeMap`.
We currently do not provide lemmas for these functions.
-/

set_option autoImplicit false
set_option linter.missingDocs true

universe u v w

variable {α : Type u} {β : Type v} {γ : Type w} {cmp : α → α → Ordering}

namespace Std.TreeMap

@[inline, inherit_doc DTreeMap.filterMap]
def filterMap (f : (a : α) → β → Option γ) (m : TreeMap α β cmp) : TreeMap α γ cmp :=
  ⟨m.inner.filterMap f⟩

@[inline, inherit_doc DTreeMap.map]
def map (f : α → β → γ) (t : TreeMap α β cmp) : TreeMap α γ cmp :=
  ⟨t.inner.map f⟩

@[inline, inherit_doc DTreeMap.Const.getEntryGE]
def getEntryGE [TransCmp cmp] (t : TreeMap α β cmp) (k : α) (h : ∃ a ∈ t, (cmp a k).isGE) :
    α × β :=
  DTreeMap.Const.getEntryGE t.inner k h

@[inline, inherit_doc DTreeMap.Const.getEntryGT]
def getEntryGT [TransCmp cmp] (t : TreeMap α β cmp) (k : α) (h : ∃ a ∈ t, cmp a k = .gt) :
    α × β :=
  DTreeMap.Const.getEntryGT t.inner k h

@[inline, inherit_doc DTreeMap.Const.getEntryLE]
def getEntryLE [TransCmp cmp] (t : TreeMap α β cmp) (k : α) (h : ∃ a ∈ t, (cmp a k).isLE) :
    α × β :=
  DTreeMap.Const.getEntryLE t.inner k h

@[inline, inherit_doc DTreeMap.Const.getEntryLT]
def getEntryLT [TransCmp cmp] (t : TreeMap α β cmp) (k : α) (h : ∃ a ∈ t, cmp a k = .lt) :
    α × β :=
  DTreeMap.Const.getEntryLT t.inner k h

@[inline, inherit_doc DTreeMap.getKeyGE]
def getKeyGE [TransCmp cmp] (t : TreeMap α β cmp) (k : α) (h : ∃ a ∈ t, (cmp a k).isGE) : α :=
  DTreeMap.getKeyGE t.inner k h

@[inline, inherit_doc DTreeMap.getKeyGT]
def getKeyGT [TransCmp cmp] (t : TreeMap α β cmp) (k : α) (h : ∃ a ∈ t, cmp a k = .gt) : α :=
  DTreeMap.getKeyGT t.inner k h

@[inline, inherit_doc DTreeMap.getKeyLE]
def getKeyLE [TransCmp cmp] (t : TreeMap α β cmp) (k : α) (h : ∃ a ∈ t, (cmp a k).isLE) : α :=
  DTreeMap.getKeyLE t.inner k h

@[inline, inherit_doc DTreeMap.getKeyLT]
def getKeyLT [TransCmp cmp] (t : TreeMap α β cmp) (k : α) (h : ∃ a ∈ t, cmp a k = .lt) : α :=
  DTreeMap.getKeyLT t.inner k h

end Std.TreeMap
