# Verification target: Rel Galois Connection Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a21eabf8a7d135fe73c79566bf12a6e683a2c50c",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variant63b612b3b3c2c0a79cf911410a3016d2697e5c32e099865d126f77539f7981cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelGaloisConnectionPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelGaloisConnectionPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a21eabf8a7d135fe73c79566bf12a6e683a2c50c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variant63b612b3b3c2c0a79cf911410a3016d2697e5c32e099865d126f77539f7981cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variant63b612b3b3c2c0a79cf911410a3016d2697e5c32e099865d126f77539f7981cb.lean.json)

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
| 1 | `def` | [leftDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelGaloisConnectionPublic.lean/declarations/leftdual.md) | 49 | `declaration-track:8f102cb4218225cf564bae4d89c7a8c5ed320090a1353c021b2a2c602847f380` |
| 2 | `def` | [rightDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelGaloisConnectionPublic.lean/declarations/rightdual.md) | 53 | `declaration-track:c7a04022fce32d7647f7e898474672e33eb5303cd6f9046c2f9d62ee898f776f` |
| 3 | `theorem` | [gc_leftDual_rightDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelGaloisConnectionPublic.lean/declarations/gc-leftdual-rightdual.md) | 56 | `result-track:aa9c5adf4c2e2115ad2c82abfac3a1f762a50c5784fdba904607017ff8677039` |
| 4 | `def` | [leftFixedPoints](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelGaloisConnectionPublic.lean/declarations/leftfixedpoints.md) | 62 | `declaration-track:7a26d372139268a921d8ff777a312f1ddb2fd1421b6d6111f0f1fe0da62b4db2` |
| 5 | `def` | [rightFixedPoints](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelGaloisConnectionPublic.lean/declarations/rightfixedpoints.md) | 66 | `declaration-track:b30208910d9fc0b067aaf5cdc041e6a5eb2d217d7a3afd68d719887d2edf5c6f` |
| 6 | `theorem` | [leftDual_mem_rightFixedPoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelGaloisConnectionPublic.lean/declarations/leftdual-mem-rightfixedpoint.md) | 71 | `result-track:0768eb9c6796caf4e09f981e8630a77e93973a57f1e8c64875cf26354e913640` |
| 7 | `theorem` | [rightDual_mem_leftFixedPoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelGaloisConnectionPublic.lean/declarations/rightdual-mem-leftfixedpoint.md) | 77 | `result-track:47126f439b0760c758e0c23efd0dff37b62d6772405e6d2a6e9b18f32cdfef56` |
| 8 | `def` | [equivFixedPoints](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelGaloisConnectionPublic.lean/declarations/equivfixedpoints.md) | 84 | `declaration-track:4304fae850a678fe2b6dbe6efa490b294db341d0427564425daf8c8d9f680e69` |
| 9 | `theorem` | [rightDual_leftDual_le_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelGaloisConnectionPublic.lean/declarations/rightdual-leftdual-le-of-le.md) | 90 | `result-track:c7cb4f66459a2c00389ea9d5bd1d7f61fdd1f66d3e943aa4f99738c8191f8962` |
| 10 | `theorem` | [leftDual_rightDual_le_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelGaloisConnectionPublic.lean/declarations/leftdual-rightdual-le-of-le.md) | 97 | `result-track:f3ff623a98e54c0a1ba495d3487652f6745688acaa6789f51221f63a3dd4f51e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=50aed7e4f28677eefd31143e37a66d83f26992b493ccdab1713b3328eb185769 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variant63b612b3b3c2c0a79cf911410a3016d2697e5c32e099865d126f77539f7981cb.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variant63b612b3b3c2c0a79cf911410a3016d2697e5c32e099865d126f77539f7981cb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
