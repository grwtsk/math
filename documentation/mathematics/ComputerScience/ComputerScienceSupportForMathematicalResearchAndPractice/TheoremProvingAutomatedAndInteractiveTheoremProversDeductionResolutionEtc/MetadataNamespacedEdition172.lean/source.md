# Metadata Namespaced Edition172 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `82c1e268383d9b6700b072aebd162e39a5ee4000` · SHA-256 `ff350ee19f5149b29f867c6b4eb93e6eb1be7a8d5a52fbb12f57299c0dda5420`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantc873c9e34f53d90dcac65d82d88f6bb06a7de5f1a7bd95fb962e6382ad29adab","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c873c9e34f53d90dcac65d82d88f6bb06a7de5f1a7bd95fb962e6382ad29adab","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variantc873c9e34f53d90dcac65d82d88f6bb06a7de5f1a7bd95fb962e6382ad29adab","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c873c9e34f53d90dcac65d82d88f6bb06a7de5f1a7bd95fb962e6382ad29adab","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/7c867a5db991bb79a8e538c047d764769b740aefec6b541b0e68f909c734529f/lean/sources/c873c9e34f53d90dcac65d82d88f6bb06a7de5f1a7bd95fb962e6382ad29adab/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantc873c9e34f53d90dcac65d82d88f6bb06a7de5f1a7bd95fb962e6382ad29adab

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
        logInfo m!"CA_DEV_8016f40dd27a74794f618cff_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_8016f40dd27a74794f618cff_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_8016f40dd27a74794f618cff_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_8016f40dd27a74794f618cff_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_8016f40dd27a74794f618cff_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_8016f40dd27a74794f618cff_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=702a0e9e07d28cc3071c24cc3853b1a6516bf44cf7eda9af0e4995e017cdc239 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Metadata/Variantcc40e5b1f0f67cd2a08adf32a76988f53f4031a5c3515a15b2031587467fb642.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
