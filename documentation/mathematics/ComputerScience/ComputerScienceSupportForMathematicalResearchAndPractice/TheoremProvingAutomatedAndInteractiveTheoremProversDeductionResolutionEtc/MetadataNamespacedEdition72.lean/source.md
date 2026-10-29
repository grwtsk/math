# Metadata Namespaced Edition72 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1a0b520ed292f01a12ba7afe0bbd81b61eb0d732` · SHA-256 `5cce808c3d34c1b3e3d3634f46940556bb970ed130ea77a0b92f29abebf32964`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant59a2e4bd896dfeebcc5edbdec13c6209fd6d4ae8b92c4f9ad63c083e8674b80d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"59a2e4bd896dfeebcc5edbdec13c6209fd6d4ae8b92c4f9ad63c083e8674b80d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant59a2e4bd896dfeebcc5edbdec13c6209fd6d4ae8b92c4f9ad63c083e8674b80d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"59a2e4bd896dfeebcc5edbdec13c6209fd6d4ae8b92c4f9ad63c083e8674b80d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/6b21b0fa96b07d5dcf92a356b9bf44f25ab541d05b1ed1c38b98bd5dcc269769/lean/sources/59a2e4bd896dfeebcc5edbdec13c6209fd6d4ae8b92c4f9ad63c083e8674b80d/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant59a2e4bd896dfeebcc5edbdec13c6209fd6d4ae8b92c4f9ad63c083e8674b80d

open Lean

namespace Surface.ContinuousAssurance

run_cmd Elab.Command.liftTermElabM do
  let expectedType ← Lean.Elab.Term.elabType (← `(True))
  let candidate ← Lean.Elab.Term.elabTermEnsuringType (← `(by exact False.elim (by exact True.intro)) ) (some expectedType)
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
        logInfo m!"CA_DEV_6119ad7da2a9e228fa11ae49_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_6119ad7da2a9e228fa11ae49_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_6119ad7da2a9e228fa11ae49_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_6119ad7da2a9e228fa11ae49_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_6119ad7da2a9e228fa11ae49_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_6119ad7da2a9e228fa11ae49_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b1bf27a733017dd8a195da25d2f6a5739d1b1d3e11b42ac838f48e307f387637 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Metadata/Variant29f7e6e77e3e009e04d30bfab3edd8ea2f2549ddf6a80dfe00822313babc1150.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
