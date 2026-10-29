# Verification target: Sheaf Of Functions Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb55321c87c56ad8f57daf4dcf565d0da0073dd5",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SheafOfFunctions/Variantb924be322b9ca3f6c674fd8f64f1d14e3d418e51dccaeff4ae3bb461543feaa4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SheafOfFunctionsNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/SheafOfFunctionsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb55321c87c56ad8f57daf4dcf565d0da0073dd5`.

Source path: `GRWTSK/Topology/GeneralTopology/SheafOfFunctions/Variantb924be322b9ca3f6c674fd8f64f1d14e3d418e51dccaeff4ae3bb461543feaa4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SheafOfFunctions/Variantb924be322b9ca3f6c674fd8f64f1d14e3d418e51dccaeff4ae3bb461543feaa4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sheaves.PresheafOfFunctions` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.SheafCondition.UniqueGluing` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [toTypes_isSheaf](../../../../GeneralTopology/SheafOfFunctionsNamespaced.lean/declarations/totypes-issheaf.md) | 54 | `result-track:6a43fb86ef026bb1a1a8949932f855f21c76bd3edb61ddfeb203cc0c54a45337` |
| 2 | `theorem` | [toType_isSheaf](../../../../GeneralTopology/SheafOfFunctionsNamespaced.lean/declarations/totype-issheaf.md) | 86 | `result-track:2c235dee458e1daedeaf196d7479f6fa3825903496930d45eb01bcbb32bc78c4` |
| 3 | `def` | [sheafToTypes](../../../../GeneralTopology/SheafOfFunctionsNamespaced.lean/declarations/sheaftotypes.md) | 96 | `declaration-track:817641b3f939db0f6704c35ac0ffb6a60fc0759486e0e949f5b4bb29ca96073d` |
| 4 | `def` | [sheafToType](../../../../GeneralTopology/SheafOfFunctionsNamespaced.lean/declarations/sheaftotype.md) | 101 | `declaration-track:2e066f30a7c28eebadb53c32d9103f0a7b689373cadb977d6503a087e8b1e2aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e2e0f18b50a10dbaec89aae80616a6bd084b7cae80a195cc074c8e58afe3a478 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/SheafOfFunctions/Variantb924be322b9ca3f6c674fd8f64f1d14e3d418e51dccaeff4ae3bb461543feaa4.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/SheafOfFunctions/Variantb924be322b9ca3f6c674fd8f64f1d14e3d418e51dccaeff4ae3bb461543feaa4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
