-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetMaxOccs.Variant5232279d0b948ad4a2c133afee574d038d45c11c32052d4ba8de9ee3fce3a951","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5232279d0b948ad4a2c133afee574d038d45c11c32052d4ba8de9ee3fce3a951","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GetMaxOccs.Variant5232279d0b948ad4a2c133afee574d038d45c11c32052d4ba8de9ee3fce3a951","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5232279d0b948ad4a2c133afee574d038d45c11c32052d4ba8de9ee3fce3a951","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Compiler/LCNF/Simp/DefaultAlt.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Compiler.LCNF.Simp.SimpM


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetMaxOccs.Variant5232279d0b948ad4a2c133afee574d038d45c11c32052d4ba8de9ee3fce3a951

public section

namespace Lean.Compiler.LCNF
namespace Simp

/--
Return the alternative in `alts` whose body appears in most arms,
and the number of occurrences.
We use this function to decide whether to create a `.default` case
or not.
-/
private def getMaxOccs (alts : Array (Alt .pure)) : Alt .pure × Nat := Id.run do
  let mut maxAlt := alts[0]!
  let mut max    := getNumOccsOf alts 0
  for h : i in 1...alts.size do
    let curr := getNumOccsOf alts i
    if curr > max then
       maxAlt := alts[i]
       max    := curr
  return (maxAlt, max)
where
  /--
  Return the number of occurrences of `alts[i]` in `alts`.
  We use alpha equivalence.
  Note that the number of occurrences can be greater than 1 only when
  the alternative does not depend on field parameters
  -/
  getNumOccsOf (alts : Array (Alt .pure)) (i : Nat) : Nat := Id.run do
    let code := alts[i]!.getCode
    let mut n := 1
    for h : j in (i+1)...alts.size do
      if Code.alphaEqv alts[j].getCode code then
        n := n+1
    return n

/--
Add a default case to the given `cases` alternatives if there
are alternatives with equivalent (aka alpha equivalent) right hand sides.
-/
def addDefaultAlt (alts : Array (Alt .pure)) : SimpM (Array (Alt .pure)) := do
  if alts.size <= 1 || alts.any (· matches .default ..) then
    return alts
  else
    let (max, noccs) := getMaxOccs alts
    if noccs == 1 then
      return alts
    else
      let mut altsNew := #[]
      let mut first := true
      markSimplified
      for alt in alts do
        if Code.alphaEqv alt.getCode max.getCode then
          let .alt _ ps k := alt | unreachable!
          eraseParams ps
          unless first do
            eraseCode k
          first := false
        else
          altsNew := altsNew.push alt
      return altsNew.push (.default max.getCode)
