# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.41cf2051b6a0dff3ae02133580228506881b4efbdcb5b04f72c08aea34bf9f7fAtlasCumulantAud.Variant41cf2051b6a0dff3ae02133580228506881b4efbdcb5b04f72c08aea34bf9f7f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bbacb98f3303244a071a504da5d2b3586e9cdb86` · SHA-256 `41cf2051b6a0dff3ae02133580228506881b4efbdcb5b04f72c08aea34bf9f7f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.FiniteLogAffineSecondDerivative
import FormalResearch.PositiveAtlas.FiniteThirdCumulant
import FormalResearch.PositiveAtlas.FiniteFourthCumulant
import FormalResearch.PositiveAtlas.MomentCumulantPartitions
import Lean.Util.CollectAxioms
open Lean Elab Command
set_option pp.universes true
set_option pp.fullNames true
set_option pp.proofs false
run_cmd do
  let env ← getEnv
  let mods : Array Name := #[`FormalResearch.PositiveAtlas.FiniteLogAffineSecondDerivative, `FormalResearch.PositiveAtlas.FiniteThirdCumulant, `FormalResearch.PositiveAtlas.FiniteFourthCumulant, `FormalResearch.PositiveAtlas.MomentCumulantPartitions]
  let names := env.const2ModIdx.fold (fun acc n idx =>
    if mods.contains env.allImportedModuleNames[idx]! then n :: acc else acc) []
  let present := names.filter fun n => (env.find? n).isSome
  let metadataOnly := names.filter fun n => (env.find? n).isNone
  for n in metadataOnly do
    unless (n.toString.splitOn ".").any (fun p => p.startsWith "_") do
      throwError "Missing public declaration {n}"
    logInfo m!"COMPILER_METADATA_ONLY {n}"
  for n in present.toArray.qsort Name.quickLt do
    let ci ← getConstInfo n
    logInfo m!"TYPE {n} levels {ci.levelParams}: {ci.type}"
    let axs ← collectAxioms n
    logInfo m!"AXIOMS {n}: {axs}"
    for ax in axs do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "Unexpected axiom {ax} for {n}"
  logInfo m!"AUDITED {present.length} declarations, including generated/private declarations"
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=998f8cc2fe39def741f608fd54f91ebdf387aecd829cf14af4665cacd84cf5bd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/41cf2051b6a0dff3ae02133580228506881b4efbdcb5b04f72c08aea34bf9f7fAtlasCumulantAud/Variant41cf2051b6a0dff3ae02133580228506881b4efbdcb5b04f72c08aea34bf9f7f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
