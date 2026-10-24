# Verification target: GRWTSK.Topology.GeneralTopology.Sinc.Variantb9f1422a746f99d3c7f1a3c29cbdb2e8ca2b8372ef4f6f553ca3cd4fd28369c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6325e857e08b6b2862b98fe2f8533bd981b4c251",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Sinc/Variantb9f1422a746f99d3c7f1a3c29cbdb2e8ca2b8372ef4f6f553ca3cd4fd28369c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Sinc/Variantb9f1422a746f99d3c7f1a3c29cbdb2e8ca2b8372ef4f6f553ca3cd4fd28369c8.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Sinc/Variantb9f1422a746f99d3c7f1a3c29cbdb2e8ca2b8372ef4f6f553ca3cd4fd28369c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6325e857e08b6b2862b98fe2f8533bd981b4c251`.

Source path: `GRWTSK/Topology/GeneralTopology/Sinc/Variantb9f1422a746f99d3c7f1a3c29cbdb2e8ca2b8372ef4f6f553ca3cd4fd28369c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Sinc/Variantb9f1422a746f99d3c7f1a3c29cbdb2e8ca2b8372ef4f6f553ca3cd4fd28369c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sinc](../../../../../mathematics/Topology/GeneralTopology/Sinc/Variantb9f1422a746f99d3c7f1a3c29cbdb2e8ca2b8372ef4f6f553ca3cd4fd28369c8.lean/declarations/sinc--27fe06e268d47de84d52fd13.md) | 37 | `declaration-track:27fe06e268d47de84d52fd132105000792fff6aebaf9a9329bf814ebc73a89d4` |
| 2 | `lemma` | [sinc_apply](../../../../../mathematics/Topology/GeneralTopology/Sinc/Variantb9f1422a746f99d3c7f1a3c29cbdb2e8ca2b8372ef4f6f553ca3cd4fd28369c8.lean/declarations/sinc-apply--0d53949eac7d9a537a678764.md) | 39 | `result-track:0d53949eac7d9a537a678764abfbf6b6be9ea7f2aa05a9f8687c6c2d57ad6623` |
| 3 | `lemma` | [sinc_zero](../../../../../mathematics/Topology/GeneralTopology/Sinc/Variantb9f1422a746f99d3c7f1a3c29cbdb2e8ca2b8372ef4f6f553ca3cd4fd28369c8.lean/declarations/sinc-zero--56a3344b31f2c75e64916146.md) | 42 | `result-track:56a3344b31f2c75e649161467c647c1f902951708b69b1a23b1e825db02ccad9` |
| 4 | `lemma` | [sinc_of_ne_zero](../../../../../mathematics/Topology/GeneralTopology/Sinc/Variantb9f1422a746f99d3c7f1a3c29cbdb2e8ca2b8372ef4f6f553ca3cd4fd28369c8.lean/declarations/sinc-of-ne-zero--c3ba7cb8d0676ab999ee40d6.md) | 44 | `result-track:c3ba7cb8d0676ab999ee40d61c5054fe79b1d24800159a71ba0e1a097a0a8e49` |
| 5 | `lemma` | [sinc_eq_dslope](../../../../../mathematics/Topology/GeneralTopology/Sinc/Variantb9f1422a746f99d3c7f1a3c29cbdb2e8ca2b8372ef4f6f553ca3cd4fd28369c8.lean/declarations/sinc-eq-dslope--bec308e2581edc8650e7c8e3.md) | 46 | `result-track:bec308e2581edc8650e7c8e37ae72107d2df8a4af5c7454829730a52e0efd751` |
| 6 | `lemma` | [sinc_neg](../../../../../mathematics/Topology/GeneralTopology/Sinc/Variantb9f1422a746f99d3c7f1a3c29cbdb2e8ca2b8372ef4f6f553ca3cd4fd28369c8.lean/declarations/sinc-neg--56791ef2899562413c9b1e41.md) | 51 | `result-track:56791ef2899562413c9b1e4117cdb06178ecd6c58d851394b1c694982791e05b` |
| 7 | `lemma` | [abs_sinc_le_one](../../../../../mathematics/Topology/GeneralTopology/Sinc/Variantb9f1422a746f99d3c7f1a3c29cbdb2e8ca2b8372ef4f6f553ca3cd4fd28369c8.lean/declarations/abs-sinc-le-one--00da190dd72b53c79b402a5b.md) | 56 | `result-track:00da190dd72b53c79b402a5bb082346d468d34b26704346f5ae7c5d116ce6c4f` |
| 8 | `lemma` | [sinc_le_one](../../../../../mathematics/Topology/GeneralTopology/Sinc/Variantb9f1422a746f99d3c7f1a3c29cbdb2e8ca2b8372ef4f6f553ca3cd4fd28369c8.lean/declarations/sinc-le-one--29d0ce9c0f98d250f3ad5ed5.md) | 64 | `result-track:29d0ce9c0f98d250f3ad5ed5e19e9356aefe9b662e9f5beef8dd1470c63b9dbf` |
| 9 | `lemma` | [neg_one_le_sinc](../../../../../mathematics/Topology/GeneralTopology/Sinc/Variantb9f1422a746f99d3c7f1a3c29cbdb2e8ca2b8372ef4f6f553ca3cd4fd28369c8.lean/declarations/neg-one-le-sinc--c4a1c1c7922cdd249564b7cb.md) | 66 | `result-track:c4a1c1c7922cdd249564b7cbec6f368e9bd3ba32b8b0e91b26d14540edfc4ee0` |
| 10 | `lemma` | [sin_div_le_inv_abs](../../../../../mathematics/Topology/GeneralTopology/Sinc/Variantb9f1422a746f99d3c7f1a3c29cbdb2e8ca2b8372ef4f6f553ca3cd4fd28369c8.lean/declarations/sin-div-le-inv-abs--3268aa0a8fd9c79d2d0ecea8.md) | 68 | `result-track:3268aa0a8fd9c79d2d0ecea83457e48195679e9750fa958fe093539e8b8fd555` |
| 11 | `lemma` | [sinc_le_inv_abs](../../../../../mathematics/Topology/GeneralTopology/Sinc/Variantb9f1422a746f99d3c7f1a3c29cbdb2e8ca2b8372ef4f6f553ca3cd4fd28369c8.lean/declarations/sinc-le-inv-abs--afc600382b21a8fdb8a66c06.md) | 79 | `result-track:afc600382b21a8fdb8a66c06f11eea03f2958de1d706bd68c67be0fe6eab539a` |
| 12 | `lemma` | [continuous_sinc](../../../../../mathematics/Topology/GeneralTopology/Sinc/Variantb9f1422a746f99d3c7f1a3c29cbdb2e8ca2b8372ef4f6f553ca3cd4fd28369c8.lean/declarations/continuous-sinc--2587e2e556b7f0ca18f31b88.md) | 85 | `result-track:2587e2e556b7f0ca18f31b8894b480e44290d8719fd321f242917700f86c60c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
