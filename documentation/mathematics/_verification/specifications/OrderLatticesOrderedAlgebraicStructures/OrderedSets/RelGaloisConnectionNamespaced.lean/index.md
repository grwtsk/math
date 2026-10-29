# Verification target: Rel Galois Connection Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a221e9edca86155dd34b10a5550287c7b6fa815",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Varianta65a7d0e1737f3f01f3b6eae2df15c9214778e660e22fdd98ae7d0e07feee597.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelGaloisConnectionNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelGaloisConnectionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a221e9edca86155dd34b10a5550287c7b6fa815`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Varianta65a7d0e1737f3f01f3b6eae2df15c9214778e660e22fdd98ae7d0e07feee597.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Varianta65a7d0e1737f3f01f3b6eae2df15c9214778e660e22fdd98ae7d0e07feee597.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Rel` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelGaloisConnectionNamespaced.lean/declarations/leftdual.md) | 53 | `declaration-track:6031f489936ca987a9a1688eb4ed12b70a7d6d70c439e4a8ca1bbdf58fc17940` |
| 2 | `def` | [rightDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelGaloisConnectionNamespaced.lean/declarations/rightdual.md) | 57 | `declaration-track:4f19abf633c1412a87fac8b87a963f7587b4d6ebb94dad779b8c43c62b8c5328` |
| 3 | `theorem` | [gc_leftDual_rightDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelGaloisConnectionNamespaced.lean/declarations/gc-leftdual-rightdual.md) | 60 | `result-track:4bce714c4b828b50d45c31a3a59ebc04676a714ecf7f002ed6280a06519314d6` |
| 4 | `def` | [leftFixedPoints](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelGaloisConnectionNamespaced.lean/declarations/leftfixedpoints.md) | 66 | `declaration-track:3e281a5f6a96d54ae17656ff45f0177b69160f5f2d24891dbd62898dc40088cd` |
| 5 | `def` | [rightFixedPoints](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelGaloisConnectionNamespaced.lean/declarations/rightfixedpoints.md) | 70 | `declaration-track:0aa2cae74420de8a4dd12878dd18260051d30e574f9eb23b252e692e0f32b533` |
| 6 | `theorem` | [leftDual_mem_rightFixedPoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelGaloisConnectionNamespaced.lean/declarations/leftdual-mem-rightfixedpoint.md) | 75 | `result-track:65133285dff3db64bea3a7897028e16d8ecf14bb6322d2205a09d45814a887a1` |
| 7 | `theorem` | [rightDual_mem_leftFixedPoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelGaloisConnectionNamespaced.lean/declarations/rightdual-mem-leftfixedpoint.md) | 81 | `result-track:0ba076ae7097bd7ead992ea366084e24cf1bd84f286c5bc543292da857484027` |
| 8 | `def` | [equivFixedPoints](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelGaloisConnectionNamespaced.lean/declarations/equivfixedpoints.md) | 88 | `declaration-track:c2016c8e31e2c2cceeda566b825e356e9922024880bc7b78468a7ebf83e1e39c` |
| 9 | `theorem` | [rightDual_leftDual_le_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelGaloisConnectionNamespaced.lean/declarations/rightdual-leftdual-le-of-le.md) | 94 | `result-track:89466ce98d8d27aeac8da79f3318eff73064affe4e9d9ea6b3281757a79fd788` |
| 10 | `theorem` | [leftDual_rightDual_le_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/RelGaloisConnectionNamespaced.lean/declarations/leftdual-rightdual-le-of-le.md) | 101 | `result-track:3fa052921fad789e831957f8ad09eb6a5fbbe50e264be5c93a6b91c86e9af90d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=20cf50cc1bdd9a88c86092f72cc156bd6033330cc1c2f9f0490ec8f6d6cfe4c1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Varianta65a7d0e1737f3f01f3b6eae2df15c9214778e660e22fdd98ae7d0e07feee597.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Varianta65a7d0e1737f3f01f3b6eae2df15c9214778e660e22fdd98ae7d0e07feee597.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
