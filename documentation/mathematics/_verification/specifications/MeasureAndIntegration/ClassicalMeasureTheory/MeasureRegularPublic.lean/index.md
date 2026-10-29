# Verification target: Measure Regular Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f215bc1599fd5074d27350093866a6fb97eb647e",
  "lexical_observation_count": 105,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Regular/Variante2da9c2a5d8874cf2397cc98c114d678fc648e74d62d96c58ed546bcacdaa6be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f215bc1599fd5074d27350093866a6fb97eb647e`.

Source path: `GRWTSK/Analysis/MeasureTheory/Regular/Variante2da9c2a5d8874cf2397cc98c114d678fc648e74d62d96c58ed546bcacdaa6be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Regular/Variante2da9c2a5d8874cf2397cc98c114d678fc648e74d62d96c58ed546bcacdaa6be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [InnerRegularWRT](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/innerregularwrt.md) | 211 | `declaration-track:3a59b1bf3fd209967ebe94b1a2cb91c22113a18743c8a0dcdf86592a0155acbe` |
| 2 | `theorem` | [measure_eq_iSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/measure-eq-isup.md) | 219 | `result-track:c42c12b8ce388ab25d5559908b66b40537b6d09626aebffde3115328fbe0d442` |
| 3 | `theorem` | [eq_of_innerRegularWRT_of_forall_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/eq-of-innerregularwrt-of-forall-eq.md) | 225 | `result-track:f6e31a94d64a2bdab145cb3c2f7120b10040d2e77d4beb1b4b80f69e745af6e8` |
| 4 | `theorem` | [exists_subset_lt_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/exists-subset-lt-add.md) | 232 | `result-track:09820de4ed8e9291a98a1d4836e7e4cb726031f0c910aa1853df178512f52410` |
| 5 | `theorem` | [map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/map-source-edition-2.md) | 240 | `result-track:101e4c5b3477b4ef9bc08362da040a1bb0bf01c88bcbfdeb7d3d0404d0b1572c` |
| 6 | `theorem` | [map'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/map-source-edition-4.md) | 252 | `result-track:ad6d8461866b0c5435d6276015baffb67217b75a6aa5a103c7932886f69315d6` |
| 7 | `theorem` | [comap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/comap-source-edition-5.md) | 262 | `result-track:7c648bae0ac5159e91e7c88bd723ac303bb55afaf874349089762ef2613010c5` |
| 8 | `theorem` | [smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/smul.md) | 275 | `result-track:0ab0d1b4489344b70f0534f56cd32c4a2d94e314a71bd336c09118bc077a5571` |
| 9 | `theorem` | [trans](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/trans.md) | 280 | `result-track:af1a7a3938183fa0cb647aaaa216472cea503a4e1253534d2b8017efb62a9d1e` |
| 10 | `theorem` | [rfl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/rfl.md) | 286 | `result-track:5f0def8c32f891aaa16b0fd8f61435629d762479838beaa96ca8dfe41d8910f5` |
| 11 | `theorem` | [of_imp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/of-imp.md) | 289 | `result-track:8d7a621531ed552d671b9210c2e34fdaef0ff97c669be0ea71df8f78232d68f0` |
| 12 | `theorem` | [mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/mono.md) | 292 | `result-track:4e4bee3bdde8524a0b1b93e11218583a1b396fa53dff11d4c58eda43063eb484` |
| 13 | `class` | [OuterRegular](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/outerregular.md) | 308 | `declaration-track:80fd9b6c5e5d56be4a69e4ea84f9ef1171848418f7e6a60ea989a33d5f750a67` |
| 14 | `class` | [Regular](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/regular.md) | 317 | `declaration-track:d41679f12c071074ee439f15c1ffae9345ad79aa2d0c96b9bfb688d56d6f90e7` |
| 15 | `class` | [WeaklyRegular](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/weaklyregular.md) | 324 | `declaration-track:23ee6b334584d8bd8d87a22dbebfead07d0aded5e4a6cd805740068d270e256a` |
| 16 | `class` | [InnerRegular](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/innerregular.md) | 329 | `declaration-track:b71f1cd38641afddb7e7b3ca0229e8ef259bac6aab72cf6992579913ce441b9c` |
| 17 | `class` | [InnerRegularCompactLTTop](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/innerregularcompactlttop.md) | 336 | `declaration-track:083b0cbb68f258701c77661dbca7475690eb6f3898d123d1ebf933027a473708` |
| 18 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/instance-source-edition-3.md) | 341 | `declaration-track:108d68b61c5fb4249d717e9fb0a50b758bb36d9954ec96a21074b9f0a6438b0b` |
| 19 | `instance` | [zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/zero-source-edition-4.md) | 354 | `declaration-track:fdab20f336cc3e46a31141c9160dc65944bf2dfca3a0579407058c672829340a` |
| 20 | `theorem` | [_root_.Set.exists_isOpen_lt_of_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/root-set-exists-isopen-lt-of-lt.md) | 359 | `result-track:9402d01fb989259488c8088905ed0daeec42ee0786531c17c7996bcc2e4a40dd` |
| 21 | `theorem` | [_root_.Set.measure_eq_iInf_isOpen](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/root-set-measure-eq-iinf-isopen.md) | 368 | `result-track:8822992f7c585f2e0ced710405e4587ad87c9227cd858df443b96de284a79618` |
| 22 | `theorem` | [_root_.Set.exists_isOpen_lt_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/root-set-exists-isopen-lt-add.md) | 374 | `result-track:a070dcbcc90b96d32ba2742f92736b8267c64cc62681e4a58c90b9dd24e4c718` |
| 23 | `theorem` | [_root_.Set.exists_isOpen_le_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/root-set-exists-isopen-le-add.md) | 378 | `result-track:45f89673f02a437736bb50f3b2ad697a09d283e83c575e4cb9b158269f5e86fd` |
| 24 | `theorem` | [_root_.MeasurableSet.exists_isOpen_sdiff_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/root-measurableset-exists-isopen-sdiff-lt.md) | 385 | `result-track:a5406cb68cfabdbde8f9f83ca140a813f03514f4eab97f06496977f8a4b649f8` |
| 25 | `theorem` | [map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/map-source-edition-3.md) | 395 | `result-track:5273377dd9b342508b74254b46b9d5d15185bf42086f5080e85fc8db60a379f8` |
| 26 | `theorem` | [comap'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/comap-source-edition-6.md) | 405 | `result-track:a4b546775c131dc78286e41deef9f2e6944a7f1406e57eb59b4ee4eb398cb360` |
| 27 | `theorem` | [comap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/comap-source-edition-2.md) | 415 | `result-track:2ed0eb1bb56f12198871d9a8ceff905b7e4a43d7a7c34d4be8c4c2b4cdb0f3e6` |
| 28 | `theorem` | [smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/smul-source-edition-6.md) | 419 | `result-track:e702f0c172254e27ee373fd2924b4781e87e1cb10333ec8617c99d09be33910a` |
| 29 | `instance` | [smul_nnreal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/smul-nnreal.md) | 428 | `declaration-track:5ec86fb7fac2e68cf40a54c1595279fe6d736ab6e472f910577c1581a42ce6d9` |
| 30 | `lemma` | [of_restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/of-restrict.md) | 435 | `result-track:032a755b3c34de89acad6fb6fa6d289ce23a9ee749bf4d1f102d675534b585c7` |
| 31 | `lemma` | [measure_closure_eq_of_isCompact](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/measure-closure-eq-of-iscompact.md) | 473 | `result-track:fd69ed758d7cc9009dbd7fd41a01fd765689615e250381ea04573561b41c35a6` |
| 32 | `theorem` | [ext_isOpen](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/ext-isopen.md) | 481 | `result-track:be9e395f51827085a754f250562d2a6c7c71c40cc270001c1ff3f87d2b14caf7` |
| 33 | `theorem` | [ext_isOpen_isBounded](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/ext-isopen-isbounded.md) | 489 | `result-track:07a838e48745ee1607ea66dd7f088872527c13e06fc7f39e747e7c9381895049` |
| 34 | `theorem` | [FiniteSpanningSetsIn.outerRegular](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/finitespanningsetsin-outerregular.md) | 501 | `result-track:4615fec8ba9f4ec5cdf845a48ab42a79bfbbcae1d5fd17022625c8e4358135a8` |
| 35 | `lemma` | [of_restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/of-restrict-source-edition-2.md) | 515 | `result-track:f3e7ab5d1fe3ce218dce6b294ea195438681a05be762ec320614a401fc8c1699` |
| 36 | `lemma` | [restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/restrict.md) | 531 | `result-track:4ee6b110e12a2f85124530152fa8cda9a40d40d70fa0e092c39d080f018863f2` |
| 37 | `lemma` | [restrict_of_measure_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/restrict-of-measure-ne-top.md) | 558 | `result-track:2846f758dcf492ca3dc7b87c3baa7b205dc2bead2bd92b06141130a79d187fa6` |
| 38 | `lemma` | [of_sigmaFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/of-sigmafinite.md) | 566 | `result-track:5981cdc34f7fcdd283de108ad44a6a11306f2579708c609536c06e40b99279c3` |
| 39 | `theorem` | [measurableSet_of_isOpen](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/measurableset-of-isopen.md) | 582 | `result-track:f4404273ba6e89d57ec152ba134c2200525fb31cae72081b5d0773bb19906f5c` |
| 40 | `theorem` | [weaklyRegular_of_finite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/weaklyregular-of-finite.md) | 608 | `result-track:f4a29b9b486f6b13cd6b3f71f599e71693297e5047ea06e83139546c5a028986` |
| 41 | `theorem` | [of_pseudoMetrizableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/of-pseudometrizablespace.md) | 674 | `result-track:6a5b3dc3fc2de2f0c50872b03b2becfb957905068c92cccef4149d05ef667a0c` |
| 42 | `theorem` | [isCompact_isClosed](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/iscompact-isclosed.md) | 684 | `result-track:1387d0764ce2dee3857b1fd38efb5796fd4a4aa71c699153225ab2d646f9aae4` |
| 43 | `theorem` | [_root_.MeasurableSet.measure_eq_iSup_isCompact](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/root-measurableset-measure-eq-isup-iscompact.md) | 704 | `result-track:ca654781b7d9ff2fe7ccccca00ca0c1b06b3f78415dc3b8c50c84ea9616069e3` |
| 44 | `instance` | [zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/zero-source-edition-2.md) | 709 | `declaration-track:38a888fc41137711eec5236aa068e2cb5f8d3861bb0b4fd0ea1827be6bb1390e` |
| 45 | `instance` | [smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/smul-source-edition-5.md) | 712 | `declaration-track:ac845c7cb59d2c0e247066670272ce4641dad70972ac388cdc45a2608aca5594` |
| 46 | `instance` | [smul_nnreal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/smul-nnreal-source-edition-4.md) | 715 | `declaration-track:fa0ecdbe3d40d426858fcc8914f69bcaa560d3668234a6d6b7e2515b7b6f0326` |
| 47 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/instance-source-edition-8.md) | 717 | `declaration-track:42e929025d429b396baedfa7a28778c42767483a8ef8fb14fc840410c5973bf1` |
| 48 | `lemma` | [innerRegularWRT_isClosed_isOpen](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/innerregularwrt-isclosed-isopen.md) | 720 | `result-track:d40603f2b30651e82bd3407a0b3fbbf04c848112fd89e93d8cd0fffe1ddbae6b` |
| 49 | `theorem` | [exists_isCompact_not_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/exists-iscompact-not-null-source-edition-2.md) | 727 | `result-track:c1046c4decddc806116ef79bc4eac1ce5a7d9f6031a6d3c8fa9a6ca82aaa69cf` |
| 50 | `theorem` | [_root_.MeasurableSet.exists_lt_isCompact](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/root-measurableset-exists-lt-iscompact.md) | 732 | `result-track:22ec8373345d43042eed8fe8add3081c3477387febcb0cf52a9ef99ecf1a6c42` |
| 51 | `theorem` | [map_of_continuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/map-of-continuous-source-edition-2.md) | 737 | `result-track:dd0a1271d09b0dac6bad79611924481019fcac3a3cf7c6b2dae84432bf0e9cbc` |
| 52 | `theorem` | [map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/map-source-edition-5.md) | 743 | `result-track:d88fd6ec7f772af13505aeb3ee635592ac4098c320fb8707ff1e3608598cd170` |
| 53 | `theorem` | [map_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/map-iff-source-edition-2.md) | 747 | `result-track:ec248486b1c66772f353e8bb9d93d263f866272271927001d09bc8821c574526` |
| 54 | `theorem` | [comap'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/comap-source-edition-3.md) | 756 | `result-track:60ab0b46d3f03e019485b9127bed7e8d13181a2d24c370b42e6e7f9b0fdb28b0` |
| 55 | `theorem` | [comap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/comap.md) | 765 | `result-track:0c9cd377ff2bb6c77ab3e3ecfe85ba8354d9220056efa0bc9fa7082dcad4f873` |
| 56 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/instance.md) | 770 | `declaration-track:07a8cec965f8d5df62c4da221738519ea99f2c70d4b12539dd0cd0116ace58d1` |
| 57 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/instance-source-edition-6.md) | 790 | `declaration-track:2f24164fc5f73918d625e3dd5f64fa14e6c330bf9ba11f3976129e8a9972908e` |
| 58 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/instance-source-edition-12.md) | 797 | `declaration-track:b84c438092a64e2cc9acc9450e5fe79d18cd553f4b0f3a122397f174e7b31e7a` |
| 59 | `theorem` | [_root_.MeasurableSet.exists_isCompact_lt_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/root-measurableset-exists-iscompact-lt-add.md) | 821 | `result-track:7faf08e9ef1ec8b69e4fc3ba852e1cdc070e1fa99ca852d0b25b0aca9b93919f` |
| 60 | `theorem` | [_root_.MeasurableSet.exists_isCompact_isClosed_lt_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/root-measurableset-exists-iscompact-isclosed-lt-add.md) | 831 | `result-track:316ce8190786ce97a6d984e52a75cc475ffb3a889284b9981aafd4edcaa187e9` |
| 61 | `theorem` | [_root_.MeasurableSet.exists_isCompact_sdiff_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/root-measurableset-exists-iscompact-sdiff-lt.md) | 843 | `result-track:5ef0b7001d949e946e14f6df5684f6c7f879561ffc60c90c594d08a446451f4d` |
| 62 | `theorem` | [_root_.MeasurableSet.exists_isCompact_isClosed_sdiff_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/root-measurableset-exists-iscompact-isclosed-sdiff-lt.md) | 859 | `result-track:21419843636b919a3654b9cb56420136bda1372e5af2af9bcf4405ffe7bcb441` |
| 63 | `theorem` | [_root_.MeasurableSet.exists_lt_isCompact_of_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/root-measurableset-exists-lt-iscompact-of-ne-top.md) | 874 | `result-track:3ca557404530839b777b28e978031ea598fb4c3968cff60611d94b078bdd1742` |
| 64 | `theorem` | [_root_.MeasurableSet.measure_eq_iSup_isCompact_of_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/root-measurableset-measure-eq-isup-iscompact-of-ne-top.md) | 881 | `result-track:3367d2120f7a1c8fe96a31dc6f3d0bfbf65e19f9a3ef7bde281237e2ba342eed` |
| 65 | `instance` | [restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/restrict-source-edition-2.md) | 888 | `declaration-track:5cad41ee56a65b57cfa7ff07d419258adb7a462513b3a5627cf6d9c9eb51ba2b` |
| 66 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/instance-source-edition-4.md) | 892 | `declaration-track:1a54673808fa6be8eb585e7158a7c036b3af366b0c3493821eed604109166fec` |
| 67 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/instance-source-edition-7.md) | 898 | `declaration-track:3cb317b26b4d573539ad33a12d8452b715ce085c288c5ca440a594b2e0ba04a8` |
| 68 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/instance-source-edition-2.md) | 902 | `declaration-track:0ff84365ac789c445a8ba488356083d8303d94537b263a37331c5699ac8b8279` |
| 69 | `lemma` | [_root_.IsCompact.exists_isOpen_lt_of_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/root-iscompact-exists-isopen-lt-of-lt.md) | 907 | `result-track:be8b71cbe363202e2aa08559417e138ccaa72ece9deec67aeb99219842d0b697` |
| 70 | `lemma` | [_root_.IsCompact.measure_eq_iInf_isOpen](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/root-iscompact-measure-eq-iinf-isopen.md) | 921 | `result-track:9e0223eaa382afdce84a44a15afd90438b1fd7d5175ac3cf5e3830f800feb691` |
| 71 | `theorem` | [_root_.IsCompact.exists_isOpen_lt_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/root-iscompact-exists-isopen-lt-add.md) | 930 | `result-track:fd86de262aefef49beeea2b35130c718eca7d89b545f59e703773779233d7358` |
| 72 | `theorem` | [_root_.MeasurableSet.exists_isOpen_symmDiff_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/root-measurableset-exists-isopen-symmdiff-lt.md) | 941 | `result-track:2c70252f3037bf8a247b685b8ff291b86728cafda78b124bd8811cb50f0244bc` |
| 73 | `theorem` | [_root_.MeasureTheory.NullMeasurableSet.exists_isOpen_symmDiff_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/root-measuretheory-nullmeasurableset-exists-isopen-symmdiff-lt.md) | 963 | `result-track:893de3491e28f875a98d2f835f253fb6ce5e6256454b159118cc8d30f8ea08d7` |
| 74 | `instance` | [smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/smul-source-edition-2.md) | 972 | `declaration-track:4b6801e98d5e34905f9ba6ad31533827a75b12871fc2afb3542320adc5508e59` |
| 75 | `instance` | [smul_nnreal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/smul-nnreal-source-edition-3.md) | 987 | `declaration-track:8969e863edb7dc39560bb8ebe49151b8b4635731e64c2f06f416c68600d1e025` |
| 76 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/instance-source-edition-5.md) | 991 | `declaration-track:1aa65478e2329dd5b392af1876818604b8f86bfac27616064a4b4491281afafd` |
| 77 | `theorem` | [map_of_continuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/map-of-continuous.md) | 994 | `result-track:b60340f8564864a5c5f7b9c57bddac1f60c01f67d0a6907dcc53657fe8a2aefc` |
| 78 | `instance` | [zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/zero.md) | 1012 | `declaration-track:0f3d69a5f9e9b4d3b98f50ee8ae345f37eee4a2884fc7f4bafa8bd30045c2f41` |
| 79 | `theorem` | [_root_.IsOpen.exists_lt_isClosed](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/root-isopen-exists-lt-isclosed.md) | 1016 | `result-track:3ff808016a42a3bd6fcad82993f1f5edc078f86a837016dc4d187eda1504c0cb` |
| 80 | `theorem` | [_root_.IsOpen.measure_eq_iSup_isClosed](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/root-isopen-measure-eq-isup-isclosed.md) | 1021 | `result-track:7a6ddbe685e5ceba42ba044003ba8c17f491152e867e6a5b1a3f09c75cde4607` |
| 81 | `theorem` | [innerRegular_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/innerregular-measurable.md) | 1025 | `result-track:e03d286e5c0c6e622f170a84258861cd949a47cc8636aff49de0b382ab49dd09` |
| 82 | `theorem` | [_root_.MeasurableSet.exists_isClosed_lt_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/root-measurableset-exists-isclosed-lt-add.md) | 1031 | `result-track:b8ca1b9433b5afb9a4905038f3ab77c4fc0e82f75e9f1b82bfe9faa0c442fdc5` |
| 83 | `theorem` | [_root_.MeasurableSet.exists_isClosed_sdiff_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/root-measurableset-exists-isclosed-sdiff-lt.md) | 1036 | `result-track:3854b9fac62b64d94d6e67fd0cc1ca68770c399839a279468d12b401d63bfc52` |
| 84 | `theorem` | [_root_.MeasurableSet.exists_lt_isClosed_of_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/root-measurableset-exists-lt-isclosed-of-ne-top.md) | 1048 | `result-track:4a2af8a5775d1b018bdbe7baf6341d1331f8f09aae92a3ff7786dd76fc002a79` |
| 85 | `theorem` | [_root_.MeasurableSet.measure_eq_iSup_isClosed_of_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/root-measurableset-measure-eq-isup-isclosed-of-ne-top.md) | 1055 | `result-track:0897ad011f373410ce9a1d8d2a9ae07516367b1c064edb17a85e2339ba3d803f` |
| 86 | `theorem` | [restrict_of_measure_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/restrict-of-measure-ne-top-source-edition-3.md) | 1061 | `result-track:6a055b65baf3f7a11fdd3d08da80d5d43a1339af14c0d35a843037900c17fa98` |
| 87 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/instance-source-edition-9.md) | 1072 | `declaration-track:7d8f5b4f36f996773356b7ffe977f9c31afd553624d2c8f174d52a437e5037a5` |
| 88 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/instance-source-edition-13.md) | 1081 | `declaration-track:c0799089fa299cb7991ea1625456e6b1f60c2ec622692a7f91baa8319f678222` |
| 89 | `theorem` | [smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/smul-source-edition-4.md) | 1090 | `result-track:7ed7bdadd3375c988920988e2377dbba26650ec6f73083dc5c5811c428ba4a88` |
| 90 | `instance` | [smul_nnreal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/smul-nnreal-source-edition-5.md) | 1094 | `declaration-track:ff4d6a48861ce1b2d2aa23c34a060dd32c011058fd638b7ed535d83da64d4861` |
| 91 | `instance` | [zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/zero-source-edition-3.md) | 1103 | `declaration-track:77bc0024226942d37bcd8d3dcbb1048a7a0c852b948cc6663a7ce7deeb51caab` |
| 92 | `theorem` | [_root_.IsOpen.exists_lt_isCompact](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/root-isopen-exists-lt-iscompact.md) | 1107 | `result-track:7b4c24b633e99ada88fd1c1ed5160088477a794c320722ab38cafd6541774a9d` |
| 93 | `theorem` | [_root_.IsOpen.measure_eq_iSup_isCompact](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/root-isopen-measure-eq-isup-iscompact.md) | 1112 | `result-track:a6c62c1e1c7cc9b6de6be507403d3ad4a9b455c0c7774da85d17f3d78c1ac7b4` |
| 94 | `theorem` | [exists_isCompact_not_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/exists-iscompact-not-null.md) | 1116 | `result-track:b0d5ebbcc22a0ff6efd89401d4be46115267643ba901b9efb578326ffa4586a8` |
| 95 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/instance-source-edition-14.md) | 1122 | `declaration-track:f23d59e35ad2a5d0e6c805aefb17d73353a764eace87cddcfcb2d6d36db05075` |
| 96 | `theorem` | [map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/map.md) | 1125 | `result-track:0304ca645de2001e9c4aea6ecf006e2cc4475ae06635e79aad2eec4ef3695e7d` |
| 97 | `theorem` | [map_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/map-iff.md) | 1134 | `result-track:aad7e36671e03183312739f2d0cba15b8fc21078031519985155f38d4b37ae46` |
| 98 | `theorem` | [comap'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/comap-source-edition-7.md) | 1143 | `result-track:f7de179299922923db7ecd8c1f4efbd53c5cac0ce296a31ee93e94b992771e22` |
| 99 | `theorem` | [comap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/comap-source-edition-4.md) | 1152 | `result-track:7be63de950095ecf029aafe19d7bd04b511dbcbda2ac155429811ad4db2c9f4b` |
| 100 | `theorem` | [smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/smul-source-edition-3.md) | 1156 | `result-track:5b6f9614ba9c6b3e3a75d83b1f37de3bdd17a1b65c6c9bdcfa33e4c6a0952d26` |
| 101 | `instance` | [smul_nnreal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/smul-nnreal-source-edition-2.md) | 1161 | `declaration-track:6a3c0589ba3c70e37f5a8917e8eee5e8f20662be4c77e9e6c89da218b5480837` |
| 102 | `theorem` | [restrict_of_measure_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/restrict-of-measure-ne-top-source-edition-2.md) | 1164 | `result-track:63c1f7162e1b00b67dd1cef1cc5565270eb95afe4f144225b116d784d24b5c64` |
| 103 | `instance` | [Regular.domSMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/regular-domsmul.md) | 1176 | `declaration-track:b38129b8f34ef0c8c48784f77973009d38e8728f390efb38e2e79314bd5fbfdf` |
| 104 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/instance-source-edition-10.md) | 1183 | `declaration-track:a13fb765aca9b7a4f6d793cb101ac1f283c4c99835a60443788b22d471fa8cf2` |
| 105 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureRegularPublic.lean/declarations/instance-source-edition-11.md) | 1190 | `declaration-track:b4e49001b9e30c1627432267b742e7f6d874ad5cfeaa8cef5dfe61f4a7a855f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bedaee4e5d9dd2f5801f76138473aadfca0b2a8d316e713d7a80ae64ba0cda2e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Regular/Variante2da9c2a5d8874cf2397cc98c114d678fc648e74d62d96c58ed546bcacdaa6be.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Regular/Variante2da9c2a5d8874cf2397cc98c114d678fc648e74d62d96c58ed546bcacdaa6be.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
