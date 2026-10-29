# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant559494cf2ffc0a7ec09d7dae863dffc4a23933e9fdef68bcbd0820a2d0dd105d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2feeb3e99a8cedd47c73068de3349fa46257fa39` · SHA-256 `559494cf2ffc0a7ec09d7dae863dffc4a23933e9fdef68bcbd0820a2d0dd105d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean.Elab.Command
import Candidate

open Lean

namespace Surface.ContinuousAssurance

run_cmd Elab.Command.liftTermElabM do
  let expectedType ← Lean.Elab.Term.elabType (← `(True))
  let candidate ← Lean.Elab.Term.elabTermEnsuringType (← `(by exact False.elim (by exact True.intro)) ) (some expectedType)
  Lean.Elab.Term.synthesizeSyntheticMVarsNoPostponing
  let candidate ← instantiateMVars candidate
  let env ← getEnv
  let mut pending := candidate.getUsedConstants.toList
  let mut visited : NameSet := {}
  while !pending.isEmpty do
    let dependency := pending.head!
    pending := pending.tail!
    if !visited.contains dependency then
      visited := visited.insert dependency
      if let some dependencyInfo := env.find? dependency then
        logInfo m!"CA_DEV_7daa0da7f26d570d12856332_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_7daa0da7f26d570d12856332_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_7daa0da7f26d570d12856332_AXIOM:{dependency}"
        | _ => pure ()
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_7daa0da7f26d570d12856332_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_7daa0da7f26d570d12856332_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_7daa0da7f26d570d12856332_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=74f0849812f9b879441a7b20b15a80ae3b5a4fb11546d3b0d370ffb9da3a1547 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Metadata/Variant559494cf2ffc0a7ec09d7dae863dffc4a23933e9fdef68bcbd0820a2d0dd105d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
