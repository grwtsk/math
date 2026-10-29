# Verification target: Continuous Function Bounded

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27d2fbe28b79cb92d1c25e2ae69b7b16163015e8",
  "lexical_observation_count": 204,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Bounded/Variant83e1d9c7f5303e4cfa3597d20171233b28a2c156ebf3d5ea2d8f69dce5c47fb1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ContinuousFunctionBounded.lean/index.md) · [Full source](../../../../GeneralTopology/ContinuousFunctionBounded.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27d2fbe28b79cb92d1c25e2ae69b7b16163015e8`.

Source path: `GRWTSK/Topology/GeneralTopology/Bounded/Variant83e1d9c7f5303e4cfa3597d20171233b28a2c156ebf3d5ea2d8f69dce5c47fb1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Bounded/Variant83e1d9c7f5303e4cfa3597d20171233b28a2c156ebf3d5ea2d8f69dce5c47fb1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Order.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Star.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Sqrt` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Algebra` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Equicontinuity` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BoundedContinuousFunction](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/boundedcontinuousfunction.md) | 41 | `declaration-track:baa60786d6b5d94e6cc894a25972226e76a744c867b4dad41fe98a535f09b97c` |
| 2 | `class` | [BoundedContinuousMapClass](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/boundedcontinuousmapclass.md) | 55 | `declaration-track:123cc559defeb3b7079b8ad714f8d517db5d85e86e996cd473c5079c27f53a50` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/instance-source-edition-10.md) | 72 | `declaration-track:2696dd689941a9ee407684181af9a1f7a9c98153608f570009c100e027c53889` |
| 4 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/instance-source-edition-22.md) | 83 | `declaration-track:61f4d13c8c980304ee2539fa936d1d7897757ac435779fb4b913af15c365f2d9` |
| 5 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/instance-source-edition-33.md) | 86 | `declaration-track:c267b45a83eddd43ecf66c4da41703df67bd7f5bb34cd25a56db937be02fa1f4` |
| 6 | `theorem` | [coe_to_continuous_fun](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/coe-to-continuous-fun.md) | 93 | `result-track:c7cd8e2001708b9124a623ff280c361f1d8747dba72ee6f45722ad01befbc3fa` |
| 7 | `def` | [Simps.apply](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/simps-apply.md) | 98 | `declaration-track:0af6513ac9ff68ba6bde809ad3804b1be1fe6475bd452debb892b5cc7ac447f9` |
| 8 | `theorem` | [bounded](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/bounded.md) | 103 | `result-track:1794abd02c4138775109d1cc397f90d41d7963894dd53b8620a6342c87761a93` |
| 9 | `theorem` | [continuous](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/continuous.md) | 107 | `result-track:138f939a3c87ff5d93befacc59f0f24df15317be47be2a6a6967d6d5ddc5e877` |
| 10 | `theorem` | [ext](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/ext.md) | 112 | `result-track:901044df70b68457edae372111b0f1dec79f0fcd47f75445e78717ceb5ef8f8b` |
| 11 | `theorem` | [bounded_range](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/bounded-range.md) | 116 | `result-track:f975d205dd9912842d9717d6e55a98189ba4a041dbb544eaee943f67211cee37` |
| 12 | `theorem` | [bounded_image](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/bounded-image.md) | 120 | `result-track:367bd9bc480c0136dccfe38e63890679232eaf4d9ab4f845f181ef9337bda2ce` |
| 13 | `theorem` | [eq_of_empty](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/eq-of-empty.md) | 124 | `result-track:01955c20277ae3915f7facc78f63ec74672f897f9d81b6c0c7bef8cebaca2da6` |
| 14 | `def` | [mkOfBound](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/mkofbound.md) | 129 | `declaration-track:fde7673849f30688a2d679ec09586c6051a1c272d769f36788f1da2395525179` |
| 15 | `theorem` | [mkOfBound_coe](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/mkofbound-coe.md) | 134 | `result-track:c337ab3e5ab1282dbff158a73f422e6eb0a98a4034582bb4f14cc62f08546a92` |
| 16 | `def` | [mkOfCompact](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/mkofcompact.md) | 138 | `declaration-track:11862acda21e974ee8566dc758f289ed2a68f44a97189610d93bca98399a8708` |
| 17 | `theorem` | [mkOfCompact_apply](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/mkofcompact-apply.md) | 143 | `result-track:4472bd9f1ef20a77f945ced50f9647e3bc3488460d7abed444268abb67e03088` |
| 18 | `def` | [mkOfDiscrete](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/mkofdiscrete.md) | 149 | `declaration-track:21135932b3f4747dbca7e53cf4617c20a71018e68220457fd37345084cdd7034` |
| 19 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/instance-source-edition-30.md) | 155 | `declaration-track:b1465303c88ca0ddc9a24f70db1c8c10cdfbc2937d35f7d50918c13efd814c31` |
| 20 | `theorem` | [dist_eq](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/dist-eq.md) | 158 | `result-track:73b278d3c08047c9b10a19e048ca5330355c7907e2cc3254d109c1b95634a92a` |
| 21 | `theorem` | [dist_set_exists](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/dist-set-exists.md) | 161 | `result-track:d102974b3f42fef8b5fe91a6b789b439cbb06a615054e10fa6e97094be5611ce` |
| 22 | `theorem` | [dist_coe_le_dist](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/dist-coe-le-dist.md) | 169 | `result-track:e36c8e265d00b55c1624a68f403b55fb769f15b5d6aef181470fe604513de887` |
| 23 | `theorem` | [dist_nonneg'](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/dist-nonneg.md) | 176 | `result-track:b4b8ae08a047bfb332d66e946621135b3898a63e6fca1f983d6bf381c9c65667` |
| 24 | `theorem` | [dist_le](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/dist-le.md) | 180 | `result-track:c6fe33fb609ec808dcee9435c4eaa1aa215ff8fd93404e10223cafc8a33b3366` |
| 25 | `theorem` | [dist_le_iff_of_nonempty](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/dist-le-iff-of-nonempty.md) | 184 | `result-track:d703aff19be46a8f89db48b9948d5050f2c0f20daba068d21da1d27da3dcfa97` |
| 26 | `theorem` | [dist_lt_of_nonempty_compact](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/dist-lt-of-nonempty-compact.md) | 189 | `result-track:0b3224766410baa9272f3dc420e114b393ccce7f980f9c49af525a7c71bb0d51` |
| 27 | `theorem` | [dist_lt_iff_of_compact](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/dist-lt-iff-of-compact.md) | 197 | `result-track:c0966bd8714104236ab8b5e8afdc60da779819700b2c7bd374658ad63d1fa16b` |
| 28 | `theorem` | [dist_lt_iff_of_nonempty_compact](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/dist-lt-iff-of-nonempty-compact.md) | 211 | `result-track:abf2624e35fc335cfb49ae71897095db621760eeb1dc6fe43a77b297dc7e3927` |
| 29 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/instance-source-edition-36.md) | 217 | `declaration-track:f11e15091761d7fbb85322f7e06c65351b3a8e748929dfb1c1e7e39e0706cb80` |
| 30 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/instance-source-edition-6.md) | 226 | `declaration-track:19b4adccd0f44d95f97253f188d21a97d356e117c1aedf4081ae40c43eba676b` |
| 31 | `theorem` | [nndist_eq](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/nndist-eq.md) | 231 | `result-track:c9037915e72a997792024e92b1e759673aef9ef2ce9f9975aca60ff35454174d` |
| 32 | `theorem` | [nndist_set_exists](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/nndist-set-exists.md) | 237 | `result-track:4ee18ea964e9dd8bcc4f439b960532e99f71b2d8b3ac1eb78ab2831a2a14b90f` |
| 33 | `theorem` | [nndist_coe_le_nndist](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/nndist-coe-le-nndist.md) | 241 | `result-track:7bedacfbfc37124b9fbb86bb5a3d410d42bb6b54385ff29bf1d52120dab42583` |
| 34 | `theorem` | [dist_zero_of_empty](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/dist-zero-of-empty.md) | 246 | `result-track:d1c94b4f9c417cd3bacdc11918668a8fadea1829dce545bf3c7e6f9bfecb885d` |
| 35 | `theorem` | [dist_eq_iSup](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/dist-eq-isup.md) | 250 | `result-track:51eb4bd67c91e6c2008a35f7b3a405a9a171f1821be6840a5129a01dab376ea3` |
| 36 | `theorem` | [nndist_eq_iSup](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/nndist-eq-isup.md) | 256 | `result-track:de75642411fb79532b14e607585ed0484b36649cbdbc503f09eb21c03193b55b` |
| 37 | `theorem` | [tendsto_iff_tendstoUniformly](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/tendsto-iff-tendstouniformly.md) | 260 | `result-track:898a9a0ff2f2bc21a63d43536977cf53db7aed73ae87fec09ace816de901922d` |
| 38 | `theorem` | [inducing_coeFn](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/inducing-coefn.md) | 278 | `result-track:ad068122b01846a7042b7a8db7bec9ecf59631a2c2d0140cd87462b2ced92ac6` |
| 39 | `theorem` | [embedding_coeFn](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/embedding-coefn.md) | 287 | `result-track:d16378494ce67818140c012933b2d8d21c934879a8d808357b40bad46b5b877b` |
| 40 | `def` | [const](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/const.md) | 295 | `declaration-track:2bb28affc5d396845abde3469e766c39d6de37c984e7d5ff887dc4198d9114f8` |
| 41 | `theorem` | [const_apply'](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/const-apply.md) | 301 | `result-track:68396d2a72e40c1b4e02fa1c8a13b311f2bf3c603ab57af4de0bfeb67fce2895` |
| 42 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/instance-source-edition-8.md) | 305 | `declaration-track:1fa13aa6ce5b0808459d69a2700c784977e79b41ff22e2d627ffae2d40939e39` |
| 43 | `theorem` | [lipschitz_evalx](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/lipschitz-evalx.md) | 308 | `result-track:c93e7911a9d2e804bb3d115710221a668a16973c65d49e115a60a360cdf203ef` |
| 44 | `theorem` | [uniformContinuous_coe](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/uniformcontinuous-coe.md) | 312 | `result-track:59c9aa803e975b4b44371eb141b7c316f803d51662dddf41c85279ed6d6c7d46` |
| 45 | `theorem` | [continuous_coe](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/continuous-coe.md) | 316 | `result-track:80571eaff2ed1e9e41bd1907e05d5107c2d7ad14000fff32c147a51d8eb09a14` |
| 46 | `theorem` | [continuous_eval_const](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/continuous-eval-const.md) | 322 | `result-track:561cdae1eabc3e5c34cc3b62fc13c2d2e3a497d77ee80420ffcb00e6f17bcf45` |
| 47 | `theorem` | [continuous_eval](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/continuous-eval.md) | 328 | `result-track:af83a28cefb5d97a0d1515eff9c0f39e7f22059591cd0b528b74290c8729c116` |
| 48 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/instance-source-edition-21.md) | 333 | `declaration-track:6188edc2be8bb2c9799f4272b740b0d831b95b1910b5b3500cf734260a2b0186` |
| 49 | `def` | [compContinuous](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/compcontinuous.md) | 369 | `declaration-track:8d51aad667f45d4c58a1a67643e240ec81256081ceecec938187a8bdba7fdba6` |
| 50 | `theorem` | [coe_compContinuous](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/coe-compcontinuous.md) | 375 | `result-track:a056d7fae93ecf29ac9b76b5f3133f89aba551b9fcfc170da25bd6a6a83422b5` |
| 51 | `theorem` | [compContinuous_apply](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/compcontinuous-apply.md) | 380 | `result-track:5f288e514510c3a53b82b4d96bf6b29b8af3346802f66ccd6e668ecb57fd0673` |
| 52 | `theorem` | [lipschitz_compContinuous](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/lipschitz-compcontinuous.md) | 384 | `result-track:b7b943f3204a36e7bafe5f86d0dc8ac11fa1eae3a0ee6bcfc8141b5e63a73715` |
| 53 | `theorem` | [continuous_compContinuous](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/continuous-compcontinuous.md) | 389 | `result-track:5c76a6b046c63fee40e58a1a5938589524bee13c0feaf1de489c8d57cc7fc011` |
| 54 | `def` | [restrict](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/restrict.md) | 395 | `declaration-track:44d7e40fc334d33c66e0c7cf4e14eaa07dee467a5376c54fc8ae59ae4d3e1d22` |
| 55 | `theorem` | [coe_restrict](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/coe-restrict.md) | 400 | `result-track:080116dda1487fb73a375b5b4485ece1bc55944de42c0a9735b6965cef1fd128` |
| 56 | `theorem` | [restrict_apply](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/restrict-apply.md) | 404 | `result-track:b31c36909821f370c4185d4f5358fd1d6b3f25f4d8a48f22722da2c1524d251b` |
| 57 | `def` | [comp](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/comp.md) | 409 | `declaration-track:ecf84c637ce0dcb57a73a4c2c8ba350039ad97ef5a2d0e2d7da5a77fc3c1ccb7` |
| 58 | `theorem` | [lipschitz_comp](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/lipschitz-comp.md) | 421 | `result-track:57a7705b239019dec1d7ab7950443b7c10e1eae0f39ba9f3bba7b01a72719a56` |
| 59 | `theorem` | [uniformContinuous_comp](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/uniformcontinuous-comp.md) | 431 | `result-track:34825c2c7b91998b99ea6633a426ed214951368ab38310a4fb56b950401b1513` |
| 60 | `theorem` | [continuous_comp](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/continuous-comp.md) | 437 | `result-track:8ba716236a54ecf1ed8ba959d16e51784f79eb72abca7a7db7f859efcf763686` |
| 61 | `def` | [codRestrict](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/codrestrict.md) | 443 | `declaration-track:78ba86f0be359d9b7c408dd7c98955f3a3bcffe2ce15b487031a7612b2f4d7c8` |
| 62 | `def` | [extend](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/extend.md) | 453 | `declaration-track:11b384d7a7a991c7e9ecd9fd1a100fe29e3a322799cf30a239ac176c10dec19b` |
| 63 | `theorem` | [extend_apply](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/extend-apply.md) | 462 | `result-track:d73d5903da83718c51cd11c8381e69129c23ac756d73c85b66abf86ce8f672f2` |
| 64 | `theorem` | [extend_comp](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/extend-comp.md) | 467 | `result-track:6d8c2a3a458e44a318a84948d2705ed2bcde8bfc9451eeda8bba099fd07176d5` |
| 65 | `theorem` | [extend_apply'](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/extend-apply-source-edition-2.md) | 471 | `result-track:e8104ab5e2cb68ff8335591dc7823904307c2bd7cfe0a67041178bd173e2cfd2` |
| 66 | `theorem` | [extend_of_empty](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/extend-of-empty.md) | 476 | `result-track:899a20e5290b52ce74eeb40ccafd13fbf3ff1014b62d9b0b6124d9e1b9444dea` |
| 67 | `theorem` | [dist_extend_extend](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/dist-extend-extend.md) | 481 | `result-track:6d4c2bc93adda52628d166283a0d621c42e0baa39c8637581e6873b9b435e130` |
| 68 | `theorem` | [isometry_extend](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/isometry-extend.md) | 504 | `result-track:c43f92385e753466628053f7a88b117583dc4760b9a804a7d33e8d4dd6c4c719` |
| 69 | `theorem` | [arzela_ascoli₁](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/arzela-ascoli-source-edition-3.md) | 523 | `result-track:6382ffb01c5c589044f62ac966cc95bddf6b0ca532bfeff4903235cb9543bf6b` |
| 70 | `theorem` | [arzela_ascoli₂](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/arzela-ascoli.md) | 583 | `result-track:0ed698e50050b3a61a69003056c82cb6fcc0da921008625f0e562ae14e52de7c` |
| 71 | `theorem` | [arzela_ascoli](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/arzela-ascoli-source-edition-2.md) | 603 | `result-track:3a2fbf9deea60ba976def0d7c079a38abd180d9ccef1796850c0f9c25fc5ba96` |
| 72 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/instance-source-edition-13.md) | 623 | `declaration-track:44e871d1de868a1565bfcc3030c26853403576f5ecdd605c85da295aa6d57dcf` |
| 73 | `theorem` | [coe_one](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/coe-one.md) | 627 | `result-track:f30e99a170fdd96779c3c0bb879a65952488f038acf3c1654968dde640d60b46` |
| 74 | `theorem` | [mkOfCompact_one](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/mkofcompact-one.md) | 632 | `result-track:bb1d063b55de09f049e5844674d61e753ae1a971e28022b14152f9bb2f15b838` |
| 75 | `theorem` | [forall_coe_one_iff_one](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/forall-coe-one-iff-one.md) | 637 | `result-track:54eaafb9509e472879f2414a4fdb8621d8ee8a7d584af92c2a8311b3d9849a9c` |
| 76 | `theorem` | [one_compContinuous](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/one-compcontinuous.md) | 643 | `result-track:1fe82772d497088f721aae990c22afc31075b086a021854ca19172e4d467c700` |
| 77 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/instance-source-edition-16.md) | 669 | `declaration-track:534955e425bcfc29c5d28537e5618bce52994daa373935318703d4b937828a9b` |
| 78 | `theorem` | [coe_add](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/coe-add.md) | 683 | `result-track:f953b21eb0991a77ee5152bf0a3126bd1019ef33d6ffabe2d873e67aa418e789` |
| 79 | `theorem` | [add_apply](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/add-apply.md) | 686 | `result-track:fa37c0c440349fd6fb9cb78fcfd295edc44a0080feb3771179a8f4dd4eb65416` |
| 80 | `theorem` | [mkOfCompact_add](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/mkofcompact-add.md) | 690 | `result-track:886edab04ee297bd3a0f25565fe4fb69ec62cdf067704c0653a71d63d9f9f223` |
| 81 | `theorem` | [add_compContinuous](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/add-compcontinuous.md) | 694 | `result-track:4783acd4f0188b0cb6cbffbb6f1abe3b8a97989a1a735d204fc3c98d0c655dd0` |
| 82 | `theorem` | [coe_nsmulRec](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/coe-nsmulrec.md) | 699 | `result-track:e77dee70af124718bc6c6d86594bcbef3d731b4b342014d95616198b08fe754e` |
| 83 | `instance` | [hasNatScalar](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/hasnatscalar.md) | 704 | `declaration-track:e6994364bff74053266b8f27d6305eea9493db16be482a973cbee4a467893fcf` |
| 84 | `theorem` | [coe_nsmul](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/coe-nsmul.md) | 711 | `result-track:ae7488df92e9b435b34a8fad6f4b17e03b86eccab3edbb5d192eec757d17d982` |
| 85 | `theorem` | [nsmul_apply](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/nsmul-apply.md) | 715 | `result-track:f408f6d75ecc215d5ab51679a9dc44b6406cb0cb39f64a42d71c709562df1ef5` |
| 86 | `instance` | [addMonoid](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/addmonoid.md) | 718 | `declaration-track:4170c5a8860d76d6958b32592b33794d7add4ddf04820db5347c6ce6413ef430` |
| 87 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/instance-source-edition-3.md) | 721 | `declaration-track:0a09c166f1f31e27e702e087fbc575085cec7517e9e451c2d7ca2cf9b9ab70a3` |
| 88 | `def` | [coeFnAddHom](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/coefnaddhom.md) | 735 | `declaration-track:98273f4c26c9108094c5a719e0fcaebf312c82801104fa6305f389f203d639bc` |
| 89 | `def` | [toContinuousMapAddHom](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/tocontinuousmapaddhom.md) | 745 | `declaration-track:feae5545437a033f691ee6afce2a42e289e0435afd6eb8eb00db0e297bb6cc23` |
| 90 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/instance-source-edition-24.md) | 761 | `declaration-track:75a87ae12ba95b8d749736a40bbdefaeb8bf3c78a5f65cab3be4488cf8066a9b` |
| 91 | `theorem` | [coe_sum](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/coe-sum.md) | 768 | `result-track:1bdc534fd24c93b43f3874f7cf32ee4a084edaa7b2e4ef7d88447f695c7170fe` |
| 92 | `theorem` | [sum_apply](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/sum-apply.md) | 773 | `result-track:1002e0c4bb87ef691c2028b7c5ce9b6f3f2c621cec14781c9f91016696c0a0c8` |
| 93 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/instance-source-edition-18.md) | 788 | `declaration-track:5c0ba744aca3281b48f96a2ffa9948cfa6f824c3b8b5f40d8cbb8ccaedb75933` |
| 94 | `theorem` | [norm_def](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/norm-def.md) | 791 | `result-track:b2d25c42ca7135d08506b4616864ca8b34d60fee350178bc53b1f1212ab61291` |
| 95 | `theorem` | [norm_eq](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/norm-eq.md) | 796 | `result-track:50a7a62bd1a89815a0746acc327a487750a09eb75306002ffe18643c458f69f4` |
| 96 | `theorem` | [norm_eq_of_nonempty](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/norm-eq-of-nonempty.md) | 802 | `result-track:5c2f75d57e758fd6719b2d5d22f035093e6c20b281b896e66fe52ec35350905b` |
| 97 | `theorem` | [norm_eq_zero_of_empty](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/norm-eq-zero-of-empty.md) | 812 | `result-track:ad4767389ab9131c51b3feb21e78a2b759c30420e253f0076d587b25ef4a1879` |
| 98 | `theorem` | [norm_coe_le_norm](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/norm-coe-le-norm.md) | 816 | `result-track:1f6cbc843e64b0658d17204ebbe12109fd2185a47396ef658e56b3d89ac0c769` |
| 99 | `theorem` | [dist_le_two_norm'](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/dist-le-two-norm-source-edition-2.md) | 822 | `result-track:5e061cb8a96b876c5ec84fe4806d48b74352d3d0a501681334f134f9e0280760` |
| 100 | `theorem` | [dist_le_two_norm](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/dist-le-two-norm.md) | 831 | `result-track:090b3ed9d817ee14fd04d8d8d829594fcc2af0d86bc2c92701e4369b8cfbed17` |
| 101 | `theorem` | [norm_le](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/norm-le.md) | 838 | `result-track:f26f564af6c7363ef174ce41a9874555434ae22a59d9c2c532ae3fd83e9e60e5` |
| 102 | `theorem` | [norm_le_of_nonempty](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/norm-le-of-nonempty.md) | 842 | `result-track:41de57cef184c008f5a31c2d9b2b06e64cc5b36cc5c564e9d174a33084b2d7e5` |
| 103 | `theorem` | [norm_lt_iff_of_compact](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/norm-lt-iff-of-compact.md) | 847 | `result-track:e745d67bdf1f0146d4a70ded31d74ec56d8e802e11e4e9a5790afa3fe344b450` |
| 104 | `theorem` | [norm_lt_iff_of_nonempty_compact](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/norm-lt-iff-of-nonempty-compact.md) | 853 | `result-track:a763d0182d0047f066ca14f5d21d29b02ef222cd6a8f76ff8f5626f767b688a2` |
| 105 | `theorem` | [norm_const_le](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/norm-const-le.md) | 863 | `result-track:b41332eb8d65a3f61bb53f1f24f503b8fb9753af689f1b4a19eff14511c75247` |
| 106 | `theorem` | [norm_const_eq](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/norm-const-eq.md) | 868 | `result-track:b68d71ad1f04923ed499b012964b0547775147d179342c73ff7e03d620900ab6` |
| 107 | `def` | [ofNormedAddCommGroup](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/ofnormedaddcommgroup.md) | 874 | `declaration-track:9597be269b890ec6bc8bbbd03115d1f101231282d2fb5ca7c0b93ca8d23a1b95` |
| 108 | `theorem` | [coe_ofNormedAddCommGroup](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/coe-ofnormedaddcommgroup.md) | 880 | `result-track:5b32a08c9081b6b9fa519b88f59697cb0e1f7c2000d12b384026d92610273e78` |
| 109 | `theorem` | [norm_ofNormedAddCommGroup_le](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/norm-ofnormedaddcommgroup-le.md) | 885 | `result-track:8056072633f167b2c34fae5a823b8f6ca708ba1bda1736c580fe8eff0fce60b6` |
| 110 | `def` | [ofNormedAddCommGroupDiscrete](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/ofnormedaddcommgroupdiscrete.md) | 892 | `declaration-track:367030ae919be3bda06afda016b21f093f5310e0769d60c511e1754280314c1f` |
| 111 | `theorem` | [coe_ofNormedAddCommGroupDiscrete](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/coe-ofnormedaddcommgroupdiscrete.md) | 898 | `result-track:3efb2c4ef378dd84674949b33eac813c5acf374d8b6c9406d05c03de0b7989fe` |
| 112 | `def` | [normComp](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/normcomp.md) | 905 | `declaration-track:986325ba15a67decef3ca246cf140a03bb38058da1331b087f3c12e3b9215663` |
| 113 | `theorem` | [coe_normComp](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/coe-normcomp.md) | 910 | `result-track:1e9bc81c0d909c696d11d54c6425191783cabf35d2c6d89275a0bdf6bcf7d96d` |
| 114 | `theorem` | [norm_normComp](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/norm-normcomp.md) | 914 | `result-track:c735e7c4321658f3c9e7460e37edd56702b491faf9a91615bbf8ce903737d3a8` |
| 115 | `theorem` | [bddAbove_range_norm_comp](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/bddabove-range-norm-comp.md) | 918 | `result-track:9655a7dffaf7e894d07e593d024c4edf544f3c67d87cf450b59f61ece49a974d` |
| 116 | `theorem` | [norm_eq_iSup_norm](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/norm-eq-isup-norm.md) | 922 | `result-track:d928e1cb1710dc4656ce3dab9f33494db1e9e772ecd97b27665d5e36245c6e07` |
| 117 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/instance-source-edition-35.md) | 927 | `declaration-track:ecbad754285b23e554368cc2223bd27396c4e25ea572a9d8007f29ee620d3aa0` |
| 118 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/instance-source-edition-20.md) | 931 | `declaration-track:5eab7cf64a2bcca15f1900f5c52f805b9b0376b370579e02b8b65296b5c4b7cb` |
| 119 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/instance-source-edition-32.md) | 937 | `declaration-track:bce829ecdcab9da74d999f6934460a8b3a9f0fc5e8bb042dac0ccf016093d4c4` |
| 120 | `theorem` | [coe_neg](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/coe-neg.md) | 945 | `result-track:297805539c8d8ae57cd8d1ab356e5fda43ec5053aece4439d3f4be95ffcb1b7e` |
| 121 | `theorem` | [neg_apply](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/neg-apply.md) | 948 | `result-track:f46bff5bad02f86bed47697f047ca28d9591afc12f2234b418fea196d54a1ea1` |
| 122 | `theorem` | [coe_sub](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/coe-sub.md) | 952 | `result-track:865ad3144cf76bb86ca45becfd8d5583ea84665e5dc72e212b972690218f0f86` |
| 123 | `theorem` | [sub_apply](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/sub-apply.md) | 955 | `result-track:65f14aaa8bbe2330a3fe48a2b5a66220eac35f2fa448e2d590e42d6b43c0e300` |
| 124 | `theorem` | [mkOfCompact_neg](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/mkofcompact-neg.md) | 959 | `result-track:8eccb3932f6226612bf8e5fea2f955d140716ac8b356bb916c7affcd3679c249` |
| 125 | `theorem` | [mkOfCompact_sub](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/mkofcompact-sub.md) | 963 | `result-track:587a401ff9810d5ee2320588147276330c06a1d969d429f8a6935bc9a93e9f3b` |
| 126 | `theorem` | [coe_zsmulRec](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/coe-zsmulrec.md) | 968 | `result-track:53a5083af07bbf65a0242b4de63b543339b243dc4ae383f684e7840197fb53f9` |
| 127 | `instance` | [hasIntScalar](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/hasintscalar.md) | 973 | `declaration-track:9fbeab62bedc47516570087a71275efbb929955cd4e77eed0119c9ea5c57316a` |
| 128 | `theorem` | [coe_zsmul](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/coe-zsmul.md) | 980 | `result-track:0ca8ffff1a936cf5098afed6a042d9650644ca39eed500106bea26798643866e` |
| 129 | `theorem` | [zsmul_apply](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/zsmul-apply.md) | 984 | `result-track:63c7082079960ec1cbda41286928ceebc9c00ba7567b62cb0856759c5b7b58ba` |
| 130 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/instance-source-edition-12.md) | 987 | `declaration-track:3fc97e3325e0c039809567fbe5676e2cfec33ea942d82ce69f48bb23d1353874` |
| 131 | `instance` | [seminormedAddCommGroup](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/seminormedaddcommgroup.md) | 991 | `declaration-track:4081c370be7c771ae3bb30a9925cf2b806cf0e28e2fc255878e4731c8ff6af77` |
| 132 | `instance` | [normedAddCommGroup](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/normedaddcommgroup.md) | 994 | `declaration-track:c750d5af50cd930181540675069c034ffba6e99d17da10e95854c4419bde07ba` |
| 133 | `theorem` | [nnnorm_def](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/nnnorm-def.md) | 1000 | `result-track:55693bccd1b28be1b9ca0b47f39d90ceffeb8f4f0ce07b91e90d7521cfbb157f` |
| 134 | `theorem` | [nnnorm_coe_le_nnnorm](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/nnnorm-coe-le-nnnorm.md) | 1003 | `result-track:7e28b3fa15241167f37859bf1c192ae0527b5e244c724c1e50b68d2787b82ae0` |
| 135 | `theorem` | [nndist_le_two_nnnorm](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/nndist-le-two-nnnorm.md) | 1007 | `result-track:6cd7e946b3d6af4618c0f09f1e64c1ae8e5b5067207280ebe425aca68764a56a` |
| 136 | `theorem` | [nnnorm_le](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/nnnorm-le.md) | 1012 | `result-track:65b48f98995bd601f04ca35de07b808c37e31e3af1a382410847aefba3d9866b` |
| 137 | `theorem` | [nnnorm_const_le](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/nnnorm-const-le.md) | 1016 | `result-track:20c039b3d77862958c02cc7c8b8c48ae7a6d8ea76e8e835714a09fc5c89cb707` |
| 138 | `theorem` | [nnnorm_const_eq](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/nnnorm-const-eq.md) | 1021 | `result-track:cace2a60250e8333b0a1619aad3c8d3ba87de196165c5a21c261eff3d5065ea0` |
| 139 | `theorem` | [nnnorm_eq_iSup_nnnorm](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/nnnorm-eq-isup-nnnorm.md) | 1025 | `result-track:4a9b24b27f741368e75656f856b148bde42036402ab75d2b7c137b8210930aa7` |
| 140 | `theorem` | [abs_diff_coe_le_dist](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/abs-diff-coe-le-dist.md) | 1029 | `result-track:057bae0f9ce6617e0c864a6f35542e97f7d45a3c67178b84d546b0cff699a818` |
| 141 | `theorem` | [coe_le_coe_add_dist](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/coe-le-coe-add-dist.md) | 1034 | `result-track:d0c66dcd44266798c83af59cae826d56d9a737ea81a9e301551af69f49c03b1e` |
| 142 | `theorem` | [norm_compContinuous_le](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/norm-compcontinuous-le.md) | 1038 | `result-track:a99b13e5aba90c04b30c4bde15d825ad79867eef475cbffe23ac543391421c80` |
| 143 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/instance-source-edition-23.md) | 1064 | `declaration-track:70bd29125838a852611cb4a00ea89577c7178457d1dc551682f1d5c39a4a9749` |
| 144 | `theorem` | [coe_smul](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/coe-smul.md) | 1075 | `result-track:1f3457d969c6010955c7f7456c6f96b10ba4915ec68002298181ab5d9d84fde2` |
| 145 | `theorem` | [smul_apply](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/smul-apply.md) | 1078 | `result-track:6b8095256cb90a8c4861f3aa9e5b9f02da0e1ce9e2b77ca5472a0c13cd38d211` |
| 146 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/instance-source-edition-31.md) | 1081 | `declaration-track:b4d060afbedb447e06e24ead44452f2951ad084e01ff5c951e18e4aaba707787` |
| 147 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/instance.md) | 1084 | `declaration-track:030ee949add14e412deb1730b13985f803a032a98bf25324e4a1f5c9964c8f59` |
| 148 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/instance-source-edition-25.md) | 1104 | `declaration-track:761878da75f2eadd79e387b87a32037c56f47b12f02adc41eb71b203611a732d` |
| 149 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/instance-source-edition-15.md) | 1115 | `declaration-track:4fb82749c880114b6ee409b0d73359e9c7913ed3737245d9478076f1b89ee255` |
| 150 | `instance` | [module](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/module-source-edition-2.md) | 1128 | `declaration-track:b35f2b9ef5b9e5a4f75c0d3e1081229024e2bb55ccc95d2431a90c1b06e08850` |
| 151 | `def` | [evalClm](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/evalclm.md) | 1134 | `declaration-track:d3ebdcfc1fd93177959317c055ee9be15dc27eec76032a01c94cd9b4dc5e1a85` |
| 152 | `theorem` | [evalClm_apply](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/evalclm-apply.md) | 1141 | `result-track:e1cf71b0c81bb815418d40ebeb4d7be334e56128c39044643a9711c481966024` |
| 153 | `def` | [toContinuousMapLinearMap](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/tocontinuousmaplinearmap.md) | 1148 | `declaration-track:032578cd7294c96cc3accbf971d91dd4d172e4d6361d9040d04782b80e7e5475` |
| 154 | `instance` | [normedSpace](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/normedspace.md) | 1174 | `declaration-track:bc4b63fdb8cfcee9e5080036b2ddb8299480cc933c617840d30624288f0133cb` |
| 155 | `def` | [_root_.ContinuousLinearMap.compLeftContinuousBounded](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/root-continuouslinearmap-compleftcontinuousbounded.md) | 1190 | `declaration-track:99ad5de77f01c8716d44bdc38a25e133f6d8ccd6e2b9d6c195757592f7af4604` |
| 156 | `theorem` | [_root_.ContinuousLinearMap.compLeftContinuousBounded_apply](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/root-continuouslinearmap-compleftcontinuousbounded-apply.md) | 1203 | `result-track:f453fcd630b069aa902db460a0cf163ab1f07ae889753f52fb6416fbd3313530` |
| 157 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/instance-source-edition-17.md) | 1227 | `declaration-track:55ce35d6f946107eb2b5a3654a86d7321cb0557225681008282b5e0a62c91639` |
| 158 | `theorem` | [coe_mul](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/coe-mul.md) | 1234 | `result-track:dc0d2002e36ecb0ee301d2da232f5f77971367c9189549dce28f2ec0911be2f4` |
| 159 | `theorem` | [mul_apply](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/mul-apply.md) | 1237 | `result-track:872889069b2dbb6f523cbffdb7d71cb0c72046d48f62ef45ccdd861cd1ec063d` |
| 160 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/instance-source-edition-34.md) | 1240 | `declaration-track:ca39386710433f064c63bd7b8fc94a134a9ffb5926c5977dd59fc77486d35ccb` |
| 161 | `instance` | [nonUnitalSeminormedRing](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/nonunitalseminormedring.md) | 1244 | `declaration-track:3457d4e0807394e2833a8531e5e286c60b83e6721f6308e647ef55e281fa4152` |
| 162 | `instance` | [nonUnitalNormedRing](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/nonunitalnormedring.md) | 1253 | `declaration-track:6fc4bc082121731e4f48ea59c440a86ded153cef1bce0c8a0a068d3d6c7c9596` |
| 163 | `theorem` | [coe_npowRec](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/coe-npowrec.md) | 1264 | `result-track:409a70cd66b807d7ab15d6b9ba161bba9f3ee89c2f87fc2d1b4232fe6bcc9f0d` |
| 164 | `instance` | [hasNatPow](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/hasnatpow.md) | 1269 | `declaration-track:acce9b3664f6d93abddd20f042e80958867bc4fecc81059a6f7a128e39f9e28a` |
| 165 | `theorem` | [coe_pow](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/coe-pow.md) | 1276 | `result-track:8cf088d7bbc7921f78a84a2f5b751fad62c42dbfa18a891832ab3f5f849aba01` |
| 166 | `theorem` | [pow_apply](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/pow-apply.md) | 1280 | `result-track:f7227c098a402dae5852cd1c784ef3e41b876c20a90592b682eb2754a88a06e0` |
| 167 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/instance-source-edition-9.md) | 1283 | `declaration-track:2344a1c01e4665c390a6374562d22d02aed4a33b02e3676a12669623878522ac` |
| 168 | `theorem` | [coe_natCast](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/coe-natcast.md) | 1287 | `result-track:7e346f6178057025299781bd5a5585e11a5cf2834574a0b22f17a66a7769007a` |
| 169 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/instance-source-edition-7.md) | 1290 | `declaration-track:1eb12d7c686449fc303af2bafce2191c19c7737ea83e18da635dd941dbf74762` |
| 170 | `theorem` | [coe_intCast](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/coe-intcast.md) | 1294 | `result-track:1db51ac85925177a7000c317baf71a19cba6caca42c435c2c95ecb09f4e1723b` |
| 171 | `instance` | [ring](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/ring.md) | 1297 | `declaration-track:39c84e2c87f65bed81aedfe067965b96f315056dd6ff8d2d42d604686f9c5f2b` |
| 172 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/instance-source-edition-28.md) | 1302 | `declaration-track:9ba21fa499733e984d9708f970df54389c4c662e410d227bc7f0076571b69743` |
| 173 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/instance-source-edition-11.md) | 1308 | `declaration-track:31e9c11686df164e3d8b3fb97ee2243d6febf2ade7f52972534a92e0fe857258` |
| 174 | `instance` | [commRing](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/commring.md) | 1326 | `declaration-track:f81fbd82939570a6532678f35a227e5999c2fcec657d7e5fe490aedba5500b0d` |
| 175 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/instance-source-edition-27.md) | 1330 | `declaration-track:97eda15400029ed24cf1cfd802a61814220c34aed51169d289cc730a3e1e3f01` |
| 176 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/instance-source-edition-14.md) | 1335 | `declaration-track:4ec6e4fcc8f06b23352d38641169c0e47b4bb7fd829444d743d7b30da56a722b` |
| 177 | `def` | [C](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/c.md) | 1361 | `declaration-track:857045fd6ce2590296518a3c64ffa634188ec5709a145e46a23cad40ae993923` |
| 178 | `instance` | [algebra](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/algebra.md) | 1371 | `declaration-track:828a1ae251025c6d34bd9528ff298c5b137d2ba65a416130213499e82e56fbf8` |
| 179 | `theorem` | [algebraMap_apply](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/algebramap-apply.md) | 1380 | `result-track:a418c6862da25653485f8c385754e944c448441ed2105579e9b4a3e01f96acb3` |
| 180 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/instance-source-edition-29.md) | 1386 | `declaration-track:ab766da6c1e4e24d7475e70a23e04e6928f0f235a97b876e223bcd95935c56c2` |
| 181 | `instance` | [hasSmul'](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/hassmul.md) | 1398 | `declaration-track:a75686df42a37d38beae185c2c8c08d34e6bc7c27e94401cede054de6612affd` |
| 182 | `instance` | [module'](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/module.md) | 1408 | `declaration-track:a0ab9dde889a5cb66985ea1fd7ce06258f5bed4021af0693bd6e8cdf4f38a7b7` |
| 183 | `theorem` | [norm_smul_le](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/norm-smul-le.md) | 1417 | `result-track:d9a5583da299bc265659255527ba0f372dd0ad4adf13bc28ad42f3ddc25a7943` |
| 184 | `theorem` | [Nnreal.upper_bound](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/nnreal-upper-bound.md) | 1426 | `result-track:aec791a85c963c14275a5e9b80fe274465d90155b05bfec75b9094a9611ecd8b` |
| 185 | `instance` | [starAddMonoid](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/staraddmonoid.md) | 1458 | `declaration-track:eff457b5a0fc58c94790dfa71740d92456133231ba89447f6fa24207fbc65030` |
| 186 | `theorem` | [coe_star](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/coe-star.md) | 1466 | `result-track:fa7467c72e8eda1df9c9fd60ff802f470dcf3346d72422bb4a6299f219aae68c` |
| 187 | `theorem` | [star_apply](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/star-apply.md) | 1470 | `result-track:94142006e284166aab86474ac583ae2d77f08c09911e20488528ec7ccd731fae` |
| 188 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/instance-source-edition-5.md) | 1473 | `declaration-track:16c833a2429980c149d1a2a28301d0f7d896af3c8643345f039ceb2aadace270` |
| 189 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/instance-source-edition-2.md) | 1476 | `declaration-track:0738aade71171e4c10bc584e59d15d6bede562cc165019acb410cbb715cc7ea8` |
| 190 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/instance-source-edition-19.md) | 1487 | `declaration-track:5cbc1a92a3158a03589e5714b8c626c59e52c46631a0259b8ffc15d969d3fd3a` |
| 191 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/instance-source-edition-4.md) | 1493 | `declaration-track:0dcf4876d1c542fbdd549c013387826fafa5e4f7c3ea402ff6b8219afca34e15` |
| 192 | `instance` | [partialOrder](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/partialorder.md) | 1515 | `declaration-track:d8d82f18591d261f6970aa1424288bcc98c014e0898088cd709a0dfd54df4d52` |
| 193 | `instance` | [semilatticeInf](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/semilatticeinf.md) | 1519 | `declaration-track:77862fe72f6865747733682196edb6f4f59be4fc402bab6589a38d449579cd66` |
| 194 | `instance` | [semilatticeSup](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/semilatticesup.md) | 1536 | `declaration-track:e96f1260403b11a3fe7d9d13e8de79cb2543704788eb1181ea214f0313f7e18e` |
| 195 | `instance` | [lattice](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/lattice.md) | 1553 | `declaration-track:66e84306d603f6040dda8d52b4c5c78510c85228e00af1ad9947e068f0677b91` |
| 196 | `theorem` | [coeFn_sup](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/coefn-sup.md) | 1557 | `result-track:4c23c489c389c10df0be6771a519ec743c489fe590673d5b676fc34b32557382` |
| 197 | `theorem` | [coeFn_abs](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/coefn-abs.md) | 1561 | `result-track:81b73def2d869be7d39a68c3017d41a43876cbdc71c3404b025a16ab593cdfb0` |
| 198 | `instance` | [(anonymous)](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/instance-source-edition-26.md) | 1564 | `declaration-track:7e91fbc10f34d0fead48521255a2231ffe85fee4901240c75f360e7e21c16e16` |
| 199 | `def` | [nnrealPart](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/nnrealpart.md) | 1588 | `declaration-track:0f1f46af1e01783fe304070b83824c26adcfa453600356177a363e12e9aed573` |
| 200 | `theorem` | [nnrealPart_coeFn_eq](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/nnrealpart-coefn-eq.md) | 1593 | `result-track:a3132dfc679c9b0281a919d875b7ea0cc8da7352c48ec14db63ce51b629cf6ca` |
| 201 | `def` | [nnnorm](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/nnnorm.md) | 1598 | `declaration-track:df7abcd232ad0daa7466785dcd29e1977cda20360d857454b069afccf5af184d` |
| 202 | `theorem` | [nnnorm_coeFn_eq](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/nnnorm-coefn-eq.md) | 1604 | `result-track:980c4f04099014b776fc63116b7a34db15f9c1edd3885f831ecd4739400069ba` |
| 203 | `theorem` | [self_eq_nnrealPart_sub_nnrealPart_neg](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/self-eq-nnrealpart-sub-nnrealpart-neg.md) | 1608 | `result-track:89b8878d5f78cfa9238f7bdb0c4d7a8a5edbb5097725b7530d9caa00ddd49c36` |
| 204 | `theorem` | [abs_self_eq_nnrealPart_add_nnrealPart_neg](../../../../GeneralTopology/ContinuousFunctionBounded.lean/declarations/abs-self-eq-nnrealpart-add-nnrealpart-neg.md) | 1617 | `result-track:78679b1e4d07b95584387b2d601965f934b0eaff1aa5f1d9ab5e5139e80a509c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed02f5f5649eb35fd5dc2fb598938000a34405e39ec8ae6d82c89a0b6a3fa927 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Bounded/Variant83e1d9c7f5303e4cfa3597d20171233b28a2c156ebf3d5ea2d8f69dce5c47fb1.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Bounded/Variant83e1d9c7f5303e4cfa3597d20171233b28a2c156ebf3d5ea2d8f69dce5c47fb1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
