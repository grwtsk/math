-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CheckVars.Variantc1fbdd79e2fefb15243a756fa8c1886d5e1f360f327ef5653ba122cf21c7bb2a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c1fbdd79e2fefb15243a756fa8c1886d5e1f360f327ef5653ba122cf21c7bb2a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CheckVars.Variantc1fbdd79e2fefb15243a756fa8c1886d5e1f360f327ef5653ba122cf21c7bb2a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c1fbdd79e2fefb15243a756fa8c1886d5e1f360f327ef5653ba122cf21c7bb2a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Arith/CommRing/Inv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Arith.CommRing.RingM
import Lean.Meta.Sym.Arith.Poly

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CheckVars.Variantc1fbdd79e2fefb15243a756fa8c1886d5e1f360f327ef5653ba122cf21c7bb2a

public section
namespace Lean.Meta.Grind.Arith.CommRing

private def checkVars : RingM Unit := do
  let s ← getRing
  let mut num := 0
  for ({ expr }, var) in s.varMap do
    if h : var < s.vars.size then
      let expr' := s.vars[var]
      assert! isSameExpr expr expr'
    else
      unreachable!
    num := num + 1
  assert! s.vars.size == num

private def checkPoly (p : Poly) : RingM Unit := do
  assert! p.isSorted
  assert! p.checkCoeffs
  assert! p.checkNoUnitMon
  assert! !(p matches .num _)

private def checkBasis : RingM Unit := do
  let mut x := 0
  for c in (← getCommRing).basis do
    checkPoly c.p
    x := x + 1

private def checkQueue : RingM Unit := do
  for c in (← getCommRing).queue do
    checkPoly c.p

private def checkDiseqs : RingM Unit := do
  for c in (← getCommRing).diseqs do
    checkPoly c.d.p

private def checkRingInvs : RingM Unit := do
  checkVars
  checkBasis
  checkQueue
  checkDiseqs

def checkInvariants : GoalM Unit := do
  if (← isDebugEnabled) then
  for ringId in *...(← get').rings.size do
    RingM.run ringId do
      assert! (← getRingId) == ringId
      checkRingInvs

end Lean.Meta.Grind.Arith.CommRing
