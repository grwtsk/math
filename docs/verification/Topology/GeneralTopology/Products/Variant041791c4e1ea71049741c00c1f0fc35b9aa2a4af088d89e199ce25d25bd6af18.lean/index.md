# Verification target: GRWTSK.Topology.GeneralTopology.Products.Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49c6249845f29829fac76e9824b6b43dce1ba8f0",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49c6249845f29829fac76e9824b6b43dce1ba8f0`.

Source path: `GRWTSK/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.TopCat.EpiMono` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [piπ](../../../../../mathematics/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean/declarations/pi--2e5901adfb585c0c9795abeb.md) | 33 | `declaration-track:2e5901adfb585c0c9795abeb3ce60f4514593351183835b1367fad399189a732` |
| 2 | `def` | [piFan](../../../../../mathematics/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean/declarations/pifan--3a3763b63c693ffb0d81f731.md) | 39 | `declaration-track:3a3763b63c693ffb0d81f7319d86c035f30cd3bdc6d06f8a61559f007e027096` |
| 3 | `def` | [piFanIsLimit](../../../../../mathematics/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean/declarations/pifanislimit--b003a34442b26fbec063e6ad.md) | 44 | `declaration-track:b003a34442b26fbec063e6ad39b2f9e60aa785037e851bb81ecd528b228d1840` |
| 4 | `def` | [piIsoPi](../../../../../mathematics/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean/declarations/piisopi--eeba1d0e834f3b8e8043ca4c.md) | 61 | `declaration-track:eeba1d0e834f3b8e8043ca4c6fa50ab9d4fb1fd760949334923cbd5afd21ed0f` |
| 5 | `theorem` | [piIsoPi_inv_π](../../../../../mathematics/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean/declarations/piisopi-inv--bc9844a09b9c6610bb17f675.md) | 67 | `result-track:bc9844a09b9c6610bb17f675305f89772d6aafa1a2c41bcbd893768bd7427159` |
| 6 | `theorem` | [piIsoPi_inv_π_apply](../../../../../mathematics/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean/declarations/piisopi-inv-apply--6d1c40d77dfd51684538710a.md) | 72 | `result-track:6d1c40d77dfd51684538710ab5baefd9549843077c5fb800925a1e49ced275b2` |
| 7 | `theorem` | [piIsoPi_hom_apply](../../../../../mathematics/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean/declarations/piisopi-hom-apply--51854bfa2680022a410d1738.md) | 79 | `result-track:51854bfa2680022a410d17385c2a6cbaea0ac0c740136a5cb7ca43ce8109b07e` |
| 8 | `abbrev` | [sigmaι](../../../../../mathematics/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean/declarations/sigma--01b9b68fbdfe1402b912d2eb.md) | 88 | `declaration-track:01b9b68fbdfe1402b912d2ebcdc5baacda9a8e5e4e6d7553d8dd0d781048d048` |
| 9 | `def` | [sigmaCofan](../../../../../mathematics/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean/declarations/sigmacofan--998a2810528776615774429a.md) | 97 | `declaration-track:998a2810528776615774429a68af44c5db2803433b2864309cff68af58fb416f` |
| 10 | `def` | [sigmaCofanIsColimit](../../../../../mathematics/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean/declarations/sigmacofaniscolimit--1550f259c6368df629c2bed3.md) | 102 | `declaration-track:1550f259c6368df629c2bed3ea27c7f093b7ab9feb405f321cd9ee5ae17f306c` |
| 11 | `def` | [sigmaIsoSigma](../../../../../mathematics/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean/declarations/sigmaisosigma--2079bac0d9c53344d0167e66.md) | 118 | `declaration-track:2079bac0d9c53344d0167e663e62dd25233a6aa83157757e5b7730c1aa07b470` |
| 12 | `theorem` | [sigmaIsoSigma_hom_ι](../../../../../mathematics/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean/declarations/sigmaisosigma-hom--ceab347ee079355c44991d9e.md) | 123 | `result-track:ceab347ee079355c44991d9ea8d76aaf1ed3cded000a350e9c398e933958fe77` |
| 13 | `theorem` | [sigmaIsoSigma_hom_ι_apply](../../../../../mathematics/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean/declarations/sigmaisosigma-hom-apply--bc83f8c7b6395ca61f01da13.md) | 128 | `result-track:bc83f8c7b6395ca61f01da1371f96189d0ec83ba24169f23b51cccdd694007f7` |
| 14 | `theorem` | [sigmaIsoSigma_inv_apply](../../../../../mathematics/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean/declarations/sigmaisosigma-inv-apply--61a8692260a95f3b008d3e50.md) | 134 | `result-track:61a8692260a95f3b008d3e503e3dd12ee4cc9c15fec169e74a545c8fcccfc098` |
| 15 | `theorem` | [induced_of_isLimit](../../../../../mathematics/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean/declarations/induced-of-islimit--069fc6c72b2f869104b5aebb.md) | 141 | `result-track:069fc6c72b2f869104b5aebbde55f2a4abd803c2fc44de00470ae51b04bb1a34` |
| 16 | `theorem` | [limit_topology](../../../../../mathematics/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean/declarations/limit-topology--e1db106b819a6921d3d2458e.md) | 150 | `result-track:e1db106b819a6921d3d2458ee3ca0a0341a18464f45db4b31ba75ecc27902b47` |
| 17 | `abbrev` | [prodFst](../../../../../mathematics/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean/declarations/prodfst--61bba0c91f8abf7ea128c211.md) | 159 | `declaration-track:61bba0c91f8abf7ea128c211369ce2f9b19e071abdd00f774f21ef75f1b7e767` |
| 18 | `abbrev` | [prodSnd](../../../../../mathematics/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean/declarations/prodsnd--2b8d53645aa04ce734e70a99.md) | 164 | `declaration-track:2b8d53645aa04ce734e70a99fb9ebb5a5075511fce777024056e287dbf064505` |
| 19 | `def` | [prodBinaryFan](../../../../../mathematics/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean/declarations/prodbinaryfan--4e980c618940385546d866c1.md) | 169 | `declaration-track:4e980c618940385546d866c1a68fdf94b90727631ee3b34dbe04319b1b148a75` |
| 20 | `def` | [prodBinaryFanIsLimit](../../../../../mathematics/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean/declarations/prodbinaryfanislimit--b95cfaa8943a7e80a2d14893.md) | 174 | `declaration-track:b95cfaa8943a7e80a2d14893c5167192cf1c546640e804d101ba79349a50b1b7` |
| 21 | `def` | [prodIsoProd](../../../../../mathematics/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean/declarations/prodisoprod--a9f35793c27e4d5eec3f0b46.md) | 198 | `declaration-track:a9f35793c27e4d5eec3f0b46bf5665231ed6fc9f6e448f14c02e2293c4a66770` |
| 22 | `theorem` | [prodIsoProd_hom_fst](../../../../../mathematics/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean/declarations/prodisoprod-hom-fst--7bd0fa715c89a8474f119edc.md) | 203 | `result-track:7bd0fa715c89a8474f119edc6b6e25ebbb8becf0e631bc44479d40cce9ff731f` |
| 23 | `theorem` | [prodIsoProd_hom_snd](../../../../../mathematics/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean/declarations/prodisoprod-hom-snd--c80090d4de557271cc28c71f.md) | 210 | `result-track:c80090d4de557271cc28c71f885475157425a6fe547bd20357f58a60190f9a3b` |
| 24 | `theorem` | [prodIsoProd_hom_apply](../../../../../mathematics/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean/declarations/prodisoprod-hom-apply--0bfa81d21888ac68083abe2f.md) | 218 | `result-track:0bfa81d21888ac68083abe2ffe97378b30c8c184c23de96a5726f39f39cb9e34` |
| 25 | `theorem` | [prodIsoProd_inv_fst](../../../../../mathematics/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean/declarations/prodisoprod-inv-fst--9ad52c9a4b32463e8e737b27.md) | 228 | `result-track:9ad52c9a4b32463e8e737b2737dfe051555113940222b610ddb21e1a47bc04c7` |
| 26 | `theorem` | [prodIsoProd_inv_snd](../../../../../mathematics/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean/declarations/prodisoprod-inv-snd--bbfaf06f5743e9fa782c8f23.md) | 233 | `result-track:bbfaf06f5743e9fa782c8f23ae81c3347913f2b86fbef7441c3c206824d35689` |
| 27 | `theorem` | [prod_topology](../../../../../mathematics/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean/declarations/prod-topology--cfbcd6040b05454892b5ef0e.md) | 237 | `result-track:cfbcd6040b05454892b5ef0e42f7481767c78bdb82d6943a088c8aca9c79a969` |
| 28 | `theorem` | [range_prod_map](../../../../../mathematics/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean/declarations/range-prod-map--557d72b96c634dd53f3ed2a4.md) | 248 | `result-track:557d72b96c634dd53f3ed2a443544441689607f9b680b1218c651bc79c5440f4` |
| 29 | `theorem` | [inducing_prod_map](../../../../../mathematics/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean/declarations/inducing-prod-map--b9efeace0d93efe8ddf3e3c1.md) | 272 | `result-track:b9efeace0d93efe8ddf3e3c1a652a16cec797fd445f4a028117121a0e3178d8a` |
| 30 | `theorem` | [embedding_prod_map](../../../../../mathematics/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean/declarations/embedding-prod-map--7e88b42c8caba7b770998603.md) | 281 | `result-track:7e88b42c8caba7b770998603147a301ba19ffee4c6449dc8a7338d8d7de99c4d` |
| 31 | `def` | [binaryCofan](../../../../../mathematics/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean/declarations/binarycofan--eb4b46b09716773e24db9240.md) | 292 | `declaration-track:eb4b46b09716773e24db924027688f6d366fa48f842d7063b3184357b809a8e9` |
| 32 | `def` | [binaryCofanIsColimit](../../../../../mathematics/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean/declarations/binarycofaniscolimit--5db48cb3623307ddc55cfdd9.md) | 297 | `declaration-track:5db48cb3623307ddc55cfdd9ecc77772d1cbb4483e978ed96c7105be0245174a` |
| 33 | `theorem` | [binaryCofan_isColimit_iff](../../../../../mathematics/Topology/GeneralTopology/Products/Variant041791c4e1ea71049741c00c1f0fc35b9aa2a4af088d89e199ce25d25bd6af18.lean/declarations/binarycofan-iscolimit-iff--534092bfb239fb09d838d664.md) | 313 | `result-track:534092bfb239fb09d838d66462cd23315591d1440f4659050be8eace50bd0a62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
