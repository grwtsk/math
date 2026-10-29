# Verification target: Compact Convergence Namespaced Tendsto Iff Forall Is Compact Tendsto Uniformly On

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "158e3b258505957369d11e6c01e7e4979aa586bf",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CompactConvergence/Variant874a4b9e978e648ac5b38308ab9b11d86509c6cc35ea9a6fdf38a6114f1fd3e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/CompactConvergenceNamespacedTendstoIffForallIsCompactTendstoUniformlyOn.lean/index.md) · [Full source](../../../../GeneralTopology/CompactConvergenceNamespacedTendstoIffForallIsCompactTendstoUniformlyOn.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `158e3b258505957369d11e6c01e7e4979aa586bf`.

Source path: `GRWTSK/Topology/GeneralTopology/CompactConvergence/Variant874a4b9e978e648ac5b38308ab9b11d86509c6cc35ea9a6fdf38a6114f1fd3e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CompactConvergence/Variant874a4b9e978e648ac5b38308ab9b11d86509c6cc35ea9a6fdf38a6114f1fd3e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.CompactOpen` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyFinite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Maps.Proper.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.UniformConvergenceTopology` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Compact` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_iff_forall_isCompact_tendstoUniformlyOn](../../../../GeneralTopology/CompactConvergenceNamespacedTendstoIffForallIsCompactTendstoUniformlyOn.lean/declarations/tendsto-iff-forall-iscompact-tendstouniformlyon.md) | 107 | `result-track:77da296ae74943748fff7e5d045b64da44f05cd3e9484b33e390aa2d2cb414fd` |
| 2 | `def` | [toUniformOnFunIsCompact](../../../../GeneralTopology/CompactConvergenceNamespacedTendstoIffForallIsCompactTendstoUniformlyOn.lean/declarations/touniformonfuniscompact.md) | 156 | `declaration-track:d0c5828cdc606bb9ae9e046c5867deea5265fededccb940352e2f542c5fcd1e7` |
| 3 | `theorem` | [toUniformOnFun_toFun](../../../../GeneralTopology/CompactConvergenceNamespacedTendstoIffForallIsCompactTendstoUniformlyOn.lean/declarations/touniformonfun-tofun.md) | 160 | `result-track:d3f00b3e7b2033de859a55a2e1ffd292a26e727e916db1cac5b4d8a10276583e` |
| 4 | `theorem` | [range_toUniformOnFunIsCompact](../../../../GeneralTopology/CompactConvergenceNamespacedTendstoIffForallIsCompactTendstoUniformlyOn.lean/declarations/range-touniformonfuniscompact.md) | 163 | `result-track:bf6f9bec3396e6fc077d42677fc155e9ee9d81c12bc9c4e27a648378e4418fdb` |
| 5 | `instance` | [compactConvergenceUniformSpace](../../../../GeneralTopology/CompactConvergenceNamespacedTendstoIffForallIsCompactTendstoUniformlyOn.lean/declarations/compactconvergenceuniformspace.md) | 176 | `declaration-track:2e78a7cd4f7ad37352a7c68156789b6e01393ccb7ffc143880c33de277194f18` |
| 6 | `theorem` | [isUniformEmbedding_toUniformOnFunIsCompact](../../../../GeneralTopology/CompactConvergenceNamespacedTendstoIffForallIsCompactTendstoUniformlyOn.lean/declarations/isuniformembedding-touniformonfuniscompact.md) | 183 | `result-track:a90bcfec09ed6b92ec9543a9d4bbc7c7913b22196478b76600c1316f49f80b54` |
| 7 | `theorem` | [Compact Convergence Namespaced Tendsto Iff Forall Is Compact Tendsto Uniformly On](../../../../GeneralTopology/CompactConvergenceNamespacedTendstoIffForallIsCompactTendstoUniformlyOn.lean/declarations/root-grwtsk-topology-generaltopology-tendstoiffforalliscompacttendstouni.md) | 192 | `result-track:5df20b120fed6106bce8efef24ff2486175ca8c0c2fdc6a02aaea5910e052e3c` |
| 8 | `theorem` | [hasBasis_compactConvergenceUniformity](../../../../GeneralTopology/CompactConvergenceNamespacedTendstoIffForallIsCompactTendstoUniformlyOn.lean/declarations/hasbasis-compactconvergenceuniformity.md) | 200 | `result-track:2d7d055c6f20329a1601bf8c36c151dab113c3ebd0e1c3c3c91bdef18ac77074` |
| 9 | `theorem` | [mem_compactConvergence_entourage_iff](../../../../GeneralTopology/CompactConvergenceNamespacedTendstoIffForallIsCompactTendstoUniformlyOn.lean/declarations/mem-compactconvergence-entourage-iff.md) | 205 | `result-track:042487fb74934984133deb4906834f1812356eb6ef34abcb09cda99cdac22789` |
| 10 | `theorem` | [Compact Convergence Namespaced Tendsto Iff Forall Is Compact Tendsto Uniformly On](../../../../GeneralTopology/CompactConvergenceNamespacedTendstoIffForallIsCompactTendstoUniformlyOn.lean/declarations/root-grwtsk-topology-generaltopology-tendstoiffforalliscompacttendstouni-source-edition-4.md) | 215 | `result-track:fecc43d224b1af8c53499894ddcd084b81183152407ee350e00387ba62985ee1` |
| 11 | `theorem` | [Compact Convergence Namespaced Tendsto Iff Forall Is Compact Tendsto Uniformly On](../../../../GeneralTopology/CompactConvergenceNamespacedTendstoIffForallIsCompactTendstoUniformlyOn.lean/declarations/root-grwtsk-topology-generaltopology-tendstoiffforalliscompacttendstouni-source-edition-3.md) | 222 | `result-track:8fc74c666ab1c109a3013c90382cc1e235f81f58e3d0087ab0c900946a13466e` |
| 12 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactConvergenceNamespacedTendstoIffForallIsCompactTendstoUniformlyOn.lean/declarations/instance.md) | 233 | `declaration-track:2168462d396e592bf8ef31f2840ef4f53e88f2649377aa39ad13b42a5b5e8cda` |
| 13 | `theorem` | [tendsto_of_tendstoLocallyUniformly](../../../../GeneralTopology/CompactConvergenceNamespacedTendstoIffForallIsCompactTendstoUniformlyOn.lean/declarations/tendsto-of-tendstolocallyuniformly.md) | 242 | `result-track:6f5ebd70820b7a540c20887d23eea2ede279f85fc11659da1deb3528d4d8c972` |
| 14 | `theorem` | [tendsto_iff_tendstoLocallyUniformly](../../../../GeneralTopology/CompactConvergenceNamespacedTendstoIffForallIsCompactTendstoUniformlyOn.lean/declarations/tendsto-iff-tendstolocallyuniformly.md) | 254 | `result-track:62b8ea6a9dcb86cf4b5c405d42060688c9caf947d16568d4133162195e56becf` |
| 15 | `theorem` | [uniformContinuous_comp](../../../../GeneralTopology/CompactConvergenceNamespacedTendstoIffForallIsCompactTendstoUniformlyOn.lean/declarations/uniformcontinuous-comp.md) | 265 | `result-track:d2f26f6904118cb0e843050ac2c767d4b29d96f4b5c5c1aa77ccbf8d9b760d78` |
| 16 | `theorem` | [isUniformInducing_comp](../../../../GeneralTopology/CompactConvergenceNamespacedTendstoIffForallIsCompactTendstoUniformlyOn.lean/declarations/isuniforminducing-comp.md) | 271 | `result-track:8e3d6f3c558c185105aacbd0581a7f14eac8d620b7283362589a960dcfaf3906` |
| 17 | `theorem` | [isUniformEmbedding_comp](../../../../GeneralTopology/CompactConvergenceNamespacedTendstoIffForallIsCompactTendstoUniformlyOn.lean/declarations/isuniformembedding-comp.md) | 277 | `result-track:41a418bc870af22d71ac52e81587ee1978bbe9cd89a462949eb02e39b97f0f73` |
| 18 | `theorem` | [uniformContinuous_comp_left](../../../../GeneralTopology/CompactConvergenceNamespacedTendstoIffForallIsCompactTendstoUniformlyOn.lean/declarations/uniformcontinuous-comp-left.md) | 283 | `result-track:d3ebbe20b38ee3584ac422fbc7fcf459080b1f185e02a27b91f4b4e508824b6f` |
| 19 | `def` | [Compact Convergence Namespaced Tendsto Iff Forall Is Compact Tendsto Uniformly On](../../../../GeneralTopology/CompactConvergenceNamespacedTendstoIffForallIsCompactTendstoUniformlyOn.lean/declarations/root-grwtsk-topology-generaltopology-tendstoiffforalliscompacttendstouni-source-edition-5.md) | 291 | `declaration-track:feec1fcc1736b266831675568e189bd45a17576d79c0779bad628839691af946` |
| 20 | `theorem` | [hasBasis_compactConvergenceUniformity_of_compact](../../../../GeneralTopology/CompactConvergenceNamespacedTendstoIffForallIsCompactTendstoUniformlyOn.lean/declarations/hasbasis-compactconvergenceuniformity-of-compact.md) | 308 | `result-track:de9127f3dcef7ee1bbdf967bd3bfa874dbd967b0002256d1a29deff78793d1ba` |
| 21 | `theorem` | [Compact Convergence Namespaced Tendsto Iff Forall Is Compact Tendsto Uniformly On](../../../../GeneralTopology/CompactConvergenceNamespacedTendstoIffForallIsCompactTendstoUniformlyOn.lean/declarations/root-grwtsk-topology-generaltopology-tendstoiffforalliscompacttendstouni-source-edition-2.md) | 315 | `result-track:73496ff4022c0a0a2a011e9f059cb52f16d5d70f503258380788f811844126ae` |
| 22 | `theorem` | [tendsto_iff_tendstoUniformly](../../../../GeneralTopology/CompactConvergenceNamespacedTendstoIffForallIsCompactTendstoUniformlyOn.lean/declarations/tendsto-iff-tendstouniformly.md) | 324 | `result-track:2642820d5acd72594672f178bac310b395608ef3c3b06055772ee1aa17eaf016` |
| 23 | `theorem` | [uniformSpace_eq_inf_precomp_of_cover](../../../../GeneralTopology/CompactConvergenceNamespacedTendstoIffForallIsCompactTendstoUniformlyOn.lean/declarations/uniformspace-eq-inf-precomp-of-cover.md) | 331 | `result-track:d808a82bfdc0b3bad7f1b25830e9acd759ac00c6363dd374732fef3983b26a69` |
| 24 | `theorem` | [uniformSpace_eq_iInf_precomp_of_cover](../../../../GeneralTopology/CompactConvergenceNamespacedTendstoIffForallIsCompactTendstoUniformlyOn.lean/declarations/uniformspace-eq-iinf-precomp-of-cover.md) | 354 | `result-track:99c39394adfdc485aa1b4679ce6f2059b6931af2c885f069074a648b065bea54` |
| 25 | `lemma` | [completeSpace_of_isCoherentWith](../../../../GeneralTopology/CompactConvergenceNamespacedTendstoIffForallIsCompactTendstoUniformlyOn.lean/declarations/completespace-of-iscoherentwith.md) | 384 | `result-track:92c2bfe74e8c68e613281d492bc8e58a413cb77fc6d9ac7af49f0604e671d51d` |
| 26 | `instance` | [instCompleteSpaceOfWeaklyLocallyCompactSpace](../../../../GeneralTopology/CompactConvergenceNamespacedTendstoIffForallIsCompactTendstoUniformlyOn.lean/declarations/instcompletespaceofweaklylocallycompactspace.md) | 394 | `declaration-track:1886362fdb46cf0903032a03677212c90126ecb42525feeec9b32b5c7264f353` |
| 27 | `instance` | [instCompleteSpaceOfSequentialSpace](../../../../GeneralTopology/CompactConvergenceNamespacedTendstoIffForallIsCompactTendstoUniformlyOn.lean/declarations/instcompletespaceofsequentialspace.md) | 397 | `declaration-track:df38e7650eb00a90352a9096797dcbb44aa315c7f2a5a9e86b4dc4d8d40862bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d7762eef549f6f24898a196759ac6ada3833aeec2fdb60810df2b8f901fb9cf4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/CompactConvergence/Variant874a4b9e978e648ac5b38308ab9b11d86509c6cc35ea9a6fdf38a6114f1fd3e0.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/CompactConvergence/Variant874a4b9e978e648ac5b38308ab9b11d86509c6cc35ea9a6fdf38a6114f1fd3e0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
