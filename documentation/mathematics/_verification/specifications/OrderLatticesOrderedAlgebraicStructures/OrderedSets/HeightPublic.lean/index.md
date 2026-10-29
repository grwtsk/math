# Verification target: Height Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3730fbc6acb252757566089e22619493314f492",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Height/Variant9916f85bded405eef471dbc579b485dd24033ac2f4f07a65b6677d69aef4b731.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3730fbc6acb252757566089e22619493314f492`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Height/Variant9916f85bded405eef471dbc579b485dd24033ac2f4f07a65b6677d69aef4b731.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Height/Variant9916f85bded405eef471dbc579b485dd24033ac2f4f07a65b6677d69aef4b731.lean.json)

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
| 1 | `def` | [chainHeight](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightPublic.lean/declarations/chainheight.md) | 43 | `declaration-track:86bc74345d718ad39dc80ae6b56827117d6596162cf42f35ecf65cf4bc127d2a` |
| 2 | `theorem` | [chainHeight_eq_iSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightPublic.lean/declarations/chainheight-eq-isup.md) | 45 | `result-track:b7936a3ba5f874d28626da03eee7a13a843d03a88ec1e309cb7ffb099c2bb187` |
| 3 | `theorem` | [chainHeight_le_encard](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightPublic.lean/declarations/chainheight-le-encard.md) | 48 | `result-track:80cf556371dce6180d7e67ba12a4b8c3a53e78964d8280b43f98bc9479df1053` |
| 4 | `theorem` | [chainHeight_ne_top_of_finite](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightPublic.lean/declarations/chainheight-ne-top-of-finite.md) | 51 | `result-track:20238c8843fd8b182ba43017cdaa1744b81a8fdf10daa64f4d564166fa9e693d` |
| 5 | `theorem` | [exists_isChain_of_le_chainHeight](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightPublic.lean/declarations/exists-ischain-of-le-chainheight.md) | 55 | `result-track:51703cc4e9a181749f473fa31e98eceba5ced5ccf841667134a0add1dda89380` |
| 6 | `theorem` | [exists_eq_chainHeight_of_chainHeight_ne_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightPublic.lean/declarations/exists-eq-chainheight-of-chainheight-ne-top.md) | 66 | `result-track:631b2b19c85021e319785586c9755e27efd16bfa29f6fa77f9fbb39ab35d43b7` |
| 7 | `theorem` | [exists_eq_chainHeight_of_finite](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightPublic.lean/declarations/exists-eq-chainheight-of-finite.md) | 72 | `result-track:06c941a856083a3faf4a88d1fec9a1b1c76ac7d0fb27e8fe10211c4563fdc10d` |
| 8 | `theorem` | [encard_le_chainHeight_of_isChain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightPublic.lean/declarations/encard-le-chainheight-of-ischain.md) | 76 | `result-track:31d71319bfd5614b95b24d47d9d01b8e8191e27d47bcdc2ce3b0c563e38be4b4` |
| 9 | `theorem` | [encard_eq_chainHeight_of_isChain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightPublic.lean/declarations/encard-eq-chainheight-of-ischain.md) | 80 | `result-track:237a06748c5eb633ca84d0c7aac5c8185d13d5b0da118aea753544b3164721d5` |
| 10 | `theorem` | [finite_of_chainHeight_ne_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightPublic.lean/declarations/finite-of-chainheight-ne-top.md) | 84 | `result-track:c1e84d3bdd97c13ca7b39ece3e143c874b09a4d9dfd096972d95e005763244dc` |
| 11 | `theorem` | [not_isChain_of_chainHeight_lt_encard](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightPublic.lean/declarations/not-ischain-of-chainheight-lt-encard.md) | 89 | `result-track:361778f811702586dd0b5c1e1f0b957a92601cf3284ceb131f7254dc48e4cb0e` |
| 12 | `theorem` | [chainHeight_eq_top_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightPublic.lean/declarations/chainheight-eq-top-iff.md) | 95 | `result-track:c72b63af8d8d48f9654967a5b49b9c3ff66065a0a8eb5db79ca674a96da7bf1a` |
| 13 | `theorem` | [chainHeight_eq_zero_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightPublic.lean/declarations/chainheight-eq-zero-iff.md) | 105 | `result-track:1d2700684480efb20ca4fb60d2cc96446434eb6592350d52feafa1a378119414` |
| 14 | `theorem` | [chainHeight_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightPublic.lean/declarations/chainheight-empty.md) | 113 | `result-track:cf28367006fa97052515d83b384a13d0f88a806fcc1643fd2bc52e70e119990f` |
| 15 | `theorem` | [one_le_chainHeight_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightPublic.lean/declarations/one-le-chainheight-iff.md) | 117 | `result-track:55a3b117099ca6235478cd844851c76327fd78767a8f92364ac30af8e8b46c4b` |
| 16 | `theorem` | [chainHeight_of_isEmpty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightPublic.lean/declarations/chainheight-of-isempty.md) | 125 | `result-track:673f314b81a9afe1eb562765ddb80b999b4872a9ae499da7f57df2637f23ed29` |
| 17 | `theorem` | [chainHeight_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightPublic.lean/declarations/chainheight-mono.md) | 129 | `result-track:0ad35377bc66d19e705c6ebfc0011e34c8ddc766cdc636aae1116f8eeb2b7401` |
| 18 | `theorem` | [chainHeight_flip](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightPublic.lean/declarations/chainheight-flip.md) | 135 | `result-track:2eeaf2cd34abee652e0a08e49d8077f9f71ade0324bb3aa06316ec7855ebe9f1` |
| 19 | `theorem` | [chainHeight_eq_of_relEmbedding](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightPublic.lean/declarations/chainheight-eq-of-relembedding.md) | 146 | `result-track:79145c0d2c5e35550473145a8c4338cce1244fb345e7f8c99d12ede783c8a65f` |
| 20 | `theorem` | [chainHeight_eq_of_relIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightPublic.lean/declarations/chainheight-eq-of-reliso.md) | 157 | `result-track:7ff562d79b1a42372c59a100bd7bb64472e8eb72d42831cb7ddb5bf5124f2c33` |
| 21 | `theorem` | [chainHeight_coe_univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightPublic.lean/declarations/chainheight-coe-univ.md) | 163 | `result-track:ebc1fa3703712f6ef5600823414cca1a2928e45127320ef149e13ad9d755fc01` |
| 22 | `theorem` | [chainHeight_coe_univ_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightPublic.lean/declarations/chainheight-coe-univ-le.md) | 169 | `result-track:2a5173bbad856cb6726c10ade1c06855573edccd6ad5ec482a1c0e14a19e1228` |
| 23 | `theorem` | [chainHeight_coe_univ_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeightPublic.lean/declarations/chainheight-coe-univ-lt.md) | 174 | `result-track:8a60e02075e7fe568b65c6830af039b86a1e49284ad5faa7f7e4d203075e399d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=37b200c980c557f3bd05f57cf9eb43ea9dbaa7b88dc240677fd61d746b5f081b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Height/Variant9916f85bded405eef471dbc579b485dd24033ac2f4f07a65b6677d69aef4b731.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Height/Variant9916f85bded405eef471dbc579b485dd24033ac2f4f07a65b6677d69aef4b731.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
