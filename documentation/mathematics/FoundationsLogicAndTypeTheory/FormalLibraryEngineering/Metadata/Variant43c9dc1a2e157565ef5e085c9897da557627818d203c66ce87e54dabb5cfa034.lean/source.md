# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant43c9dc1a2e157565ef5e085c9897da557627818d203c66ce87e54dabb5cfa034

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a9799ffc364877c4fd6ec7b9125d022eee19376` · SHA-256 `43c9dc1a2e157565ef5e085c9897da557627818d203c66ce87e54dabb5cfa034`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean.Elab.Command
import Candidate

open Lean

namespace Surface.ContinuousAssurance

run_cmd Elab.Command.liftTermElabM do
  let expectedType ← Lean.Elab.Term.elabType (← `(True))
  let candidate ← Lean.Elab.Term.elabTermEnsuringType (← `(by exact True.intro) ) (some expectedType)
  Lean.Elab.Term.synthesizeSyntheticMVarsNoPostponing
  let candidate ← instantiateMVars candidate
  let expectedType ← instantiateMVars expectedType
  let env ← getEnv
  let mut pending := candidate.getUsedConstants.toList ++ expectedType.getUsedConstants.toList
  let mut visited : NameSet := {}
  while !pending.isEmpty do
    let dependency := pending.head!
    pending := pending.tail!
    if !visited.contains dependency then
      visited := visited.insert dependency
      if let some dependencyInfo := env.find? dependency then
        logInfo m!"CA_DEV_c98150af02825a0e6d3c6e3d_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_c98150af02825a0e6d3c6e3d_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_c98150af02825a0e6d3c6e3d_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_c98150af02825a0e6d3c6e3d_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_c98150af02825a0e6d3c6e3d_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_c98150af02825a0e6d3c6e3d_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=22c15f1138699d69ad3559138b75e5194b7ea3e8f830efddac4844f3f1171cd5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Metadata/Variant43c9dc1a2e157565ef5e085c9897da557627818d203c66ce87e54dabb5cfa034.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
