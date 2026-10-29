# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variantd8dd846b742bca563f29e979623ac215bc15e68f1844442eaf7c897465140bbc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3003405b03dcf1427964a5791e7c86bea65ca848` · SHA-256 `375c163e8928be2b7e6c1e47b62feaf94882b44de42a487757d45df412539358`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant66daaf51635f8ffc03f622d320d5c00f8e5854d18cc0b468372cb90451e375ec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"66daaf51635f8ffc03f622d320d5c00f8e5854d18cc0b468372cb90451e375ec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant66daaf51635f8ffc03f622d320d5c00f8e5854d18cc0b468372cb90451e375ec","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"66daaf51635f8ffc03f622d320d5c00f8e5854d18cc0b468372cb90451e375ec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/91f5cd2d57d26781d700fc7ca3d10130e3ffe176df12686baabb45bf7919fdb3/lean/sources/66daaf51635f8ffc03f622d320d5c00f8e5854d18cc0b468372cb90451e375ec/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant66daaf51635f8ffc03f622d320d5c00f8e5854d18cc0b468372cb90451e375ec

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
        logInfo m!"CA_DEV_708e1e2a40a212d8f6e5451e_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_708e1e2a40a212d8f6e5451e_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_708e1e2a40a212d8f6e5451e_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_708e1e2a40a212d8f6e5451e_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_708e1e2a40a212d8f6e5451e_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_708e1e2a40a212d8f6e5451e_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a5cd4b58cde622d885caa5210d3de9e80f74b8c282dd39ba903a192a03306302 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Metadata/Variantd8dd846b742bca563f29e979623ac215bc15e68f1844442eaf7c897465140bbc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
