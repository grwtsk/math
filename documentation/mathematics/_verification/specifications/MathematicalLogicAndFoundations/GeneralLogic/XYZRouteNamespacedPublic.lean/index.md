# Verification target: XYZRoute Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62afd72163d6a3de0cd5efb53da64433777ddf9e",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRoute/Variantee195de9af46d777b3fb5ff89e77673ecec1bdb1d4adb083382d71c6fa099432.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/XYZRouteNamespacedPublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/XYZRouteNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62afd72163d6a3de0cd5efb53da64433777ddf9e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRoute/Variantee195de9af46d777b3fb5ff89e77673ecec1bdb1d4adb083382d71c6fa099432.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRoute/Variantee195de9af46d777b3fb5ff89e77673ecec1bdb1d4adb083382d71c6fa099432.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hash256ToContentHash256](../../../../../MathematicalLogicAndFoundations/GeneralLogic/XYZRouteNamespacedPublic.lean/declarations/hash256tocontenthash256.md) | 35 | `declaration-track:ca4fabe23232a1f9c072160149c175de178a03cdbab5ae10e71a7d98fcf3a8cd` |
| 2 | `def` | [contentHash256ToHash256](../../../../../MathematicalLogicAndFoundations/GeneralLogic/XYZRouteNamespacedPublic.lean/declarations/contenthash256tohash256.md) | 40 | `declaration-track:78917a8aa81ff3d467043fb2047d4af43d8c7317de0678eba0b6a7dcfe786f05` |
| 3 | `theorem` | [hash256ToContentHash256_fields](../../../../../MathematicalLogicAndFoundations/GeneralLogic/XYZRouteNamespacedPublic.lean/declarations/hash256tocontenthash256-fields.md) | 45 | `result-track:100174a2165f0b6efa1bdd0cfa2948d0c1cdebe8f7f2440a1561f5ccb77ade47` |
| 4 | `theorem` | [contentHash256ToHash256_fields](../../../../../MathematicalLogicAndFoundations/GeneralLogic/XYZRouteNamespacedPublic.lean/declarations/contenthash256tohash256-fields.md) | 51 | `result-track:fdcdd0dc4f2eb1a145d7903b181d4c56ce0e4062c653c9b46bdfea498d627c23` |
| 5 | `theorem` | [hash256_contentHash256_roundTrip](../../../../../MathematicalLogicAndFoundations/GeneralLogic/XYZRouteNamespacedPublic.lean/declarations/hash256-contenthash256-roundtrip.md) | 57 | `result-track:26f920daf51f6255e2b0eb0d5b5e4b8c760a6565161d2aeb6a799f4483a68db6` |
| 6 | `theorem` | [contentHash256_hash256_roundTrip](../../../../../MathematicalLogicAndFoundations/GeneralLogic/XYZRouteNamespacedPublic.lean/declarations/contenthash256-hash256-roundtrip.md) | 63 | `result-track:6c27ef8757d2a08fa00529820c05992e8e4df95e91ea4504a50123879d9fe01a` |
| 7 | `def` | [ProvesHashAuthority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/XYZRouteNamespacedPublic.lean/declarations/proveshashauthority.md) | 70 | `declaration-track:7f9054ee30bd1568a385504babeedecc06b14ea7a179ea5040821d37bf846713` |
| 8 | `theorem` | [xyzHashAdapter_has_no_authority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/XYZRouteNamespacedPublic.lean/declarations/xyzhashadapter-has-no-authority.md) | 75 | `result-track:7bcb7e1b3d3065ea4684e539fe6b9df9b5f2fcfa8b40bdfa5da5c36e316d49f7` |
| 9 | `def` | [xyzHashAdapterAuthority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/XYZRouteNamespacedPublic.lean/declarations/xyzhashadapterauthority.md) | 81 | `declaration-track:96781e325748342e94945abb0e9b21686374e972e764d1bcecec0a11307b74f8` |
| 10 | `theorem` | [xyzHashAdapter_not_kernel_authority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/XYZRouteNamespacedPublic.lean/declarations/xyzhashadapter-not-kernel-authority.md) | 85 | `result-track:2ab93c31405cea9b29883d15b335e6b403c1c8f22d3908588bc4df2443c4fb5b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dbac2adeca85af4847039658684e0897500e53107dff64bab6eb213dd451b55d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRoute/Variantee195de9af46d777b3fb5ff89e77673ecec1bdb1d4adb083382d71c6fa099432.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRoute/Variantee195de9af46d777b3fb5ff89e77673ecec1bdb1d4adb083382d71c6fa099432.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
