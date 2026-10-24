# Verification target: GRWTSK.Topology.GeneralTopology.Unique.Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "308e0ac542c4dfd28e7a09452f03f1499653d46c",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `308e0ac542c4dfd28e7a09452f03f1499653d46c`.

Source path: `GRWTSK/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.NonUnital` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.StoneWeierstrass` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/declarations/instance--753a087f20f5b3dbe301e952.md) | 35 | `declaration-track:753a087f20f5b3dbe301e952f970f47255df1a5fa661cc5ccfbeac8fa04b509a` |
| 2 | `instance` | [Real.instContinuousMapUniqueHom](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/declarations/real-instcontinuousmapuniquehom--bc3e691069791590fb4edc82.md) | 43 | `declaration-track:bc3e691069791590fb4edc82a7efee91b5604a4b09c55b09c7fd349fc6a5bde1` |
| 3 | `instance` | [Complex.instContinuousMapUniqueHom](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/declarations/complex-instcontinuousmapuniquehom--30356252c4859d9a0746e307.md) | 48 | `declaration-track:30356252c4859d9a0746e30769ba03b29338cec42b7ab01efbabcf985bd07072` |
| 4 | `def` | [toNNReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/declarations/tonnreal--a972afd7720288815d1058ea.md) | 63 | `declaration-track:a972afd7720288815d1058eada354507ffbb4c4b479d3852e2cb237963b1c4c6` |
| 5 | `lemma` | [continuous_toNNReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/declarations/continuous-tonnreal--94ce8848e8d4e9029440a1ab.md) | 66 | `result-track:94ce8848e8d4e9029440a1ab773def1edb0c91998b619fd40a52d9fd1d43f204` |
| 6 | `lemma` | [toNNReal_apply](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/declarations/tonnreal-apply--02f5c214f1a04bf0524996a0.md) | 69 | `result-track:02f5c214f1a04bf0524996a0fbaf167452f48b88117ec17110402d4b334a1579` |
| 7 | `lemma` | [toNNReal_add_add_neg_add_neg_eq](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/declarations/tonnreal-add-add-neg-add-neg-eq--f1e1e0afc7c4a5db9d4438fa.md) | 71 | `result-track:f1e1e0afc7c4a5db9d4438fa97955391c47807563e1ba2019b2d51d181302087` |
| 8 | `lemma` | [toNNReal_mul_add_neg_mul_add_mul_neg_eq](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/declarations/tonnreal-mul-add-neg-mul-add-mul-neg-eq--7c97b94ece595ca63f419145.md) | 78 | `result-track:7c97b94ece595ca63f41914524f77b263f8c748ae8514fcb6a3389b50a926ca9` |
| 9 | `lemma` | [toNNReal_algebraMap](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/declarations/tonnreal-algebramap--5c9efc283871f029f837f9e6.md) | 86 | `result-track:5c9efc283871f029f837f9e63f31a2f1c06ce3cf8f4c6e59f46c1feb78766dfb` |
| 10 | `lemma` | [toNNReal_neg_algebraMap](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/declarations/tonnreal-neg-algebramap--98ac098dc6d7d09d2cad856d.md) | 91 | `result-track:98ac098dc6d7d09d2cad856dd526ea24e0a13553c0d55c20976227521d236635` |
| 11 | `lemma` | [toNNReal_one](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/declarations/tonnreal-one--6c5203dc844b965d0f55221c.md) | 95 | `result-track:6c5203dc844b965d0f55221c9ac4f7f06c1fccbcbdd7ee3df84559a7b28ea977` |
| 12 | `lemma` | [toNNReal_neg_one](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/declarations/tonnreal-neg-one--d78a3dbba8f0fc3092328a30.md) | 98 | `result-track:d78a3dbba8f0fc3092328a308e09f2029e5bb548cb3fd517239af927f68acc0c` |
| 13 | `def` | [realContinuousMapOfNNReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/declarations/realcontinuousmapofnnreal--96e5a824f72c5d0641df84d7.md) | 113 | `declaration-track:96e5a824f72c5d0641df84d78c8a600c043596c91a5fb51bdf67f1b925e6f605` |
| 14 | `lemma` | [continuous_realContinuousMapOfNNReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/declarations/continuous-realcontinuousmapofnnreal--eb6a6b47f0babfb11eb179c8.md) | 143 | `result-track:eb6a6b47f0babfb11eb179c80c542762fa80856a25d708dfad9b917d3414842d` |
| 15 | `lemma` | [realContinuousMapOfNNReal_apply_comp_toReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/declarations/realcontinuousmapofnnreal-apply-comp-toreal--16ccbde263d65a1df297e3bc.md) | 151 | `result-track:16ccbde263d65a1df297e3bc5468986e9eccce6f17a6dd66d3c4144776489114` |
| 16 | `lemma` | [realContinuousMapOfNNReal_injective](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/declarations/realcontinuousmapofnnreal-injective--bbafcac6211b0d3746402cd6.md) | 162 | `result-track:bbafcac6211b0d3746402cd601d8e4b0989ccd1a7f42049b36eb6256863f896c` |
| 17 | `instance` | [NNReal.instContinuousMap.UniqueHom](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/declarations/nnreal-instcontinuousmap-uniquehom--4c267a0a36a367c7f4972efa.md) | 172 | `declaration-track:4c267a0a36a367c7f4972efa212cef458581075de54062c297fe3160d03c4437` |
| 18 | `instance` | [RCLike.uniqueNonUnitalContinuousFunctionalCalculus](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/declarations/rclike-uniquenonunitalcontinuousfunctionalcalculus--1fe670c11725c87b245452d3.md) | 216 | `declaration-track:1fe670c11725c87b245452d3340e63550ed8cdbcbeac780c8bc532267a82ac9d` |
| 19 | `def` | [toNNReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/declarations/tonnreal--2cf90d270b94c72c478aa4c7.md) | 238 | `declaration-track:2cf90d270b94c72c478aa4c7139d7cc3275f87ae004e5ed144b816ab89bb48ae` |
| 20 | `lemma` | [toNNReal_apply](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/declarations/tonnreal-apply--009dce09e74cfa639397ab07.md) | 241 | `result-track:009dce09e74cfa639397ab0712ef5ff139f4067efe1fe57fc7ce169d4fb2d6a0` |
| 21 | `lemma` | [continuous_toNNReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/declarations/continuous-tonnreal--950ef68f3b92377dac80b023.md) | 244 | `result-track:950ef68f3b92377dac80b0239fc21550a4b4cfce4e9fd9b29aecb4050557143c` |
| 22 | `lemma` | [toContinuousMapHom_toNNReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/declarations/tocontinuousmaphom-tonnreal--efc6e22e4b197dc5c0c40e9d.md) | 249 | `result-track:efc6e22e4b197dc5c0c40e9d43ac97dcc29e8aaeadde88fcf1cf61c5fa2b009d` |
| 23 | `lemma` | [toNNReal_smul](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/declarations/tonnreal-smul--4426623457f09384b2e743d9.md) | 255 | `result-track:4426623457f09384b2e743d9fb570faa9a6d2bd94b952824c835ec08b195fa3c` |
| 24 | `lemma` | [toNNReal_neg_smul](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/declarations/tonnreal-neg-smul--fe82d7d422bbbc16d7f1a6c7.md) | 264 | `result-track:fe82d7d422bbbc16d7f1a6c70497647c44387e8950fb6d789a7e42752d1538dd` |
| 25 | `lemma` | [toNNReal_mul_add_neg_mul_add_mul_neg_eq](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/declarations/tonnreal-mul-add-neg-mul-add-mul-neg-eq--9c8b92744dd8265cb5757c0e.md) | 267 | `result-track:9c8b92744dd8265cb5757c0e18bdc9d98a4b89c865804095038bc0a91e596de9` |
| 26 | `lemma` | [toNNReal_add_add_neg_add_neg_eq](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/declarations/tonnreal-add-add-neg-add-neg-eq--14bc67a756efb2eb6b116c99.md) | 274 | `result-track:14bc67a756efb2eb6b116c99f9ba02f3587ccf4a1d8f2592ca68013471b206ae` |
| 27 | `def` | [realContinuousMapZeroOfNNReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/declarations/realcontinuousmapzeroofnnreal--72f722e83065d3542235e586.md) | 297 | `declaration-track:72f722e83065d3542235e5862d1d2499dd1265a5d85608299457accf21390f40` |
| 28 | `lemma` | [continuous_realContinuousMapZeroOfNNReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/declarations/continuous-realcontinuousmapzeroofnnreal--ea80dfd80447b5d92573e8e3.md) | 329 | `result-track:ea80dfd80447b5d92573e8e35ad23ac958a706e2547f4ffb6edc669b8a65b492` |
| 29 | `lemma` | [realContinuousMapZeroOfNNReal_apply_comp_toReal](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/declarations/realcontinuousmapzeroofnnreal-apply-comp-toreal--a5a8650f1fbcc6cfb4faa799.md) | 337 | `result-track:a5a8650f1fbcc6cfb4faa7995d5c4974cc5e3c42dd4782fb47040d874b159dbc` |
| 30 | `lemma` | [realContinuousMapZeroOfNNReal_injective](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/declarations/realcontinuousmapzeroofnnreal-injective--04991a4cb2ca938517f8f97d.md) | 349 | `result-track:04991a4cb2ca938517f8f97db7364645db879a7f4f1ef36c8471b7ba065ead39` |
| 31 | `instance` | [NNReal.instContinuousMapZero.UniqueHom](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/declarations/nnreal-instcontinuousmapzero-uniquehom--d3802855b9655928dc518f0a.md) | 359 | `declaration-track:d3802855b9655928dc518f0ae02a230754fc378948b4250d4f5106ea5c7b63f1` |
| 32 | `lemma` | [NonUnitalStarAlgHomClass.map_cfcₙ](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/declarations/nonunitalstaralghomclass-map-cfc--60769dd424456d8edfdc5e84.md) | 427 | `result-track:60769dd424456d8edfdc5e84cf423b0806b17c14f5981a8490ec59fa02d05e2e` |
| 33 | `lemma` | [NonUnitalStarAlgHom.map_cfcₙ](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/declarations/nonunitalstaralghom-map-cfc--fa66881e9ec93e4b6307c472.md) | 454 | `result-track:fa66881e9ec93e4b6307c472f75d7bcaf0f7884b890a1378786d178d26d8329b` |
| 34 | `lemma` | [StarAlgHomClass.map_cfc](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/declarations/staralghomclass-map-cfc--6481976a46fa36417fafc821.md) | 477 | `result-track:6481976a46fa36417fafc82169f3b0e2c3f628057f5b6fcf09369cb1802b365d` |
| 35 | `lemma` | [StarAlgHom.map_cfc](../../../../../mathematics/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/declarations/staralghom-map-cfc--0fb6cbaacbe9dd918b73b3ce.md) | 502 | `result-track:0fb6cbaacbe9dd918b73b3ce050ff1e5d22abedd087afc37d2bb44fd4d3a82be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
