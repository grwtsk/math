# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.HeightIndexedResidueControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8cdfffa67ea0974e8dd68cae831f309b6dcfe5fd",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/HeightIndexedResidueControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/HeightIndexedResidueControls.lean/index.md) · [Full source](../../../../NumberTheory/HeightIndexedResidueControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8cdfffa67ea0974e8dd68cae831f309b6dcfe5fd`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/HeightIndexedResidueControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/HeightIndexedResidueControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.HeightIndexedTentResidues`](../../../../MeasureAndIntegration/HeightIndexedTentResidues.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [old_inventory_control](../../../../NumberTheory/HeightIndexedResidueControls.lean/declarations/old-inventory-control.md) | 29 | `result-track:ced67728ca0e16d5a04af5f57e0640bb5665828428deb232d17087235bac8ac9` |
| 2 | `theorem` | [zero_left_prefix_control](../../../../NumberTheory/HeightIndexedResidueControls.lean/declarations/zero-left-prefix-control.md) | 33 | `result-track:043372bb7607d1bb6b7771d8a92473c2e99de931e59a16c01bc18298a299141a` |
| 3 | `theorem` | [independent_left_cutoff_control](../../../../NumberTheory/HeightIndexedResidueControls.lean/declarations/independent-left-cutoff-control.md) | 39 | `result-track:1ba21b1001c515fe40491d11662989812806d2f528d019e35d0b5ecc542da4b4` |
| 4 | `theorem` | [collision_rejects_avoidance](../../../../NumberTheory/HeightIndexedResidueControls.lean/declarations/collision-rejects-avoidance.md) | 45 | `result-track:5eb8a07ef00d70958da34634142995c03a780fe13598ac46225ca00c2771a6c1` |
| 5 | `theorem` | [rounded_inventory_control](../../../../NumberTheory/HeightIndexedResidueControls.lean/declarations/rounded-inventory-control.md) | 51 | `result-track:b55b0a956dd47151977508a58fb216cfca2195bfe11d2ab5d857ab70a155e2e6` |
| 6 | `theorem` | [constant_closed_control](../../../../NumberTheory/HeightIndexedResidueControls.lean/declarations/constant-closed-control.md) | 57 | `result-track:6d7153b80bdecff382ce36b4004e8b46318551a5a4dd900eb966a75c5d0340e0` |
| 7 | `theorem` | [constant_right_changes](../../../../NumberTheory/HeightIndexedResidueControls.lean/declarations/constant-right-changes.md) | 62 | `result-track:70f094a72b8700aa4c0837447466eac47b65bc1be472bbf680089403eccac44b` |
| 8 | `theorem` | [constant_right_is_not_closed](../../../../NumberTheory/HeightIndexedResidueControls.lean/declarations/constant-right-is-not-closed.md) | 68 | `result-track:4d36cdb823487b403b7780e5c5071ef4411cedfc3f182fba10539d85daca16f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3f48e681083ec1813b0f0d5348817dd149b1bfd5d8bcff5e330cf8835e169087 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Chebyshev/Checks/HeightIndexedResidueControls.lean","GRWTSK/_verification/specifications/NumberTheory/Chebyshev/Checks/HeightIndexedResidueControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
