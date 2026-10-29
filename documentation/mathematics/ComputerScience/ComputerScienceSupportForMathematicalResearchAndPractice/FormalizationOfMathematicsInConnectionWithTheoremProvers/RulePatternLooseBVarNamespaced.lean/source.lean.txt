-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ScalarTy.Variantde0b8004b7624a2247a32063b1a3d50f887af0d0ada0e4ce0194cdb8f806ae13","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"de0b8004b7624a2247a32063b1a3d50f887af0d0ada0e4ce0194cdb8f806ae13","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ScalarTy.Variantde0b8004b7624a2247a32063b1a3d50f887af0d0ada0e4ce0194cdb8f806ae13","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"de0b8004b7624a2247a32063b1a3d50f887af0d0ada0e4ce0194cdb8f806ae13","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/RulePatternLooseBVar.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Son Ho. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Son Ho, Jannis Limperg
-/

-- A regression test for a bug in rule pattern matching. Thanks to Son Ho for
-- the bug report.

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ScalarTy.Variantde0b8004b7624a2247a32063b1a3d50f887af0d0ada0e4ce0194cdb8f806ae13

inductive ScalarTy
| U32

@[simp]
def U32.min   : Int  := 0
def U32.max   : Int  := 4294967295

def Scalar.min (ty : ScalarTy) : Int :=
  match ty with
  | .U32   => U32.min

def Scalar.max (ty : ScalarTy) : Int :=
  match ty with
  | .U32   => U32.max

structure Scalar (ty : ScalarTy) where
  val : Int
  hmin : Scalar.min ty ≤ val
  hmax : val ≤ Scalar.max ty

@[reducible] def U32   := Scalar .U32

def Scalar.ofIntCore {ty : ScalarTy} (x : Int)
  (h : Scalar.min ty ≤ x ∧ x ≤ Scalar.max ty) : Scalar ty :=
  { val := x, hmin := h.left, hmax := h.right }

def U32.ofIntCore   := @Scalar.ofIntCore .U32

@[aesop safe forward (pattern := x)]
theorem Scalar.bounds {ty : ScalarTy} (x : Scalar ty) :
  Scalar.min ty ≤ x.val ∧ x.val ≤ Scalar.max ty :=
  And.intro x.hmin x.hmax

/--
error: unsolved goals
x : Int
h0 : 0 ≤ x
h1 : x ≤ U32.max
fwd : Scalar.min ScalarTy.U32 ≤ (U32.ofIntCore x ⋯).val ∧ (U32.ofIntCore x ⋯).val ≤ Scalar.max ScalarTy.U32
⊢ (U32.ofIntCore x ⋯).val ≤ U32.max
-/
#guard_msgs in
example (x : Int) (h0 : 0 ≤ x) (h1 : x ≤ U32.max) :
  (U32.ofIntCore x
    (⟨Eq.mp (congrArg (fun x_1 => x_1 ≤ x) rfl) h0, h1⟩)).val ≤ U32.max := by
  saturate
