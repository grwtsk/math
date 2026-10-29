# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant934a91aaa8f5b3e711414193f5fb99e4ba37554b85ae490838a3866f10a99ff4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cae40a3c6b36b63cd02b15d5d9c2fabe7b292439` · SHA-256 `934a91aaa8f5b3e711414193f5fb99e4ba37554b85ae490838a3866f10a99ff4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
        logInfo m!"CA_DEV_de024d1c4217c46a60e8b189_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_de024d1c4217c46a60e8b189_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_de024d1c4217c46a60e8b189_AXIOM:{dependency}"
        | _ => pure ()
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_de024d1c4217c46a60e8b189_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_de024d1c4217c46a60e8b189_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_de024d1c4217c46a60e8b189_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=516006455aee62b9f5adaf83a29ebe15de80daaca3561e1f0fe49ff3043a18ca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Metadata/Variant934a91aaa8f5b3e711414193f5fb99e4ba37554b85ae490838a3866f10a99ff4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
