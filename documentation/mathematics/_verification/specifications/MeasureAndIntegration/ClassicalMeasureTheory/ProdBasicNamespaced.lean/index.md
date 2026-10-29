# Verification target: Prod Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c2531ac0ab1b69ddc59f9602824950bb600e6e5",
  "lexical_observation_count": 90,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantc65e55c405d103403b276211fe7c4b49a2cfe84320c4969f55ea7ca6c4920de9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c2531ac0ab1b69ddc59f9602824950bb600e6e5`.

Source path: `GRWTSK/Analysis/MeasureTheory/Basic/Variantc65e55c405d103403b276211fe7c4b49a2cfe84320c4969f55ea7ca6c4920de9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Basic/Variantc65e55c405d103403b276211fe7c4b49a2cfe84320c4969f55ea7ca6c4920de9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.GiryMonad` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.Ergodic.MeasurePreserving` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Lebesgue` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.OpenPos` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsPiSystem.prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/ispisystem-prod.md) | 80 | `result-track:bb8f1166c856e9d646686620cd2cb29cf38d89faec2428d9fd96a0b03eaa7725` |
| 2 | `theorem` | [IsCountablySpanning.prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/iscountablyspanning-prod.md) | 88 | `result-track:9e881dfd78b50cd36eeca86626bdc2c7674a6d2204941c786d176eb67aeed31a` |
| 3 | `theorem` | [generateFrom_prod_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/generatefrom-prod-eq.md) | 113 | `result-track:a235edfe8288fa0b2e8ccf86a1a9e12d556775d321d5e127d1f5561ea258b204` |
| 4 | `theorem` | [generateFrom_eq_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/generatefrom-eq-prod.md) | 143 | `result-track:df071ce38a6fc39de066f67b2e38c45f26f178963be5513d2e61acce38d21b2d` |
| 5 | `theorem` | [generateFrom_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/generatefrom-prod.md) | 151 | `result-track:49973e65ad2c58cafecd1129582186f454c563e57aa97c0c2d0f73a4af56a201` |
| 6 | `theorem` | [isPiSystem_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/ispisystem-prod-source-edition-2.md) | 159 | `result-track:d43472de01e9aee927c6bafc12398a1c9d82e72a7adf98a469e26fe34cea99a2` |
| 7 | `theorem` | [measurable_measure_prod_mk_left_finite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/measurable-measure-prod-mk-left-finite.md) | 166 | `result-track:aba5ae54047b296ecf23d4f9fcfb2f3492d3064f4a89074e5fb5a7c80e81ae93` |
| 8 | `theorem` | [measurable_measure_prod_mk_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/measurable-measure-prod-mk-left.md) | 188 | `result-track:b4ec8342bdf8f4fb13ee3fd00ae4940c4bf39ab7f491c9949533eed4fdab9d46` |
| 9 | `theorem` | [measurable_measure_prod_mk_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/measurable-measure-prod-mk-right.md) | 199 | `result-track:748b12302e154fcfaafa08d68ca23aec8d7ab160f14c33a786c6562bb08974ab` |
| 10 | `theorem` | [Measurable.map_prod_mk_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/measurable-map-prod-mk-left.md) | 204 | `result-track:74b4c510412d750802efd3e550637e1873647ee8c7df31f60f368825de6fa678` |
| 11 | `theorem` | [Measurable.map_prod_mk_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/measurable-map-prod-mk-right.md) | 211 | `result-track:334ed1e92406c386d3c363843fe802a8f4b86c228af297a72c95c61a9423d594` |
| 12 | `theorem` | [MeasurableEmbedding.prod_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/measurableembedding-prod-mk.md) | 218 | `result-track:86497547567ba043b0c7bf769115a5842e893237d6897a10644738ac85a2ae0a` |
| 13 | `theorem` | [Measurable.lintegral_prod_right'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/measurable-lintegral-prod-right.md) | 249 | `result-track:b0765cf69b4f56ce04c521eb64d14b3f2f859da92c1eb79e13414a1654131b84` |
| 14 | `theorem` | [Measurable.lintegral_prod_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/measurable-lintegral-prod-right-source-edition-2.md) | 272 | `result-track:fa5e31b5860231a674bfbad3556c5e7e84c5d1e6ffab651a2d9bc4a18b598d90` |
| 15 | `theorem` | [Measurable.lintegral_prod_left'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/measurable-lintegral-prod-left-source-edition-2.md) | 279 | `result-track:bce88122de1b5d3dbc3b2973cfff679ea1486afff95bd423593720d202d932d1` |
| 16 | `theorem` | [Measurable.lintegral_prod_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/measurable-lintegral-prod-left.md) | 287 | `result-track:a4ba0477dd4f5e0c09fbf71a80b77509b022cdb3c0815460352f33d0283c88e9` |
| 17 | `instance` | [prod.measureSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/prod-measurespace.md) | 305 | `declaration-track:1fc3c27cbf9e4819605285db2cb6a33225d65a0366562e80cfb4c86881fd4668` |
| 18 | `theorem` | [volume_eq_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/volume-eq-prod.md) | 311 | `result-track:02cc0c4c54f02435b3a5c4ff6629b720e07ab2bf618ba2702f916378f6d825b3` |
| 19 | `theorem` | [prod_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/prod-apply.md) | 316 | `result-track:f5dfbc7bfb8e84869d60345a316193fad34bfc5c3aa3ceae3aacbd73e8e7e70d` |
| 20 | `theorem` | [prod_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/prod-prod.md) | 325 | `result-track:1d0f27d16ed334377040cb3933b630669e1d95ecab375e2ef295de7a9f4c1636` |
| 21 | `instance` | [prod.instIsOpenPosMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/prod-instisopenposmeasure.md) | 356 | `declaration-track:08548d91d4507339b232a63f80ef36992478c24bbf13f8826159593972c99916` |
| 22 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/instance.md) | 369 | `declaration-track:4223d5d46aededc82d3e49f53f602c1f967a57610155128b55b58e75ebee7878` |
| 23 | `instance` | [prod.instIsFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/prod-instisfinitemeasure.md) | 375 | `declaration-track:de797f5703d1aba9a7b905dc45da95b081df1e3a5680690974d324ddb93e57a1` |
| 24 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/instance-source-edition-4.md) | 383 | `declaration-track:90c0e514b2116defadd77d31d7585efd1fb77c4a8736c1ba721ab1f8a3df17f3` |
| 25 | `instance` | [prod.instIsProbabilityMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/prod-instisprobabilitymeasure.md) | 387 | `declaration-track:982e39edba341ed9a255d854934c572341154356efa73be578d557fed80c5783` |
| 26 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 393 | `declaration-track:775e782cf6d3fcd6b888180368c25f3af7402e11dc43999ad50cf41803469046` |
| 27 | `instance` | [prod.instIsFiniteMeasureOnCompacts](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/prod-instisfinitemeasureoncompacts.md) | 398 | `declaration-track:87e26da119741ebe506ed484a87625be440e35551c095698065673e22c6022b1` |
| 28 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 415 | `declaration-track:6a14e0f944ba6adf6493c95fcb9bdbc851ebcb9df849392f126e8c890df7c3e3` |
| 29 | `theorem` | [ae_measure_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/ae-measure-lt-top.md) | 421 | `result-track:a531a27d324b93a097fdb3e8d2a059816e67fb923c47ce1484cdc596b86fd6fd` |
| 30 | `theorem` | [measure_prod_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/measure-prod-null.md) | 429 | `result-track:2bbd81e416cc119f8f4898b40b116ffa2b0f438f1e349c3b005242d90b802f52` |
| 31 | `theorem` | [measure_ae_null_of_prod_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/measure-ae-null-of-prod-null.md) | 436 | `result-track:8cd7b635e389951af7efb5ae7c701b86482ea770bcd23d0f5f9ff0cf305f5568` |
| 32 | `theorem` | [AbsolutelyContinuous.prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/absolutelycontinuous-prod.md) | 447 | `result-track:7b0ce074dae9c3cffb162a7edc9ec45e7c68c9ffae17615bf4bde4df72fd9844` |
| 33 | `theorem` | [ae_ae_of_ae_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/ae-ae-of-ae-prod.md) | 456 | `result-track:0aadf0e165808fb37a06e12c593be670b8cc42c67fc1c22e04f7dfda642324c4` |
| 34 | `def` | [FiniteSpanningSetsIn.prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/finitespanningsetsin-prod.md) | 461 | `declaration-track:4b2d2c9428a4d54f6b2abce2dd8d8e29bca2ce769bdf2549c44382b133ad0799` |
| 35 | `theorem` | [quasiMeasurePreserving_fst](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/quasimeasurepreserving-fst.md) | 473 | `result-track:c8b067ec5c46d0adbc7e882942bd35c8c61806691115f55e5fe2bda6716cb1b2` |
| 36 | `theorem` | [quasiMeasurePreserving_snd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/quasimeasurepreserving-snd.md) | 478 | `result-track:144dd37981b01e61518f39cf8952bd09862ed020ade810cf5e6d772fd7a82e08` |
| 37 | `instance` | [prod.instSigmaFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/prod-instsigmafinite.md) | 485 | `declaration-track:a95f2e6f80fe777aacca9e3ae148289cd9d8f813f5299629ac591bb9965f7e68` |
| 38 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/instance-source-edition-5.md) | 489 | `declaration-track:bad3a669a6cc21bca66e884788f19f0d233619d548e4fb4cb03b4692bf4dbe78` |
| 39 | `theorem` | [prod_eq_generateFrom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/prod-eq-generatefrom.md) | 495 | `result-track:290a5a732c07abcadaef4f16428342935889c2df049c349e8397687640684afc` |
| 40 | `theorem` | [prod_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/prod-eq.md) | 509 | `result-track:9d574aaa06814432eeab6ad83cb889dbda6fc73c08b05d4fdb62d3bbaa442073` |
| 41 | `theorem` | [prod_swap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/prod-swap.md) | 516 | `result-track:062e5feb38f3134b77e042b6e7e45c2b83b1faf0e2b3abecedc7808ab0985314` |
| 42 | `theorem` | [measurePreserving_swap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/measurepreserving-swap.md) | 522 | `result-track:d0f1b05115b4025596510075e5644b439d7f6c48962fd121f5731e92f219f8ab` |
| 43 | `theorem` | [prod_apply_symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/prod-apply-symm.md) | 526 | `result-track:d54802072353492efc420070ca83e29353373391166f01830143a24dc03ecb28` |
| 44 | `theorem` | [prodAssoc_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/prodassoc-prod.md) | 532 | `result-track:4c3a8db11a4211c25d00900116a42fac571bf5e74a423239cc61b3a73baa961e` |
| 45 | `theorem` | [prod_restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/prod-restrict.md) | 547 | `result-track:872efd7c87a5f3f8c6657bcb375862756343af9e9c1638220528dc6d5f4d2b52` |
| 46 | `theorem` | [restrict_prod_eq_prod_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/restrict-prod-eq-prod-univ.md) | 554 | `result-track:85f9c21741036440f1e6f494d06add78496c4e382c07ecc21fd9aeca74128fdc` |
| 47 | `theorem` | [prod_dirac](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/prod-dirac.md) | 560 | `result-track:5678794c4821e52f5fb813e9cee4c7f907e55b5755edac08f1249a68a191256e` |
| 48 | `theorem` | [dirac_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/dirac-prod.md) | 566 | `result-track:06cf72dbde68015cd397a207a02efe1941bdae2d96952c5f01060b630927c192` |
| 49 | `theorem` | [dirac_prod_dirac](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/dirac-prod-dirac.md) | 572 | `result-track:3f3b72bcb6874d676064343259ea37a077fda45e5fa2f85a6f416f24e47c2268` |
| 50 | `theorem` | [prod_sum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/prod-sum.md) | 576 | `result-track:f08723764f426f1080bff958813ab6d1ce3429b2a94f30f68e9b3bce99f00f8f` |
| 51 | `theorem` | [sum_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/sum-prod.md) | 582 | `result-track:b58a4af80edf8504ec29619d456685782ed7707bb1e7b2f5629d2abbee52ea3e` |
| 52 | `theorem` | [prod_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/prod-add.md) | 588 | `result-track:a37919f03bcc32ed6c39980528817facf80177f17ca13250799d6dfc9893bc53` |
| 53 | `theorem` | [add_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/add-prod.md) | 593 | `result-track:8674316ddb2c1cbcef3499bc933e1bde130d29419d8fd122e09aee8c0e396231` |
| 54 | `theorem` | [zero_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/zero-prod.md) | 599 | `result-track:ef6b268d3dca62315d59014a2d3d49087588b2bb2afe9a5996e521b833edc388` |
| 55 | `theorem` | [prod_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/prod-zero.md) | 605 | `result-track:421b110522f1f275f3bf937bca9e629fec92b5a9191ff299c57efd68ce660927` |
| 56 | `theorem` | [map_prod_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/map-prod-map.md) | 608 | `result-track:e198b5952feddd0c2927ba197bc0e5eb54c99a7fb3b623741778ca939956e2e4` |
| 57 | `theorem` | [skew_product](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/skew-product.md) | 627 | `result-track:a62fcfcdcd95220bde553b5981c2249a8bb3dcb5a343d34c1e164211ea0a7b8d` |
| 58 | `theorem` | [prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/prod.md) | 658 | `result-track:0a83995c8a5e216d64c64c40241598301c51275b631c7378ed488cc6f6b50cbf` |
| 59 | `theorem` | [prod_of_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/prod-of-right.md) | 669 | `result-track:8db07259dd87469e6cc43a5d68a7ef5dc961eed568d727a0e3b2601cc36cbb3a` |
| 60 | `theorem` | [prod_of_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/prod-of-left.md) | 679 | `result-track:718048cf7b2b951175ab0e42b481168e14d5bae1faad82376f21a694a669c99a` |
| 61 | `theorem` | [AEMeasurable.prod_swap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/aemeasurable-prod-swap.md) | 698 | `result-track:bceeb5308e29156c1415b32dda2a5941af3a5c6aa8dc3afc1e97de4607c2cec4` |
| 62 | `theorem` | [AEMeasurable.fst](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/aemeasurable-fst.md) | 704 | `result-track:c2d4aa47481d5205851f201e6ec39922f26bf9cb91bb13dc487721d9a3c91c2b` |
| 63 | `theorem` | [AEMeasurable.snd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/aemeasurable-snd.md) | 709 | `result-track:8a2611093871dbce2b6b197c1dc90b8c04a56b6ab3be17c2036e96ed7d9e2a8b` |
| 64 | `theorem` | [lintegral_prod_swap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/lintegral-prod-swap.md) | 723 | `result-track:f10bfd7243d547fbad5fccedbdb5c14d99c7d2e4c05d8ba867b0e9ef93dfab25` |
| 65 | `theorem` | [lintegral_prod_of_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/lintegral-prod-of-measurable.md) | 731 | `result-track:5b6bb26f4d27c47110373d8dd3ca6a380cb49c134ee0da0c6d9b178cd03d0903` |
| 66 | `theorem` | [lintegral_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/lintegral-prod.md) | 761 | `result-track:f361130f4a57f7a898b9edf24601b10aafbebfae1484c66841c8aec2b2259d0f` |
| 67 | `theorem` | [lintegral_prod_symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/lintegral-prod-symm.md) | 772 | `result-track:7f0c90dae60677cad551f527b940ba4c2a9c4e7384ae28cefbc256ffa17727ee` |
| 68 | `theorem` | [lintegral_prod_symm'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/lintegral-prod-symm-source-edition-2.md) | 780 | `result-track:86abf314422bb16621ec5dac749e7ead92d4fbc76e6b09d0ea9d17b5defa89ee` |
| 69 | `theorem` | [lintegral_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/lintegral-lintegral.md) | 787 | `result-track:2bda735c5dd7fd56d24f3cf061b288dcf3c5464ff30c3d5a19c6c1e81d1fc47e` |
| 70 | `theorem` | [lintegral_lintegral_symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/lintegral-lintegral-symm.md) | 794 | `result-track:885122b1e26d12b623443fbf3b15b5de403e596ea88d14188c0efea28da7f58f` |
| 71 | `theorem` | [lintegral_lintegral_swap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/lintegral-lintegral-swap.md) | 801 | `result-track:ce61d6f5e49bf4150b5ba8af48466707c1473c868b34a2ce439ec9aef71abf3e` |
| 72 | `theorem` | [lintegral_prod_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/lintegral-prod-mul.md) | 807 | `result-track:51834f386da2fde5af520a90d2cb337ee87f3175b3cf162e3254bf24e4882ea5` |
| 73 | `def` | [fst](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/fst.md) | 820 | `declaration-track:5962aaf7f661cf7c32019b003376edeee6c9e9d9a5136d8e046bf6a967c04783` |
| 74 | `theorem` | [fst_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/fst-apply.md) | 824 | `result-track:622d05af749ba0e316ae8694fa31f15888c70222d7cbe9e6f3497689a15f44fb` |
| 75 | `theorem` | [fst_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/fst-univ.md) | 828 | `result-track:ac25919b72474ae066c190224d01735cdec1bd6ccebc86956d8cdaf238471fab` |
| 76 | `theorem` | [fst_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/fst-zero.md) | 831 | `result-track:cbb8480a417e9e78b1dddd9f1f3562a336bde092303fc0580d462ec769c28180` |
| 77 | `instance` | [fst.instIsFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/fst-instisfinitemeasure.md) | 833 | `declaration-track:5d9b5c71718b21d71b2ce4cfa6e7d9585439985a6aedcd282978a5dd51be85ec` |
| 78 | `instance` | [fst.instIsProbabilityMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/fst-instisprobabilitymeasure.md) | 838 | `declaration-track:61dece5f98fe4d03b5161995fafb7ca26fbd8646508e6cbf28ae2644bef89c11` |
| 79 | `lemma` | [fst_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/fst-prod.md) | 845 | `result-track:57c00cd3cedc53788ddb7414bb88632151f985d04dd974bff6681b01c2d00ef2` |
| 80 | `theorem` | [fst_map_prod_mk₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/fst-map-prod-mk.md) | 849 | `result-track:009c8220a5782104b68a117dddffc2c4d68cc1d968bde8199ba4f86ad2fa9a33` |
| 81 | `theorem` | [fst_map_prod_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/fst-map-prod-mk-source-edition-2.md) | 861 | `result-track:dab8729dd55fad320873dfd690f6d97bd749f41c46e24d2f31453f2cb7d3c929` |
| 82 | `def` | [snd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/snd.md) | 867 | `declaration-track:de49731c293eb94c7987490131e03b09ee94d5d596941e603d7ba432035a4dc2` |
| 83 | `theorem` | [snd_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/snd-apply.md) | 871 | `result-track:e3f4a0e1069affb3b071120210cd7d42501ad65410fe444ed01b005069216683` |
| 84 | `theorem` | [snd_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/snd-univ.md) | 875 | `result-track:60f83bab9b7ebd2055cbdeded0c70a73f10fcd07a9ac259bd40e57793476e3c8` |
| 85 | `theorem` | [snd_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/snd-zero.md) | 878 | `result-track:1d4c41df127d5e3e6dcf8bf278ffdde00ed1a4f09b98e634ed603bb63e943a3b` |
| 86 | `instance` | [snd.instIsFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/snd-instisfinitemeasure.md) | 880 | `declaration-track:663071a1332e2db75a1bc3aa446e1297e46f6c1ded48d739c7c2fca34bf6ed9f` |
| 87 | `instance` | [snd.instIsProbabilityMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/snd-instisprobabilitymeasure.md) | 885 | `declaration-track:05e22f3423b9140981e9926d39d126a2aa43e58e9cedde82ae544eb6f01bb87f` |
| 88 | `lemma` | [snd_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/snd-prod.md) | 892 | `result-track:d05f6435394e1780d58e36c171c94c73df180d1dc00a3834646d37ae3379c6db` |
| 89 | `theorem` | [snd_map_prod_mk₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/snd-map-prod-mk.md) | 896 | `result-track:2fdeef2f299daad36ac7325bc2694ed3ae8df4313f4c30dfe32a53919bff397b` |
| 90 | `theorem` | [snd_map_prod_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasicNamespaced.lean/declarations/snd-map-prod-mk-source-edition-2.md) | 909 | `result-track:68497ad470209957e44fee9ffe85f0d66115b7af39f02f0fc07a24ab3e3c2349` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=396261a95300a09d96ade63b796bf05b90f9c06c88a292f995048c121df85377 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Basic/Variantc65e55c405d103403b276211fe7c4b49a2cfe84320c4969f55ea7ca6c4920de9.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Basic/Variantc65e55c405d103403b276211fe7c4b49a2cfe84320c4969f55ea7ca6c4920de9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
