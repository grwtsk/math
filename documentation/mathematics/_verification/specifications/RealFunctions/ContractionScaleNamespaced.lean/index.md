# Verification target: Contraction Scale Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e2cc081d1c089ab85fab6bba2626aea1b00601f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/ContractionScale/Variantcc4b6d13daeedd8131b749cada2f6d2c2d683241e881a60d90ed2aa07ab2944a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/ContractionScaleNamespaced.lean/index.md) · [Full source](../../../../RealFunctions/ContractionScaleNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e2cc081d1c089ab85fab6bba2626aea1b00601f`.

Source path: `GRWTSK/Analysis/SpecialFunctions/ContractionScale/Variantcc4b6d13daeedd8131b749cada2f6d2c2d683241e881a60d90ed2aa07ab2944a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/ContractionScale/Variantcc4b6d13daeedd8131b749cada2f6d2c2d683241e881a60d90ed2aa07ab2944a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.MobiusOntology.PerturbedBoundary` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ContractionScaleRatio](../../../../RealFunctions/ContractionScaleNamespaced.lean/declarations/contractionscaleratio.md) | 23 | `declaration-track:7ed4088cef665cf0b297210dddb584eea0fcd0306ea39f2a3b0da66f2cf3335e` |
| 2 | `structure` | [ContractionScaleCertificate](../../../../RealFunctions/ContractionScaleNamespaced.lean/declarations/contractionscalecertificate.md) | 28 | `declaration-track:ca6f25cc50792f71c1a2ebb146826668eba4078a06a5cd8d43b0f25009c942c4` |
| 3 | `theorem` | [contraction_reaches_squareRoot_scale](../../../../RealFunctions/ContractionScaleNamespaced.lean/declarations/contraction-reaches-squareroot-scale.md) | 53 | `result-track:5d0d8842c6d04c77e3d3728e86c9dc724d24353006a36102567b000d695aa917` |
| 4 | `structure` | [ContractionToDiscrepancyCertificate](../../../../RealFunctions/ContractionScaleNamespaced.lean/declarations/contractiontodiscrepancycertificate.md) | 64 | `declaration-track:9d0be8023097dc71e7f9d627dbcaa57c4ab949cfc0a97b02a23a8b897197f10a` |
| 5 | `constant` | [(anonymous)](../../../../RealFunctions/ContractionScaleNamespaced.lean/declarations/constant.md) | 68 | `declaration-track:299ac9df39c87b9a2b13a4d1bf717ed968de48e342d9e95603b37ba260273c2a` |
| 6 | `constant` | [*](../../../../RealFunctions/ContractionScaleNamespaced.lean/declarations/anonymous.md) | 74 | `declaration-track:84824a29d3c476b592399fe8fd863f08f2ffd95cf6d5040858e8210f3d717ab3` |
| 7 | `theorem` | [contraction_discrepancy_bound](../../../../RealFunctions/ContractionScaleNamespaced.lean/declarations/contraction-discrepancy-bound.md) | 81 | `result-track:ddbe1f02f1b32abe3dae5697da5cf7f864c217db665b03c4ed99ffc922df34f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0d784b6d405ab3b74f4c21b0389a54d150a9baa1b50d1712f9b4016c82e860f1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/SpecialFunctions/ContractionScale/Variantcc4b6d13daeedd8131b749cada2f6d2c2d683241e881a60d90ed2aa07ab2944a.lean","GRWTSK/_verification/specifications/Analysis/SpecialFunctions/ContractionScale/Variantcc4b6d13daeedd8131b749cada2f6d2c2d683241e881a60d90ed2aa07ab2944a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
