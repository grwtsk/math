# Verification target: GRWTSK.Topology.GeneralTopology.SmoothingSeminorm.Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb856f040270765afe527066a77b6bb4b1af22e0",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb856f040270765afe527066a77b6bb4b1af22e0`.

Source path: `GRWTSK/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.GroupWithZero.Bounds` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Unbundled.RingSeminorm` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Continuity` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Sequences` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [smoothingSeminormSeq](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean/declarations/smoothingseminormseq--8c54c79fbe2c0b454fbd0e61.md) | 52 | `declaration-track:8c54c79fbe2c0b454fbd0e61ea2c6b9639dd87b8e9d46bfcb7e442662fadeb6a` |
| 2 | `theorem` | [smoothingSeminormSeq_exists_pnat](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean/declarations/smoothingseminormseq-exists-pnat--94ea52530c6ef8b77ddf4471.md) | 56 | `result-track:94ea52530c6ef8b77ddf4471985049aaf844bfd268b615c7de6d6542382a277b` |
| 3 | `theorem` | [smoothingSeminormSeq_tendsto_aux](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean/declarations/smoothingseminormseq-tendsto-aux--a4265e8e0ef5438938cad243.md) | 61 | `result-track:a4265e8e0ef5438938cad2434ef82b7dda3c0044510d2a9ef0efb28ca8e4372d` |
| 4 | `theorem` | [zero_mem_lowerBounds_smoothingSeminormSeq_range](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean/declarations/zero-mem-lowerbounds-smoothingseminormseq-range--3c6050b8898b168b744aeda7.md) | 82 | `result-track:3c6050b8898b168b744aeda7779693c80ec0adea6a3c9f2e06848716260e5bc8` |
| 5 | `theorem` | [smoothingSeminormSeq_bddBelow](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean/declarations/smoothingseminormseq-bddbelow--49e349d6e9f7d0d3eefaf292.md) | 88 | `result-track:49e349d6e9f7d0d3eefaf292f6d09640ed65a6828f490577640d1f66f03d7dc6` |
| 6 | `abbrev` | [smoothingFun](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean/declarations/smoothingfun--5e33a5820d0f47006a36778f.md) | 93 | `declaration-track:5e33a5820d0f47006a36778f808f4d6192fed26b6e84111254dc1a1b0a6e6d91` |
| 7 | `theorem` | [tendsto_smoothingFun_of_eq_zero](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean/declarations/tendsto-smoothingfun-of-eq-zero--92e09e3efb367594cb1d7983.md) | 97 | `result-track:92e09e3efb367594cb1d7983ac17c2502cf8e0c2d21657f9a9b58370f58ffa46` |
| 8 | `theorem` | [tendsto_smoothingFun_of_ne_zero](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean/declarations/tendsto-smoothingfun-of-ne-zero--7eaad029ab655db158c06c7d.md) | 113 | `result-track:7eaad029ab655db158c06c7dace235451be9c9be0b16718a27f6c3d350b5438b` |
| 9 | `theorem` | [tendsto_smoothingFun_of_map_one_le_one](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean/declarations/tendsto-smoothingfun-of-map-one-le-one--c48dfb191f5bc64bd08bb45d.md) | 236 | `result-track:c48dfb191f5bc64bd08bb45d5769bf1dfb38527f4c5a3aa7a0f8c97756f31cb2` |
| 10 | `theorem` | [smoothingFun_nonneg](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean/declarations/smoothingfun-nonneg--c93880e4ac235d33f7a725af.md) | 243 | `result-track:c93880e4ac235d33f7a725af7f3f9911e9106b6457ceb8e6ae8c0a76d5d324e4` |
| 11 | `theorem` | [smoothingFun_one_le](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean/declarations/smoothingfun-one-le--ea573331dae4bc52092e3a84.md) | 248 | `result-track:ea573331dae4bc52092e3a840327ae4245495abd4b5ca7d056a1b8774de370ce` |
| 12 | `theorem` | [smoothingFun_le](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean/declarations/smoothingfun-le--d7c7a9cc41cdb1fa4c0f5be2.md) | 263 | `result-track:d7c7a9cc41cdb1fa4c0f5be2c9b7dbff5441d0ba7e097b17d9e36a1214c892ff` |
| 13 | `theorem` | [smoothingFun_le_self](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean/declarations/smoothingfun-le-self--7ed31572420aa497dcacfa9d.md) | 268 | `result-track:7ed31572420aa497dcacfa9d403ba4e30403ce6438cd9af76b8560c44b86a5e8` |
| 14 | `def` | [mu](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean/declarations/mu--ace535c78551b438c5111bdd.md) | 280 | `declaration-track:ace535c78551b438c5111bdd081910e1337bbc29e2d32590ed9dadb5e4368f47` |
| 15 | `theorem` | [mu_property](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean/declarations/mu-property--1a81aaf6396173652a21e1f9.md) | 282 | `result-track:1a81aaf6396173652a21e1f9e7ac4bbbefe53c98e0f49ac7cc48dd65f166d2d2` |
| 16 | `theorem` | [mu_le](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean/declarations/mu-le--460c813f37613fb20b8267c8.md) | 286 | `result-track:460c813f37613fb20b8267c8847d71b419e6dcfedf2d5f59c6f1c379de6c16fa` |
| 17 | `theorem` | [mu_bdd](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean/declarations/mu-bdd--114f0ea74c34ee4d406f53bf.md) | 289 | `result-track:114f0ea74c34ee4d406f53bf6e83c7e992c139a668d88d93ba165c75dd1462ed` |
| 18 | `theorem` | [μ_bddBelow](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean/declarations/bddbelow--41f12b878e8786f27ffa04cc.md) | 296 | `result-track:41f12b878e8786f27ffa04ccfe71c4e71edaa85a370f20e5e08ee7396f05fbac` |
| 19 | `theorem` | [μ_bddAbove](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean/declarations/bddabove--54bf61f201fe1eaa18aaa24e.md) | 305 | `result-track:54bf61f201fe1eaa18aaa24e26426b1f8ad7881ffd081cd828d96421fc9b9a1b` |
| 20 | `theorem` | [μ_bddAbove'](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean/declarations/bddabove--428cdb431f41f57bdf705242.md) | 324 | `result-track:428cdb431f41f57bdf705242b78b4cefabd4871caccc6a933b19ffd9beb1ce43` |
| 21 | `theorem` | [μ_nonempty](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean/declarations/nonempty--6e905499e6397d2b6a082089.md) | 331 | `result-track:6e905499e6397d2b6a08208943b2da94e775db1ecd7ce5e2674550181fda74bc` |
| 22 | `theorem` | [μ_limsup_le_one](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean/declarations/limsup-le-one--8e727a4ba48507ef4e67e8dd.md) | 348 | `result-track:8e727a4ba48507ef4e67e8dd2edd4a5fc1f8a5ab24325bab75a619680ea2ccaf` |
| 23 | `theorem` | [limsup_mu_le](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean/declarations/limsup-mu-le--f888fb2dbeefcb009a3972b1.md) | 375 | `result-track:f888fb2dbeefcb009a3972b1f8280962c989f32f551337d5530c0b39c727836f` |
| 24 | `theorem` | [tendsto_smoothingFun_comp](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean/declarations/tendsto-smoothingfun-comp--c2a0c7997b1fc9583e7fa45f.md) | 414 | `result-track:c2a0c7997b1fc9583e7fa45f39121ddab65250cad27aaf2b25e5c4c9cb26474d` |
| 25 | `theorem` | [isNonarchimedean_smoothingFun](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean/declarations/isnonarchimedean-smoothingfun--070f96fd29431551cadc79d1.md) | 421 | `result-track:070f96fd29431551cadc79d1be1e8e6fcab9f1a82d87760985191945b690059d` |
| 26 | `def` | [smoothingSeminorm](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean/declarations/smoothingseminorm--c833905bbcdcdbbb0848303b.md) | 515 | `declaration-track:c833905bbcdcdbbb0848303b8de1867dcfe007c24291d17f27c1d8cdf71c584d` |
| 27 | `theorem` | [smoothingSeminorm_map_one_le_one](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean/declarations/smoothingseminorm-map-one-le-one--1a47690e690226217c5a0d3d.md) | 546 | `result-track:1a47690e690226217c5a0d3d9efeb81bb9e537708f61bdaee13d20f0fc4e4b98` |
| 28 | `theorem` | [isPowMul_smoothingFun](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean/declarations/ispowmul-smoothingfun--278bcf69b532a0debd0be334.md) | 552 | `result-track:278bcf69b532a0debd0be3343bce08d4d6c3dc74994e1652e4c0d3e1a04c7919` |
| 29 | `theorem` | [smoothingFun_of_powMul](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean/declarations/smoothingfun-of-powmul--61e92b718b84c38f5fb9309f.md) | 567 | `result-track:61e92b718b84c38f5fb9309fed0957e6fd0b8c024eb7f456b2d8c6386d82a7f6` |
| 30 | `theorem` | [smoothingFun_apply_of_map_mul_eq_mul](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean/declarations/smoothingfun-apply-of-map-mul-eq-mul--b634b7bc28e8a4c90e915917.md) | 579 | `result-track:b634b7bc28e8a4c90e915917cc07b6cdd8899b18a0c54fd486127742a22528eb` |
| 31 | `theorem` | [smoothingSeminorm_apply_of_map_mul_eq_mul](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean/declarations/smoothingseminorm-apply-of-map-mul-eq-mul--d4b083b46b68f51da9eb8c8f.md) | 600 | `result-track:d4b083b46b68f51da9eb8c8f0f8d0d305488cc0f5c0db164d975152a312e87fd` |
| 32 | `theorem` | [smoothingFun_of_map_mul_eq_mul](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean/declarations/smoothingfun-of-map-mul-eq-mul--8df20fbb1b5c5ec348566d95.md) | 606 | `result-track:8df20fbb1b5c5ec348566d95ba6617cd66447797a78a042d38e4b4f0a1546f30` |
| 33 | `theorem` | [smoothingSeminorm_of_mul](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant4c79d8aeee12536274e9da3128b00c2a1b8317e80d2370b362ceeb96a5c8b058.lean/declarations/smoothingseminorm-of-mul--7d0eb49e877170beb2b03557.md) | 625 | `result-track:7d0eb49e877170beb2b03557f4b839a2ffd4a40c4719d53cd91f89ef5c59b092` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
