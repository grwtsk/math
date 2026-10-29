# Verification target: Semilat Cat Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39c9d27a31023fb9134faa49f8bf9969e6d5f7f8",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemilatCat/Variantf4150144eca6c79b51dc1135289adbc5646bd3d5788ca1c4bef986bd0dc1e1ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatCatNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatCatNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39c9d27a31023fb9134faa49f8bf9969e6d5f7f8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemilatCat/Variantf4150144eca6c79b51dc1135289adbc5646bd3d5788ca1c4bef986bd0dc1e1ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemilatCat/Variantf4150144eca6c79b51dc1135289adbc5646bd3d5788ca1c4bef986bd0dc1e1ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Category.PartOrdCat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Lattice` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SemilatSupCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatCatNamespaced.lean/declarations/semilatsupcat.md) | 37 | `declaration-track:ac0e3431fb94c0b26b5bc4fe5595839a95311a2b0d2f13737f1d43adcf4d7cc1` |
| 2 | `structure` | [SemilatInfCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatCatNamespaced.lean/declarations/semilatinfcat.md) | 44 | `declaration-track:b9172700071d63787d22e30ec754e0623cc7f8566f6507abbf62d078b67d3a0c` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatCatNamespaced.lean/declarations/instance-source-edition-4.md) | 52 | `declaration-track:ac333070a07a024427fd658c9b1750704ee4971f894979623ff705cdc7cb9986` |
| 4 | `def` | [of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatCatNamespaced.lean/declarations/of.md) | 58 | `declaration-track:2e57d194d1e8244930d060f6b8c2a7127d11d22e7ced16b25995890d728b066e` |
| 5 | `theorem` | [coe_of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatCatNamespaced.lean/declarations/coe-of.md) | 63 | `result-track:7a2d6c5a72b41679fe38a02260897f802c645d024900c27ebb9fb51e6fbbd4d3` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatCatNamespaced.lean/declarations/instance-source-edition-3.md) | 67 | `declaration-track:4676d44a1464301762b1fc5488202eb2f123f6e3a586c4b2985fcc2f6b093e70` |
| 7 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatCatNamespaced.lean/declarations/instance-source-edition-7.md) | 70 | `declaration-track:f4d1ee1899fcfbdc697bfa9fba056661d52139bc90bd02f4d2b6be49ed731f7a` |
| 8 | `instance` | [instFunLike](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatCatNamespaced.lean/declarations/instfunlike.md) | 80 | `declaration-track:7ebb2ebe4f2dcb204ae754a66e0b61ed54cc38bbf0f325247642432cd704e6aa` |
| 9 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatCatNamespaced.lean/declarations/instance-source-edition-6.md) | 83 | `declaration-track:e50acd1d676a35d9d59d65f9f585918c77cf496b2a5c9b839694733a22a2cd79` |
| 10 | `instance` | [hasForgetToPartOrd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatCatNamespaced.lean/declarations/hasforgettopartord-source-edition-2.md) | 89 | `declaration-track:f00c9be1b289b23195aa461762d0b54b54bc300732dc71a0169892c00f303f28` |
| 11 | `theorem` | [coe_forget_to_partOrdCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatCatNamespaced.lean/declarations/coe-forget-to-partordcat-source-edition-2.md) | 98 | `result-track:f74eb719022f3b529b9a770eed1b1fd004dc9f0a0c4bbcf748cd2fc3925de944` |
| 12 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatCatNamespaced.lean/declarations/instance-source-edition-5.md) | 107 | `declaration-track:b3708a93697960db06f3328f771c32ef5d14ba45c9dd7e6018f6a250427190d9` |
| 13 | `def` | [of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatCatNamespaced.lean/declarations/of-source-edition-2.md) | 113 | `declaration-track:7b0d4f69f1961c48415d6f072b327b934421ce9dc4e521f3021122d356490b80` |
| 14 | `theorem` | [coe_of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatCatNamespaced.lean/declarations/coe-of-source-edition-2.md) | 118 | `result-track:d4cc650613b7d019b28c354311c115676a4375e616b8701e289089ce1be30380` |
| 15 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatCatNamespaced.lean/declarations/instance.md) | 122 | `declaration-track:11d9e1ad3a1d9fccaf9effc7f109b252fad03a65cbec8ab74fcd95c7832dceb5` |
| 16 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatCatNamespaced.lean/declarations/instance-source-edition-2.md) | 125 | `declaration-track:172780809e5bae73ecea9e23959790aea4df5267e8a584e08d697a1d1c3c6912` |
| 17 | `instance` | [instFunLike](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatCatNamespaced.lean/declarations/instfunlike-source-edition-2.md) | 134 | `declaration-track:9b76eb32c4b4ee51f10afb6ddf9f97d5425c9cd14968818ca89cac86171502c5` |
| 18 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatCatNamespaced.lean/declarations/instance-source-edition-8.md) | 137 | `declaration-track:f7b668f50318fc1d6906960dda2828cd2d5b04920433789191d34a3e8fd94815` |
| 19 | `instance` | [hasForgetToPartOrd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatCatNamespaced.lean/declarations/hasforgettopartord.md) | 143 | `declaration-track:d694b0e5b3ef500707ad7b35d11c1c3cf4161d529ec60553bce7dee284aeb3c1` |
| 20 | `theorem` | [coe_forget_to_partOrdCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatCatNamespaced.lean/declarations/coe-forget-to-partordcat.md) | 151 | `result-track:647a43f2965040712b76ee8ab0b6a8c9267b8c70ca7e476e5869649b8e1695d8` |
| 21 | `def` | [Iso.mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatCatNamespaced.lean/declarations/iso-mk-source-edition-2.md) | 164 | `declaration-track:ecae4cda6ea2ff2336713c06d345a167449c4e88c09d0284725b3f337413f4ed` |
| 22 | `def` | [dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatCatNamespaced.lean/declarations/dual.md) | 173 | `declaration-track:877825625380e8730df12a5da0d1e2a5fea03069da8b6ef049ccd42664c1d9fc` |
| 23 | `def` | [Iso.mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatCatNamespaced.lean/declarations/iso-mk.md) | 184 | `declaration-track:9d3942a3a3362d754b451cde3cc5d0d3be9a9690eeb93db104683343dbc53816` |
| 24 | `def` | [dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatCatNamespaced.lean/declarations/dual-source-edition-2.md) | 193 | `declaration-track:ea61040ba371cb40ff9a1131a10b43e7f11922c3995f7176304a70afb20d5678` |
| 25 | `def` | [SemilatSupCatEquivSemilatInfCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatCatNamespaced.lean/declarations/semilatsupcatequivsemilatinfcat.md) | 202 | `declaration-track:9e5905b140d3053fca9d78fe05f4121eb2202776b63d2cc573d47e75bb637ce2` |
| 26 | `theorem` | [SemilatSupCat_dual_comp_forget_to_partOrdCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatCatNamespaced.lean/declarations/semilatsupcat-dual-comp-forget-to-partordcat.md) | 209 | `result-track:15dff5735c34f3a1b821e6891fb4af1a7deb722107b9d3d04dc4954dec7e2cd9` |
| 27 | `theorem` | [SemilatInfCat_dual_comp_forget_to_partOrdCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatCatNamespaced.lean/declarations/semilatinfcat-dual-comp-forget-to-partordcat.md) | 215 | `result-track:0cc3094f08bbc385618af06ce1c80a1cd212ac60c52f305c6a2e95384890d4ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7b4939cd175daf4fa3086a9856c32da834bb9e96427ebe67a167e8abb290778f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemilatCat/Variantf4150144eca6c79b51dc1135289adbc5646bd3d5788ca1c4bef986bd0dc1e1ec.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemilatCat/Variantf4150144eca6c79b51dc1135289adbc5646bd3d5788ca1c4bef986bd0dc1e1ec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
