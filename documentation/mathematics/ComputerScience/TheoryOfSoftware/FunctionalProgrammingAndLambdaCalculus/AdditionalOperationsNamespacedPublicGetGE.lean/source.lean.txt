-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetGE.Variant105ec49e11b3bd2b31045f7910cce3e44a2b5ce2c77911bceb955aea4d9f1b2e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"105ec49e11b3bd2b31045f7910cce3e44a2b5ce2c77911bceb955aea4d9f1b2e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.GetGE.Variant105ec49e11b3bd2b31045f7910cce3e44a2b5ce2c77911bceb955aea4d9f1b2e","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"105ec49e11b3bd2b31045f7910cce3e44a2b5ce2c77911bceb955aea4d9f1b2e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/TreeSet/AdditionalOperations.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Std.Data.TreeSet.Raw.Basic
public import Std.Data.TreeMap.AdditionalOperations


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetGE.Variant105ec49e11b3bd2b31045f7910cce3e44a2b5ce2c77911bceb955aea4d9f1b2e

@[expose] public section

/-!
# Additional tree set operations

This file defines more operations on `Std.TreeSet`.
We currently do not provide lemmas for these functions.
-/

set_option autoImplicit false
set_option linter.missingDocs true

universe u v w

variable {α : Type u} {β : Type v} {cmp : α → α → Ordering}

namespace Std.TreeSet

/-!
We do not provide `get*GE`, `get*GT`, `get*LE` and `get*LT` functions for the raw trees.
-/

/--
Given a proof that such an element exists, retrieves the smallest element that is
greater than or equal to the given element.
-/
@[inline]
def getGE [TransCmp cmp] (t : TreeSet α cmp) (k : α) (h : ∃ a ∈ t, (cmp a k).isGE) : α :=
  TreeMap.getKeyGE t.inner k h

/--
Given a proof that such an element exists, retrieves the smallest element that is
greater than the given element.
-/
@[inline]
def getGT [TransCmp cmp] (t : TreeSet α cmp) (k : α) (h : ∃ a ∈ t, cmp a k = .gt) : α :=
  TreeMap.getKeyGT t.inner k h

/--
Given a proof that such an element exists, retrieves the largest element that is
less than or equal to the given element.
-/
@[inline]
def getLE [TransCmp cmp] (t : TreeSet α cmp) (k : α) (h : ∃ a ∈ t, (cmp a k).isLE) : α :=
  TreeMap.getKeyLE t.inner k h

/--
Given a proof that such an element exists, retrieves the smallest element that is
less than the given element.
-/
@[inline]
def getLT [TransCmp cmp] (t : TreeSet α cmp) (k : α) (h : ∃ a ∈ t, cmp a k = .lt) : α :=
  TreeMap.getKeyLT t.inner k h

end Std.TreeSet
