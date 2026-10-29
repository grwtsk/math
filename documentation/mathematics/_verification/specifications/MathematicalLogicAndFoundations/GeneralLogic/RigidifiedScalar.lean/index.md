# Verification target: Rigidified Scalar

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1f80bbb14a9be8a68c21a49f051473e40911936",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RigidifiedScalar/Variantff553de3c69071f194f9906ae7242508b4062289f5c0eeb90dba9d32ed6d8e83.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RigidifiedScalar.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RigidifiedScalar.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1f80bbb14a9be8a68c21a49f051473e40911936`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RigidifiedScalar/Variantff553de3c69071f194f9906ae7242508b4062289f5c0eeb90dba9d32ed6d8e83.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/RigidifiedScalar/Variantff553de3c69071f194f9906ae7242508b4062289f5c0eeb90dba9d32ed6d8e83.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Projection.LabeledProjection` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LosslessNatEncoding](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RigidifiedScalar.lean/declarations/losslessnatencoding.md) | 15 | `declaration-track:f9472604b75ac6e0f3a971622b4c184aab76121b92ef99da3328c9670bb1e4d3` |
| 2 | `theorem` | [losslessNatEncoding_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RigidifiedScalar.lean/declarations/losslessnatencoding-injective.md) | 20 | `result-track:ad920b1e48c0c97e8849898f07e5c16eac77ef62f8483e5e2d0601c495fe2864` |
| 3 | `structure` | [RigidifiedScalarInput](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RigidifiedScalar.lean/declarations/rigidifiedscalarinput.md) | 33 | `declaration-track:453b737313e948233e1ebc9856bcfb27bb587b84bcef023136f5b70ee1cd06d4` |
| 4 | `def` | [rigidifiedScalar](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RigidifiedScalar.lean/declarations/rigidifiedscalar.md) | 40 | `declaration-track:288ad81593897bc4da2aeb9e0851ac74ae286eb07cb37c816e933d2f0a55e555` |
| 5 | `theorem` | [rigidifiedScalar_exact](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RigidifiedScalar.lean/declarations/rigidifiedscalar-exact.md) | 45 | `result-track:63e3d58b7e5f81198df39400172f2609b32c4d2952321eac7698cb49c868c76f` |
| 6 | `structure` | [ExactProjectionEvaluator](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RigidifiedScalar.lean/declarations/exactprojectionevaluator.md) | 56 | `declaration-track:019e3aebf2de058ec60c2523047added7c4153abb76a40e9003326e2bfaa59e3` |
| 7 | `def` | [ExactProjectionEvaluator.decode](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RigidifiedScalar.lean/declarations/exactprojectionevaluator-decode.md) | 61 | `declaration-track:73d83bbaed8ca3c0c131ca9fb308baa15a26d51df070c3ba880218500b316284` |
| 8 | `theorem` | [exact_projection_from_rigidifiedScalar](../../../../../MathematicalLogicAndFoundations/GeneralLogic/RigidifiedScalar.lean/declarations/exact-projection-from-rigidifiedscalar.md) | 73 | `result-track:bda4ffe20b3b9ece3194dad2c58af46f808b3b44dc3352c8174d7bc6231b47c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2611d72e95b731980f5389e127e2ef16df9b54c3fa908fa1b947dda4c865214c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RigidifiedScalar/Variantff553de3c69071f194f9906ae7242508b4062289f5c0eeb90dba9d32ed6d8e83.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/RigidifiedScalar/Variantff553de3c69071f194f9906ae7242508b4062289f5c0eeb90dba9d32ed6d8e83.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
