# Verification target: GRWTSK.Topology.GeneralTopology.Range.Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "436c8ca481110b3a1d8f2a50e84542d25390af67",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `436c8ca481110b3a1d8f2a50e84542d25390af67`.

Source path: `GRWTSK/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Submonoid` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [range_cfcHom](../../../../../mathematics/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean/declarations/range-cfchom--1eab8c0bd2e514e4c3458055.md) | 62 | `result-track:1eab8c0bd2e514e4c3458055c7bfa223025168798c3a6a5c4ab054779dd25ddc` |
| 2 | `lemma` | [range_cfc](../../../../../mathematics/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean/declarations/range-cfc--c4f7e6a66951f73436c7a88c.md) | 70 | `result-track:c4f7e6a66951f73436c7a88cf283b03a73309656504ea80b556b98f5e71783d9` |
| 3 | `theorem` | [range_cfcHom_le](../../../../../mathematics/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean/declarations/range-cfchom-le--5a744a42a1bbeb16c05e7635.md) | 79 | `result-track:5a744a42a1bbeb16c05e763555087ad355c16c074185ef1d1e94c1191e1fadbc` |
| 4 | `lemma` | [range_cfc_subset](../../../../../mathematics/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean/declarations/range-cfc-subset--998b17fff8afa1f49c1c4949.md) | 86 | `result-track:998b17fff8afa1f49c1c4949203beaf43172e4edb7352a7aa0f8ddae05041d57` |
| 5 | `theorem` | [cfcHom_mem_elemental](../../../../../mathematics/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean/declarations/cfchom-mem-elemental--c01bb7ff04e9bb5fbcb0e9c0.md) | 91 | `result-track:c01bb7ff04e9bb5fbcb0e9c03d56b2a09f8e671c9f853e92a8711915951bb61e` |
| 6 | `theorem` | [cfc_mem_elemental](../../../../../mathematics/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean/declarations/cfc-mem-elemental--f3b38d73b184e580fd2e3567.md) | 98 | `result-track:f3b38d73b184e580fd2e3567774e20c41b455b563a5ec49cc043270ec4af58ac` |
| 7 | `lemma` | [cfc_mem](../../../../../mathematics/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean/declarations/cfc-mem--42d20ec3500c6c345a6315d1.md) | 105 | `result-track:42d20ec3500c6c345a6315d1a13c83fdaf0e67bfabd29f75a4272c0089c259e8` |
| 8 | `lemma` | [range_cfc_nnreal_eq_image_cfc_real](../../../../../mathematics/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean/declarations/range-cfc-nnreal-eq-image-cfc-real--bf4f70968fcf499c3d7f0b9c.md) | 120 | `result-track:bf4f70968fcf499c3d7f0b9c289de1d8d5fcb96227bf70442bac1de16b264ce7` |
| 9 | `lemma` | [range_cfc_nnreal_subset](../../../../../mathematics/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean/declarations/range-cfc-nnreal-subset--45e31ab7dee80d91d88bf850.md) | 134 | `result-track:45e31ab7dee80d91d88bf8501cd234e3f61d3f0c040f30e3d0585d4dd620dd3c` |
| 10 | `lemma` | [range_cfc_nnreal](../../../../../mathematics/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean/declarations/range-cfc-nnreal--6d35b7b4623810851b1c1625.md) | 141 | `result-track:6d35b7b4623810851b1c1625f6db42abc7cb739870790af34d3414a468acef2e` |
| 11 | `theorem` | [cfc_nnreal_mem](../../../../../mathematics/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean/declarations/cfc-nnreal-mem--8989439b9e13837a2e4939d1.md) | 151 | `result-track:8989439b9e13837a2e4939d132dcaacc10f5addacf4159ae7148ee391be2d052` |
| 12 | `theorem` | [range_cfcₙHom](../../../../../mathematics/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean/declarations/range-cfc-hom--2a12d01e3fb4d4b888d988f4.md) | 179 | `result-track:2a12d01e3fb4d4b888d988f4cf65de54177044f77c1d6ef755795afc89957e05` |
| 13 | `theorem` | [range_cfcₙ](../../../../../mathematics/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean/declarations/range-cfc--96a2f441af47f386336dc6f2.md) | 188 | `result-track:96a2f441af47f386336dc6f27f205f42e349bdab17eaee7c08a12a19e71098e8` |
| 14 | `theorem` | [range_cfcₙHom_le](../../../../../mathematics/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean/declarations/range-cfc-hom-le--3e71f193b77269e8a3b07f36.md) | 196 | `result-track:3e71f193b77269e8a3b07f36fa35a39e13c12e980312cb1abe655f813010f559` |
| 15 | `theorem` | [range_cfcₙ_subset](../../../../../mathematics/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean/declarations/range-cfc-subset--b01b79a94156029abfbc4934.md) | 204 | `result-track:b01b79a94156029abfbc4934103d1ef8fc118973c3428a6e006a2c4dd6020ef5` |
| 16 | `theorem` | [cfcₙHom_mem_elemental](../../../../../mathematics/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean/declarations/cfc-hom-mem-elemental--d8fa6a3d1d0388acf2e50b9e.md) | 211 | `result-track:d8fa6a3d1d0388acf2e50b9e22bea78af518c6764436ad3ea945ef4824ad89be` |
| 17 | `theorem` | [cfcₙ_mem_elemental](../../../../../mathematics/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean/declarations/cfc-mem-elemental--28289a00031093421d9758c9.md) | 218 | `result-track:28289a00031093421d9758c95ade665319014adbfffc69d51d5eded1f9ca858c` |
| 18 | `lemma` | [cfcₙ_mem](../../../../../mathematics/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean/declarations/cfc-mem--4abafdad86235071273fdf43.md) | 225 | `result-track:4abafdad86235071273fdf43643e7cbdec2b43f98f2c4e584164dd0969594581` |
| 19 | `lemma` | [range_cfcₙ_nnreal_eq_image_cfcₙ_real](../../../../../mathematics/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean/declarations/range-cfc-nnreal-eq-image-cfc-real--fa42b00025cb36396216cda8.md) | 241 | `result-track:fa42b00025cb36396216cda8d6077e32f11cd5b56fba9288000fb1c82bafe828` |
| 20 | `lemma` | [range_cfcₙ_nnreal_subset](../../../../../mathematics/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean/declarations/range-cfc-nnreal-subset--e348447f9f4dee38af6825db.md) | 255 | `result-track:e348447f9f4dee38af6825db7fcdb314a5cfbd1dec94076a89eed1b6334d6a91` |
| 21 | `lemma` | [range_cfcₙ_nnreal](../../../../../mathematics/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean/declarations/range-cfc-nnreal--e25d281cbb270c6277998710.md) | 262 | `result-track:e25d281cbb270c627799871029cbe43c24fd3895dd750fe181d5f090c0361e6e` |
| 22 | `theorem` | [cfcₙ_nnreal_mem](../../../../../mathematics/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean/declarations/cfc-nnreal-mem--77e426c62e1573ff409d5624.md) | 280 | `result-track:77e426c62e1573ff409d5624ca8da6c628b136455e468000945ac53a28b984b0` |
| 23 | `instance` | [Subtype.starOrderedRing](../../../../../mathematics/Topology/GeneralTopology/Range/Variantd3ce812a6ae44dad8a2d544f651bb97b1f9212fa085400c2019eb0022c28daab.lean/declarations/subtype-starorderedring--b70d9f57bc045ce229f49cca.md) | 303 | `declaration-track:b70d9f57bc045ce229f49cca1d05a6c75ce3238d1ccab360f727c9d6c711e39b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
