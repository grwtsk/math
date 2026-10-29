# Verification target: Core Namespaced Oriented Knot Filling Theory

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ed369069d2e65bb903692fe210c03e83d80397a",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Core/Variantb9f205bba38bc5f12140778448ca7b8c717f286ad9333806ad4d6723a2de0cdb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/CoreNamespacedOrientedKnotFillingTheory.lean/index.md) · [Full source](../../../../Combinatorics/CoreNamespacedOrientedKnotFillingTheory.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ed369069d2e65bb903692fe210c03e83d80397a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Core/Variantb9f205bba38bc5f12140778448ca7b8c717f286ad9333806ad4d6723a2de0cdb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Core/Variantb9f205bba38bc5f12140778448ca7b8c717f286ad9333806ad4d6723a2de0cdb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Surface.SmoothFramedSurgery` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OrientedKnotFillingTheory](../../../../Combinatorics/CoreNamespacedOrientedKnotFillingTheory.lean/declarations/orientedknotfillingtheory.md) | 40 | `declaration-track:5f5a798b4155cf339f413b9cd2486445491a11b45fc8e03957aaae7453d41a4d` |
| 2 | `abbrev` | [FillingHomeomorphism](../../../../Combinatorics/CoreNamespacedOrientedKnotFillingTheory.lean/declarations/fillinghomeomorphism.md) | 81 | `declaration-track:2877510015e6aff82cc43eeced0baa1de7d4ecfdcba210b06191cfea42281919` |
| 3 | `def` | [FillingsHomeomorphic](../../../../Combinatorics/CoreNamespacedOrientedKnotFillingTheory.lean/declarations/fillingshomeomorphic.md) | 86 | `declaration-track:fcfce6139878941a06f197f1ad7b698a468f74762bb9e034790f5c0cb43fd165` |
| 4 | `def` | [PurelyCosmeticPair](../../../../Combinatorics/CoreNamespacedOrientedKnotFillingTheory.lean/declarations/purelycosmeticpair.md) | 91 | `declaration-track:2280eabc1e509edab9ccbfc6db5c98f6c91027afcac71e1ebf20e61be4b4422f` |
| 5 | `def` | [KnotCounterexample](../../../../Combinatorics/CoreNamespacedOrientedKnotFillingTheory.lean/declarations/knotcounterexample.md) | 96 | `declaration-track:88beadac74d34b9ad3094f2bf9e013daffa18625a7257b38d5cb4a915361b6bc` |
| 6 | `def` | [ConjectureFalse](../../../../Combinatorics/CoreNamespacedOrientedKnotFillingTheory.lean/declarations/conjecturefalse.md) | 100 | `declaration-track:936220a07e5aad3e1452554d335b45d71ccb13a3a49c5dd31a613aacac48960e` |
| 7 | `def` | [MundanePair](../../../../Combinatorics/CoreNamespacedOrientedKnotFillingTheory.lean/declarations/mundanepair.md) | 107 | `declaration-track:d25485e2616418884e1f42ca53dd3cfe5c623392fab099d34ec64f2e5dbd1a8b` |
| 8 | `def` | [ExoticPair](../../../../Combinatorics/CoreNamespacedOrientedKnotFillingTheory.lean/declarations/exoticpair.md) | 113 | `declaration-track:ab3e3aba40a6ba6e4b42a4738a9f5e8decd0634946bc871b2db58dce38aba8ac` |
| 9 | `def` | [OppositeCoefficients](../../../../Combinatorics/CoreNamespacedOrientedKnotFillingTheory.lean/declarations/oppositecoefficients.md) | 118 | `declaration-track:10816ff6ffe61e27012e9025e4d776c09ad18248eb3d982bace83adad1cb5b3c` |
| 10 | `def` | [NiWuCongruence](../../../../Combinatorics/CoreNamespacedOrientedKnotFillingTheory.lean/declarations/niwucongruence.md) | 124 | `declaration-track:e2c6b14d33a24cb317c4df25dadaadba89bb0a94c63069589fd0f3226c726d55` |
| 11 | `def` | [FixedKnotResidualProfile](../../../../Combinatorics/CoreNamespacedOrientedKnotFillingTheory.lean/declarations/fixedknotresidualprofile.md) | 131 | `declaration-track:a54c9ea1c80619c4d1357df5edcd5f1041c261cbf9e785c3eb602f9efb8c5474` |
| 12 | `def` | [ResidualKnotProfile](../../../../Combinatorics/CoreNamespacedOrientedKnotFillingTheory.lean/declarations/residualknotprofile.md) | 139 | `declaration-track:df77cb385b60d4e378c96f1558daaa88e072ceecf6911e404e7fec847b676255` |
| 13 | `def` | [FixedKnotResidualCounterexample](../../../../Combinatorics/CoreNamespacedOrientedKnotFillingTheory.lean/declarations/fixedknotresidualcounterexample.md) | 143 | `declaration-track:2ca6e29b1dd9dbd5644ebf83c51b408bba1af10864d6f07f1254a093a5542d3b` |
| 14 | `def` | [ResidualCounterexample](../../../../Combinatorics/CoreNamespacedOrientedKnotFillingTheory.lean/declarations/residualcounterexample.md) | 151 | `declaration-track:7e9b6a7e747320a886889eaf74aa72e6910d0d6f21b029874974f5570b1ef07c` |
| 15 | `theorem` | [plusTwo_opposite_minusTwo](../../../../Combinatorics/CoreNamespacedOrientedKnotFillingTheory.lean/declarations/plustwo-opposite-minustwo.md) | 158 | `result-track:11535c32bf3e76bc421ac7c71130964f4db06500c26c36b985e2be2fd25424c1` |
| 16 | `theorem` | [residualCounterexample_is_cosmetic](../../../../Combinatorics/CoreNamespacedOrientedKnotFillingTheory.lean/declarations/residualcounterexample-is-cosmetic.md) | 165 | `result-track:38b6ae2fa5c5baca23acaa56e37ab9be4fe78b2cc38d56e8106c3eed12ada322` |
| 17 | `theorem` | [fixedKnotResidualCounterexample_is_cosmetic](../../../../Combinatorics/CoreNamespacedOrientedKnotFillingTheory.lean/declarations/fixedknotresidualcounterexample-is-cosmetic.md) | 172 | `result-track:c998f1ba21857a302410ef049d074de35b53cdeee1d170f8006c06ecb6c70817` |
| 18 | `theorem` | [fixedKnotResidualCounterexample_is_knotCounterexample](../../../../Combinatorics/CoreNamespacedOrientedKnotFillingTheory.lean/declarations/fixedknotresidualcounterexample-is-knotcounterexample.md) | 179 | `result-track:942569411c49d1518f37afaaff7133b9944cdf124029a0f78a3deb5db4f08032` |
| 19 | `theorem` | [residualCounterexample_is_knotCounterexample](../../../../Combinatorics/CoreNamespacedOrientedKnotFillingTheory.lean/declarations/residualcounterexample-is-knotcounterexample.md) | 187 | `result-track:8b98c0e267413d6f776dfa4005182404f16aa62d17bec7adf4a2824d75f49365` |
| 20 | `theorem` | [residualCounterexample_implies_conjectureFalse](../../../../Combinatorics/CoreNamespacedOrientedKnotFillingTheory.lean/declarations/residualcounterexample-implies-conjecturefalse.md) | 194 | `result-track:f3488b664ff8f81a5d92b922d38ae01f7c8d82154266e613a3cf6e6596f33a01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ebb3d8a63fdebad329fc6914846433138f348de8ecc3ba48bef394501c168309 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Core/Variantb9f205bba38bc5f12140778448ca7b8c717f286ad9333806ad4d6723a2de0cdb.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Core/Variantb9f205bba38bc5f12140778448ca7b8c717f286ad9333806ad4d6723a2de0cdb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
