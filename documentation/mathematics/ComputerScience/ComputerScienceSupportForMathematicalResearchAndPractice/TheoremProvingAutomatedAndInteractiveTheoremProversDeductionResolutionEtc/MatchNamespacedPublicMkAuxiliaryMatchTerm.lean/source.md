# Match Namespaced Public Mk Auxiliary Match Term — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a2ddfd3feb2c4245ef209a7c4cf82eabd9cd3d70` · SHA-256 `7b97428b88a6186383520d5471cccc752be44d2c751301b89a5fc3fe937a753f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkAuxiliaryMatchTerm.Variant3b7ed21e2be687418fd1d4ce2ccbf90991957e7abab0f66e03239f1c6b724539","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3b7ed21e2be687418fd1d4ce2ccbf90991957e7abab0f66e03239f1c6b724539","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MkAuxiliaryMatchTerm.Variant3b7ed21e2be687418fd1d4ce2ccbf90991957e7abab0f66e03239f1c6b724539","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3b7ed21e2be687418fd1d4ce2ccbf90991957e7abab0f66e03239f1c6b724539","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Match.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Elab.Match
public import Lean.Elab.Tactic.Induction


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkAuxiliaryMatchTerm.Variant3b7ed21e2be687418fd1d4ce2ccbf90991957e7abab0f66e03239f1c6b724539

public section

namespace Lean.Elab.Tactic
open Meta

open TSyntax.Compat in
open Parser.Tactic in
private def mkAuxiliaryMatchTerm (parentTag : Name) (matchTac : Syntax) : MacroM (Term × Array Syntax) := do
  let matchAlts := matchTac[5]
  let alts      := matchAlts[0].getArgs
  let mut newAlts := #[]
  let mut nextIdx := 1
  let mut newCases := #[]
  for alt in alts do
    let alt := alt.setKind ``Parser.Term.matchAlt
    let holeOrTacticSeq := alt[3]
    -- must generate a separate mvar for each `| $patGroup | ... => ...` as they can have different local contexts
    for patGroup in alt[1].getSepArgs do
      let mut alt := alt.setArg 1 (mkNullNode #[patGroup])
      if holeOrTacticSeq.isOfKind ``Parser.Term.syntheticHole then
        pure ()
      else if holeOrTacticSeq.isOfKind ``Parser.Term.hole then
        let tag := if alts.size > 1 then parentTag ++ (`match).appendIndexAfter nextIdx else parentTag
        let holeName := mkIdentFrom holeOrTacticSeq tag
        let newHole ← `(?$holeName:ident)
        nextIdx := nextIdx + 1
        alt := alt.setArg 3 newHole
      else
        let newHole ← withFreshMacroScope `(?rhs)
        let newHoleId := newHole.raw[1]
        let newCase ← `(tactic|
          case $newHoleId:ident =>%$(alt[2])
            -- annotate `| ... =>` with state after `case`
            with_annotate_state $(mkNullNode #[alt[0], alt[2]]) skip
            $holeOrTacticSeq)
        newCases := newCases.push newCase
        alt := alt.setArg 3 newHole
      newAlts := newAlts.push alt
  let result  := matchTac.setKind ``Parser.Term.«match»
  let result  := result.setArg 5 (mkNode ``Parser.Term.matchAlts #[mkNullNode newAlts])
  return (result, newCases)

@[builtin_tactic Lean.Parser.Tactic.match]
def evalMatch : Tactic := fun stx => do
  let tag ← getMainTag
  let (matchTerm, casesStx) ← liftMacroM <| mkAuxiliaryMatchTerm tag stx
  let refineMatchTerm ← `(tactic| refine no_implicit_lambda% $matchTerm)
  let stxNew := mkNullNode (#[refineMatchTerm] ++ casesStx)
  withMacroExpansion stx stxNew <| evalTactic stxNew

end Lean.Elab.Tactic
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a2b86d246dafe15643cde2af890156c29d5e4cd31eb28a3fe220b24d09d91cb2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variantc0fd759ff430bb9afd4e2d0eda10797507156d99faabe1cb393f5b51b3a0a479.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
