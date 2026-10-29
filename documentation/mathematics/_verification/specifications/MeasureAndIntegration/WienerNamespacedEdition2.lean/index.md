# Verification target: Wiener Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31df3808b52bd5ba86913d2dfd366efb850ef71b",
  "lexical_observation_count": 209,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Wiener/Variantad3c57ec106810cca1baad79be714eee2d68131245c65d24f53380abe9deafce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/index.md) · [Full source](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31df3808b52bd5ba86913d2dfd366efb850ef71b`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Wiener/Variantad3c57ec106810cca1baad79be714eee2d68131245c65d24f53380abe9deafce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/Wiener/Variantad3c57ec106810cca1baad79be714eee2d68131245c65d24f53380abe9deafce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.RiemannLebesgueLemma` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Tannery` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Chebyshev` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.PrimesInAP` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.MulChar.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.EMetricSpace.BoundedVariation` — import line 13; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Mathlib.Analysis.Asymptotics.Asymptotics` — import line 14; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Fourier` — import line 15; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.SmoothExistence` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convolution` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nterm](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/nterm.md) | 50 | `declaration-track:e9eb06f45060ee1f8e98be0bf98189ba8435dff39f9df3a4f8758c8df62ecac9` |
| 2 | `lemma` | [nterm_eq_norm_term](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/nterm-eq-norm-term.md) | 52 | `result-track:ffb5970cc1b4bc74d3ce91c8fad241a941962e0887c735e55ed2d80c4242fc28` |
| 3 | `theorem` | [norm_term_eq_nterm_re](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/norm-term-eq-nterm-re.md) | 55 | `result-track:e68e022199fbc34c39a5c1d4d019ac8b42e5382888947bd196bc78d51493f2c0` |
| 4 | `lemma` | [hf_coe1](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/hf-coe1.md) | 63 | `result-track:a9d58ee679bb990ec33bc58fc667e7747f6fafa3c3f7a11f2e1b6bcc62eb2ffe` |
| 5 | `instance` | [instMeasurableSpace](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/instmeasurablespace.md) | 71 | `declaration-track:ef2607c15e5b474b97896d0cb06f2a3c6f2b13e41d4bd1154e8831dbcd63b319` |
| 6 | `instance` | [instBorelSpace](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/instborelspace.md) | 73 | `declaration-track:94b03ef6bf5553abe2f95150614e51120c0d2d46357e9415d00ed2ace235dc4c` |
| 7 | `lemma` | [first_fourier_aux1](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/first-fourier-aux1.md) | 79 | `result-track:10a5cdef2fbde4e5175df8d4fc653bed98cca24159142704ee19d95587b1c991` |
| 8 | `lemma` | [first_fourier_aux2a](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/first-fourier-aux2a.md) | 83 | `result-track:8a07abe2566b3ca3adfb3e6dc27a9855a32ffcbb2c4dd41409306d296eaffb15` |
| 9 | `lemma` | [first_fourier_aux2](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/first-fourier-aux2.md) | 89 | `result-track:f35883d9a330d81b50e6211b1b66e4846bcdda8e46f36eaf7891041e0156cdca` |
| 10 | `lemma` | [first_fourier](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/first-fourier.md) | 137 | `result-track:70d95ca6633f46a70c2264f3eb39f1469e4cd02db0a1e32c7fc294fd0fddc8d8` |
| 11 | `lemma` | [continuous_multiplicative_ofAdd](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/continuous-multiplicative-ofadd.md) | 176 | `result-track:12caece7ca7ab97b19b96574a9f871c10a86f2cf20089ec6931ea59331e648a0` |
| 12 | `lemma` | [second_fourier_integrable_aux1a](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/second-fourier-integrable-aux1a.md) | 180 | `result-track:1e3c1ec442a6f65b227b7964e4305439189f95497f65eb2071b22ae871e468f2` |
| 13 | `lemma` | [second_fourier_integrable_aux1](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/second-fourier-integrable-aux1.md) | 189 | `result-track:0e809c4e2be31aaa25dad3125443b0830f72eb0e4684628bc99e81928d3d577d` |
| 14 | `lemma` | [second_fourier_integrable_aux2](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/second-fourier-integrable-aux2.md) | 207 | `result-track:3ad4092dc27c945c9fc3f0406e253e95d266a76a3442e83a177a50a742bc9264` |
| 15 | `lemma` | [second_fourier_aux](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/second-fourier-aux.md) | 214 | `result-track:c68eaa62ef0402244f308efecb56e55f7cb12a00496330328de6dff8df7dcaf1` |
| 16 | `lemma` | [second_fourier](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/second-fourier.md) | 246 | `result-track:8f322f16c8a23d7d48b50881fbf13b9e560dc04108de6f6fe74b9c43dd6c8159` |
| 17 | `lemma` | [one_add_sq_pos](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/one-add-sq-pos.md) | 305 | `result-track:85e13fc98b1c01515956a0a6f83146306fad8bcad5fb09566b55e65d9df60a01` |
| 18 | `theorem` | [prelim_decay](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/prelim-decay.md) | 316 | `result-track:b739f79b741e154762c6b6b84f72b82210643804e9c6e74cd0a7b12ae5034eed` |
| 19 | `theorem` | [prelim_decay_2](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/prelim-decay-2.md) | 331 | `result-track:34e4fe84daa29ae214aa3ef2cbeaf4017f9e48ae078e075d3b0cda3eb95cf8a1` |
| 20 | `def` | [AbsolutelyContinuous](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/absolutelycontinuous.md) | 335 | `declaration-track:2992c536714e485784206ba2f346b20bd873610b7882a04f3a3b0e4de440e714` |
| 21 | `theorem` | [prelim_decay_3](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/prelim-decay-3.md) | 350 | `result-track:e4bacd23c1ee751041713b18266ca58beb080564ccbf003051374acf6813dfdf` |
| 22 | `theorem` | [decay_alt](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/decay-alt.md) | 366 | `result-track:a8c7ab065e7393cc26cce23aeccfcdcbe120aaa3142668b103ce3d68f19cf355` |
| 23 | `lemma` | [decay_bounds_key](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/decay-bounds-key.md) | 394 | `result-track:09e7ce15b096a9c176a4e5050783286ef536f30b732636d041c33dcd94567961` |
| 24 | `lemma` | [decay_bounds_aux](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/decay-bounds-aux.md) | 408 | `result-track:d3c649889c7a8996326b21add9b376ad80b8dfc51f10c65f07c333570e746a15` |
| 25 | `theorem` | [decay_bounds_W21](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/decay-bounds-w21.md) | 415 | `result-track:dc07b5804e30650527e44ac5591d6d644a42daa1fba995f0ae8e873dac952b33` |
| 26 | `lemma` | [decay_bounds](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/decay-bounds.md) | 446 | `result-track:767f2a06898ab97647ead4a342939f82f5e3388dde9de2c093da09cffec25781` |
| 27 | `lemma` | [decay_bounds_cor_aux](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/decay-bounds-cor-aux.md) | 451 | `result-track:74d6e2fa99ee275c4908e10beaabdaf76012f7dfbf57564ff1f435eace7a2765` |
| 28 | `lemma` | [decay_bounds_cor](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/decay-bounds-cor.md) | 460 | `result-track:9fb6a8f79436b64585d12e7903dfb7a26bebc9f20b1c731cc0c67905acd42d45` |
| 29 | `lemma` | [continuous_FourierIntegral](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/continuous-fourierintegral.md) | 465 | `result-track:3cd2009b9f63b708c69e46fbc6e3b7a41d692811a1d5cba46088fbe12671a322` |
| 30 | `lemma` | [W21.integrable_fourier](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/w21-integrable-fourier.md) | 470 | `result-track:fe6d9c5f3fb344ca92ed0a38ddb18d7b68fe5cbca3491d41f7185e66dcc5b336` |
| 31 | `lemma` | [continuous_LSeries_aux](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/continuous-lseries-aux.md) | 484 | `result-track:cbc7ad5169cc4fac000dd6b3240b313ce432ce92db3ad6112fdeb36c9f6215cb` |
| 32 | `lemma` | [limiting_fourier_aux](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/limiting-fourier-aux.md) | 501 | `result-track:8e740b43d2432874c367274bda9379e5bf66373500308a5bf3cc7834ef5517fd` |
| 33 | `def` | [cumsum](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/cumsum.md) | 546 | `declaration-track:8cec35f1d6b8c2978626e30375385d4923be6dc59dd5082070a565ecb6d4623b` |
| 34 | `def` | [nabla](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/nabla.md) | 548 | `declaration-track:065cd9d78b22bd21228cdb27afa4bf6ce266c19e624c379e3a1695350a62bb53` |
| 35 | `def` | [nnabla](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/nnabla.md) | 551 | `declaration-track:63ee7002aa548df4ec3884eef83f8ede2917898669d3d31eab478fb42d9c4b3a` |
| 36 | `def` | [shift](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/shift.md) | 553 | `declaration-track:19c79e9e67689711025c85438825e3d299ae2e701f9b0cdb6854bdf3abb0315a` |
| 37 | `lemma` | [cumsum_zero](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/cumsum-zero.md) | 555 | `result-track:641262bd9b2edd786962efaac4aa7294a5a01e574dc0e9ba7ec5eec4a05dabf3` |
| 38 | `lemma` | [cumsum_succ](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/cumsum-succ.md) | 557 | `result-track:7baac0c935276085863bc9138cbcb44ad8987db1a9a83c1affaa52b272242023` |
| 39 | `lemma` | [nabla_cumsum](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/nabla-cumsum.md) | 561 | `result-track:e28407971c12408348f796789d70300fd1d786fa6653090d8b3cbfbdc1b7296e` |
| 40 | `lemma` | [neg_cumsum](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/neg-cumsum.md) | 564 | `result-track:ce3383633c4d6bec1ba37a459569cb8926c23c2189c980a9834a380f8195db45` |
| 41 | `lemma` | [cumsum_nonneg](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/cumsum-nonneg.md) | 567 | `result-track:1120f165b751a60cdc41b55da8c53df6e32cb1e4675e6d5f31ddf1534957d15f` |
| 42 | `lemma` | [neg_nabla](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/neg-nabla.md) | 571 | `result-track:f7aa88b40ed6c1910676c7e5cc5b059df5f7198ad13b2ffcde6034f542dab0dc` |
| 43 | `lemma` | [nabla_mul](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/nabla-mul.md) | 574 | `result-track:e18dd61ef200634a7985e73f21b208722b595b7755db8580871559470d3c2704` |
| 44 | `lemma` | [nnabla_mul](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/nnabla-mul.md) | 578 | `result-track:ec45b749483ca1dfb12c8f6a9e567aaf5ddf555373a8d60f2e85782139c687db` |
| 45 | `lemma` | [nnabla_cast](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/nnabla-cast.md) | 582 | `result-track:4762e0b88722ab0d910075ed0b890247e986a0aef2364b22c64faadbbeaabe1b` |
| 46 | `lemma` | [Finset.sum_shift_front](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/finset-sum-shift-front-source-edition-2.md) | 587 | `result-track:bac36b2c15de3ce9d84faf44693712dc5f6902045816034e006f63b45d99ccb3` |
| 47 | `lemma` | [Finset.sum_shift_front'](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/finset-sum-shift-front.md) | 591 | `result-track:1c7e4a5eca1e6431ab4eff10e09d65d62e06e5ff712132551374139fefeccbc2` |
| 48 | `lemma` | [Finset.sum_shift_back](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/finset-sum-shift-back.md) | 595 | `result-track:518b4ce7ceba90c35635cf9a2bf6037776a67aa0b6a52d9238b2d90c19f83020` |
| 49 | `lemma` | [Finset.sum_shift_back'](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/finset-sum-shift-back-source-edition-2.md) | 599 | `result-track:606939566ce02d10e895a4c51d884a9000aac16fea0eaa39d87c760f489c0b12` |
| 50 | `lemma` | [summation_by_parts](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/summation-by-parts-source-edition-3.md) | 603 | `result-track:0e559aed5aea087b348c672b7c1eb802487f15e42430d45d556b49a691436802` |
| 51 | `lemma` | [summation_by_parts'](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/summation-by-parts.md) | 616 | `result-track:0d03cdd149be0305a4d3ae5254811d58c2b6cd8d4b27b34d8af3040f61dfe23c` |
| 52 | `lemma` | [summation_by_parts''](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/summation-by-parts-source-edition-2.md) | 620 | `result-track:0d6db7bed0134027837298d59429641c68966e92e95c0c0889db8f5f11807938` |
| 53 | `lemma` | [summable_iff_bounded](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/summable-iff-bounded.md) | 624 | `result-track:0827bd12049816e7e6f349d8f78844a34827195b5ad1639e3201af4ef94a840d` |
| 54 | `lemma` | [Filter.EventuallyEq.summable](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/filter-eventuallyeq-summable.md) | 633 | `result-track:91926e4d624da9e63840c16af3e00c7e584f57736d1d1d20b4b42d49d362df20` |
| 55 | `lemma` | [summable_congr_ae](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/summable-congr-ae.md) | 637 | `result-track:cf35613d4820d67f70d2d323204c0dba0a3ea154880cbdc9c0a2b7c88ed4e799` |
| 56 | `lemma` | [BoundedAtFilter.add_const](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/boundedatfilter-add-const.md) | 640 | `result-track:a479067708a8928fd9afc0470f856b478b9a852e347fafbb7fac37392f7b6996` |
| 57 | `lemma` | [BoundedAtFilter.comp_add](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/boundedatfilter-comp-add.md) | 648 | `result-track:06f3b15395cfc333cd0acda68ae74cbb61195c1e48af16d6f7b5c554111e8a6d` |
| 58 | `lemma` | [summable_iff_bounded'](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/summable-iff-bounded-source-edition-2.md) | 658 | `result-track:c52eea0256aff957160538672bd6fa0ba4749d9a05fea4d0e2bc75ecb45a485b` |
| 59 | `lemma` | [bounded_of_shift](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/bounded-of-shift.md) | 666 | `result-track:6fd9a7a8955e8c27a39d284a9ad3007d16178f0256675eeea214f76ffe101174` |
| 60 | `lemma` | [dirichlet_test'](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/dirichlet-test.md) | 676 | `result-track:6519d4fe1eda53d5351b8b402e185f20fa15a923f69ea705f4df2056ed281877` |
| 61 | `lemma` | [exists_antitone_of_eventually](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/exists-antitone-of-eventually.md) | 688 | `result-track:b961e1fc1a03bc741eecf8400ed052981d4758d1f2307f3ce73cc7c83e239729` |
| 62 | `lemma` | [summable_inv_mul_log_sq](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/summable-inv-mul-log-sq.md) | 704 | `result-track:7102ef063fcd62d3bd37d9248a6892474632a06d85a44ab581ce4b44215b91b6` |
| 63 | `lemma` | [tendsto_mul_add_atTop](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/tendsto-mul-add-attop.md) | 723 | `result-track:ab9e34ba855763f1aea32a00943efb693f869adfbc11cca654fcad3c1a89cd7c` |
| 64 | `lemma` | [isLittleO_const_of_tendsto_atTop](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/islittleo-const-of-tendsto-attop.md) | 727 | `result-track:e820682c8a9df79992243fda565fc7860c6debb97ff9b1ff49c121264e6ff454` |
| 65 | `lemma` | [isBigO_pow_pow_of_le](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/isbigo-pow-pow-of-le.md) | 731 | `result-track:e8cb5b48f46afa8422b723c6046bb8f9ced2d8f244fe57434463f016bccb36cb` |
| 66 | `lemma` | [isLittleO_mul_add_sq](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/islittleo-mul-add-sq.md) | 737 | `result-track:b5b91ef3325eb46f60605fc323083ea2577b8af98022979abd9fee208ec2d3b6` |
| 67 | `lemma` | [log_mul_add_isBigO_log](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/log-mul-add-isbigo-log.md) | 742 | `result-track:49ad7ccb83a3e7a714f0e1ba77cd5d4d9b1b14dbc36f38e767c67f2fb5aac2d7` |
| 68 | `lemma` | [isBigO_log_mul_add](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/isbigo-log-mul-add.md) | 756 | `result-track:bca9bc474040c52bc211b7432a00a0b88fea0bd6e05344cd53d2226e5f2a8111` |
| 69 | `lemma` | [log_isbigo_log_div](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/log-isbigo-log-div.md) | 766 | `result-track:fa36a73cc71539ba6ab1c3890c1919adb3341f7376723c5c6ebb6435e5d33be9` |
| 70 | `lemma` | [Asymptotics.IsBigO.add_isLittleO_right](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/asymptotics-isbigo-add-islittleo-right.md) | 770 | `result-track:65c30bf06723801895ccd304d95dcd1eb6cccb28e5ac5fcdab7901ed22687991` |
| 71 | `lemma` | [Asymptotics.IsBigO.sq](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/asymptotics-isbigo-sq.md) | 782 | `result-track:2c2192f85b33c81f75becad41d95e94d23f68f570f9ff60c39d4125a2ef1163d` |
| 72 | `lemma` | [log_sq_isbigo_mul](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/log-sq-isbigo-mul.md) | 786 | `result-track:419f84d534f068b78eead7feba88216e150f1339a45e1b2943e1e6db359a2f7b` |
| 73 | `theorem` | [log_add_div_isBigO_log](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/log-add-div-isbigo-log.md) | 793 | `result-track:7d31365c6ce85f924929c904e62fefdfb78e7a333efcb06f5eb0a1415f7a8118` |
| 74 | `lemma` | [log_add_one_sub_log_le](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/log-add-one-sub-log-le.md) | 797 | `result-track:e7c48a2b0d11988b2a709fe81ba243f41aea4e0d9937b397f22ca6e2d98746a1` |
| 75 | `lemma` | [nabla_log_main](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/nabla-log-main.md) | 807 | `result-track:0db025b6f33f3e246856c5ef098b98f5cdc2999c5bff73fb3d320a75fb1bbaa7` |
| 76 | `lemma` | [nabla_log](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/nabla-log.md) | 814 | `result-track:f5a1acb968b5114b173b6d4450d6d7916cfcc45b1a82eeb59b231771e4a7a6d1` |
| 77 | `lemma` | [nnabla_mul_log_sq](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/nnabla-mul-log-sq.md) | 820 | `result-track:d7bcc0b4b6af85bf5aeb78a560144767d1d01ce42b0b292ed0f14849d03fac5c` |
| 78 | `lemma` | [nnabla_bound_aux1](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/nnabla-bound-aux1.md) | 841 | `result-track:6c322c1df06ef4f9aa87482c86b835cc140a612252792787db49449ceea95d3c` |
| 79 | `lemma` | [nnabla_bound_aux2](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/nnabla-bound-aux2.md) | 846 | `result-track:d5f647417e311deea4827fa8c036fd47502647c021fb30fcd51d2c22ed05effa` |
| 80 | `lemma` | [Real.log_eventually_gt_atTop](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/real-log-eventually-gt-attop.md) | 850 | `result-track:5a0f1a894a6b3b9c6a18ae1159e39734a254c56e1b71c5c516c93eabcb327334` |
| 81 | `theorem` | [norm_lt_norm_of_nonneg](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/norm-lt-norm-of-nonneg.md) | 856 | `result-track:e815146c05fc86b62626a86bcb795623d4f66c4ccf6f00cb8f4eb13d01933e83` |
| 82 | `lemma` | [nnabla_bound_aux](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/nnabla-bound-aux.md) | 862 | `result-track:44364c1930b0918c4b33912058c3448ed389858b1b774494dc6df5dc53be53d5` |
| 83 | `lemma` | [nnabla_bound](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/nnabla-bound.md) | 907 | `result-track:db7ea87d4c338841a51408105c21793cc595feaa87d6f1f666c397de30fcedb6` |
| 84 | `def` | [chebyWith](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/chebywith.md) | 915 | `declaration-track:e3f0e8d2551e3519b9e7a8e92bae0229ee3d2043887704e976004526b589c729` |
| 85 | `def` | [cheby](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/cheby.md) | 917 | `declaration-track:049949ab6ddefd4337e1c8d76de62ec76910929dd79e196a59f74e17aa628cd7` |
| 86 | `lemma` | [cheby.bigO](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/cheby-bigo.md) | 919 | `result-track:80c6880cd44d5e5141ef002cebade36f86891bfe7c8619dfde15ebfa8bbb5aa7` |
| 87 | `lemma` | [limiting_fourier_lim1_aux](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/limiting-fourier-lim1-aux.md) | 927 | `result-track:7b8a581eee200830c93c53b4ec92b73a87498a3ff6c9866c239878b5643ada4e` |
| 88 | `theorem` | [limiting_fourier_lim1](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/limiting-fourier-lim1.md) | 982 | `result-track:2138a6d553d67aa00e6830b4f8193a73d7617feb2a720fba5315b7b344bd7781` |
| 89 | `theorem` | [limiting_fourier_lim2_aux](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/limiting-fourier-lim2-aux.md) | 1006 | `result-track:2377f881e13a130f2a4770d4da7b363e0c1e51c085da7f081b6ec76ff3e0f8c9` |
| 90 | `theorem` | [limiting_fourier_lim2](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/limiting-fourier-lim2.md) | 1013 | `result-track:b4dabcbfdbc326ac452fe40a982c1a62da2f07b5d4f3580e005845b6d598d61e` |
| 91 | `theorem` | [limiting_fourier_lim3](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/limiting-fourier-lim3.md) | 1068 | `result-track:0fd3629c37352ed96ed0dfc3c743404840feee0e8c6081a613d40c5f555cfa9f` |
| 92 | `lemma` | [limiting_fourier](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/limiting-fourier.md) | 1136 | `result-track:aca1507a27430e8a300f30a2dae5ec3cd4e6aa869a89c40ac5bb19cc3b7a87ec` |
| 93 | `lemma` | [limiting_cor_aux](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/limiting-cor-aux.md) | 1154 | `result-track:837cf68db671ecfcb1efa7bf0586b9b8d5bdeed90cfef06b8a019fc9088aecf2` |
| 94 | `lemma` | [limiting_cor](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/limiting-cor.md) | 1189 | `result-track:5f21672b96717adc13667b9d1feb7a1ee1e077558ae11f0c0d36dde5e2fa688e` |
| 95 | `lemma` | [smooth_urysohn](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/smooth-urysohn.md) | 1216 | `result-track:1936e2f35289b1232491345d90f8964da4b90064c4070d616ef1fb5d28db731d` |
| 96 | `def` | [exists_trunc](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/exists-trunc.md) | 1225 | `declaration-track:1a405e5dc11cf7302abf7e62fb44f342bc5a9316e02f70954b4c2a039481f915` |
| 97 | `lemma` | [one_div_sub_one](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/one-div-sub-one.md) | 1229 | `result-track:d1b36d4e6da90b0f9ab7571e777327f90fe82514d7ad52dec81fc51b53693c66` |
| 98 | `lemma` | [quadratic_pos](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/quadratic-pos.md) | 1235 | `result-track:dd445f50f34095f4358b70b2ba8e444ebcb6494a0e2ec065f4fb70189b4f90b5` |
| 99 | `def` | [pp](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/pp-source-edition-2.md) | 1242 | `declaration-track:9fdd6e5421406001e819fc6c4826283045f9437605173765605144392667c5f9` |
| 100 | `def` | [pp'](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/pp.md) | 1244 | `declaration-track:0b64ce138b9e8d96f88890d99d91d24dfe8bb86e05801e27b821e07f0e0acaa5` |
| 101 | `lemma` | [pp_pos](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/pp-pos.md) | 1246 | `result-track:4b049592f162c63c82a4d7eb4ce812962a5a2449c23d022c149c66699e2c0516` |
| 102 | `lemma` | [pp_deriv](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/pp-deriv.md) | 1252 | `result-track:0e04dfb4228a2d36d54ac3ac76fc147657e03cc3a7c5e7b560f6f90e79663994` |
| 103 | `lemma` | [pp_deriv_eq](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/pp-deriv-eq.md) | 1256 | `result-track:917585829636e4a3a283fe38f1f963c5af7c6bc1ffaddc776154a32f625b4b21` |
| 104 | `lemma` | [pp'_deriv](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/pp-deriv-source-edition-2.md) | 1259 | `result-track:11ae56823c31250cfe9ca6bb721103e62a8db270f8b9333fbe1c74e7edcc1961` |
| 105 | `lemma` | [pp'_deriv_eq](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/pp-deriv-eq-source-edition-2.md) | 1262 | `result-track:d9defd132a60bf6f9e70db10506913fed2ee844d1b771c3269de6e5f3568db24` |
| 106 | `def` | [hh](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/hh-source-edition-2.md) | 1265 | `declaration-track:e420a96588d744a176c28d48eac14793dc0c47a316f8a5241e3a2eff5e9e6384` |
| 107 | `def` | [hh'](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/hh.md) | 1267 | `declaration-track:c421f8c33c670f95ff2e9b78eeb14c5779d529e8dba8c9ba0a628e6bbf9d5e3d` |
| 108 | `lemma` | [hh_nonneg](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/hh-nonneg.md) | 1269 | `result-track:552192e30929347212895c45976bb76192fa912922855f69562a537ded0cb2eb` |
| 109 | `lemma` | [hh_le](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/hh-le.md) | 1271 | `result-track:2faedc3d13156ba91b18e46fe337c969ed21d87964540c305a9a72aa197d38a1` |
| 110 | `lemma` | [hh_deriv](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/hh-deriv.md) | 1284 | `result-track:3b957540c31d33fd14185c39e2b048f8d8fd8486760ee15f1b306213e70adb3e` |
| 111 | `lemma` | [hh_continuous](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/hh-continuous.md) | 1297 | `result-track:2d0954a9043777e57e586b5215097f0199c630e49b4c91dd4c97219208d5f052` |
| 112 | `lemma` | [hh'_nonpos](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/hh-nonpos.md) | 1300 | `result-track:d027c8bb34688239f49ff6adbc0a12f1d26cb6677d36cfde4c12fd09e0f082b6` |
| 113 | `lemma` | [hh_antitone](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/hh-antitone.md) | 1305 | `result-track:cae4651a28bee17066dfb5fdd0eacfcd57c41a1aaf774e4c74b688f8364241b2` |
| 114 | `def` | [gg](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/gg.md) | 1313 | `declaration-track:ee0f50ee415ad88d6ed642f2d755cb72fa7ad97f768cbc9c658bf4ec346bfc16` |
| 115 | `lemma` | [gg_of_hh](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/gg-of-hh.md) | 1315 | `result-track:618d39ed12608f6d8c2e55c1bc5859ff82bca64a4955a6bde472b7b38d1026ee` |
| 116 | `lemma` | [gg_l1](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/gg-l1.md) | 1319 | `result-track:b1fa81d80fe80a6d0cd3dc8962d4d16e57b0b3d88dade2ae3f7e8e893fbe5fc3` |
| 117 | `lemma` | [gg_le_one](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/gg-le-one.md) | 1325 | `result-track:8056170185bce8d5e3f847589fa04b67f9c60b0041c04bad54aaaccf8b4a24ac` |
| 118 | `lemma` | [one_div_two_pi_mem_Ioo](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/one-div-two-pi-mem-ioo.md) | 1334 | `result-track:1fb1d9b463ca3cb00e83bbec6c0e42244d385105e85ceba8f3cc38866ad932ba` |
| 119 | `lemma` | [sum_telescopic](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/sum-telescopic.md) | 1348 | `result-track:914ca967970612360f4719fc8ecb92bacde302da400aa3c6161eb18bd183112e` |
| 120 | `lemma` | [cancel_aux](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/cancel-aux-source-edition-2.md) | 1351 | `result-track:a1c175c4b19ffc69cc2072a77dca6513416ba131185eceb899970616bdb49b37` |
| 121 | `lemma` | [sum_range_succ](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/sum-range-succ.md) | 1378 | `result-track:c98c12b7ac8ecffc67ea0bc9205d6d79e84748088df08b34e146cd2ef4ca2ce8` |
| 122 | `lemma` | [cancel_aux'](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/cancel-aux.md) | 1384 | `result-track:2b1cdd1ce5e2b4b4e14b863cd4a1fbbfc223b6ed91f0308f7895c6b7c53d94bd` |
| 123 | `lemma` | [cancel_main](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/cancel-main-source-edition-2.md) | 1395 | `result-track:bf2c518ce31ea8fc1f9ea6c900427806e5c632f493ca61679f78d237e734c724` |
| 124 | `lemma` | [cancel_main'](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/cancel-main.md) | 1403 | `result-track:a1be110787c9bacc144a2300ea7b37cef1aafbd0348f7dc6f3388f66d36bca1b` |
| 125 | `theorem` | [sum_le_integral](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/sum-le-integral.md) | 1413 | `result-track:db2099fa50eb6fffaeb9ef4f7acae57548da60f82468e5246685a1b6c21af511` |
| 126 | `lemma` | [hh_integrable_aux](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/hh-integrable-aux.md) | 1465 | `result-track:9e3e476ba2f1b7ab1cb598eb6550088c04acc40665e705038dfa61004a44a39c` |
| 127 | `lemma` | [hh_integrable](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/hh-integrable.md) | 1543 | `result-track:ab8554f2b57931885c1a047991ff5cb7c9b1899be95ac0339c0c2f51ca89a3bd` |
| 128 | `lemma` | [hh_integral](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/hh-integral.md) | 1547 | `result-track:d800ca03d9062327f09061af19b6f1f2d217da50cc67290b63347dd42c41d8a5` |
| 129 | `lemma` | [hh_integral'](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/hh-integral-source-edition-2.md) | 1551 | `result-track:f6ae0c1ab3bd6237f088cd20d9b2583aca750d4471fbb66025c2f63ddedeb934` |
| 130 | `lemma` | [bound_sum_log](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/bound-sum-log-source-edition-2.md) | 1556 | `result-track:f43b874d4d9fcc35e7f0be51a63c1b604d1af93272a0b49a12ea3b83ed24375a` |
| 131 | `lemma` | [bound_sum_log0](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/bound-sum-log0.md) | 1635 | `result-track:b89d42baaa6cb3dc663d60f1273272528f0d810be36c5b1b7b6f66d7d4d3cc52` |
| 132 | `lemma` | [bound_sum_log'](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/bound-sum-log.md) | 1646 | `result-track:efbd461c42c0398841146de8473c50c34a6314013e710f9bee1a0fae20f063e0` |
| 133 | `lemma` | [summable_fourier_aux](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/summable-fourier-aux.md) | 1651 | `result-track:bf1ce6a64bb5b2cb7811825482fb02e51224c2f64238069ac9764884b3f91b7d` |
| 134 | `lemma` | [summable_fourier](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/summable-fourier.md) | 1661 | `result-track:6277b34e06b89be44572082e81d8d0ac4fb5a5411abc277138612e07f902a53e` |
| 135 | `lemma` | [bound_I1](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/bound-i1-source-edition-2.md) | 1669 | `result-track:e27f4dce7fdbd996debc5a82b126861da60edeaa1f511734e3866aa2f0f6a1c5` |
| 136 | `lemma` | [bound_I1'](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/bound-i1.md) | 1682 | `result-track:12efee31ad009eff24f70db58a08179b0a4c30a17600370bc087b3937b2dcd1c` |
| 137 | `lemma` | [bound_I2](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/bound-i2.md) | 1691 | `result-track:dd278654a20813bade8ac7d3f6f709a61b2cfedb51d448bc41c71770cb3fe4ed` |
| 138 | `lemma` | [bound_main](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/bound-main.md) | 1714 | `result-track:a2eda762695da4c6615655b96469882c61faa6ba9e3163fd520528575b5ce89f` |
| 139 | `lemma` | [limiting_cor_W21](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/limiting-cor-w21.md) | 1727 | `result-track:d4784ef863c7759a9896fe259d28beaabb7d39a08a2d5095272387c5f24c8f5e` |
| 140 | `lemma` | [limiting_cor_schwartz](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/limiting-cor-schwartz.md) | 1819 | `result-track:c44d0718d1dfabea4e1c4e14c7b994b051b7eb8e4f5e1caaafde7731a37085a0` |
| 141 | `lemma` | [fourier_surjection_on_schwartz](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/fourier-surjection-on-schwartz.md) | 1849 | `result-track:443d3444bbca317060f54828995ee5e6d6b7dfed8a5553b64ba4716664853aba` |
| 142 | `def` | [toSchwartz](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/toschwartz.md) | 1856 | `declaration-track:cd671aea28ee9a5a07d9f650bcfe738fb24845ed015d837ccd4c91f39fbee804` |
| 143 | `lemma` | [toSchwartz_apply](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/toschwartz-apply.md) | 1868 | `result-track:690d6ad28fc9661290d74655989d9cd70a2e231bad98dd7f31f614791519f476` |
| 144 | `lemma` | [comp_exp_support0](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/comp-exp-support0.md) | 1870 | `result-track:15b5b9f5f7ac9a351fc3425eb25181808151311f4e3ecd454e5a2fe2ca35bc54` |
| 145 | `lemma` | [comp_exp_support1](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/comp-exp-support1.md) | 1874 | `result-track:1d22ad198d4d66d1109fabc467f5d4f12e03d68bf2478c2805e3e8efb4ed56c1` |
| 146 | `lemma` | [comp_exp_support2](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/comp-exp-support2.md) | 1878 | `result-track:af353c356f72124e89879bb20f0c56b3d38ad25485797111ab3d586f3e96259e` |
| 147 | `theorem` | [comp_exp_support](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/comp-exp-support.md) | 1884 | `result-track:f978158a09d8e855e5028646b76cd372153a2b4df0a7fef915be3f572e2b8ecf` |
| 148 | `lemma` | [wiener_ikehara_smooth_aux](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/wiener-ikehara-smooth-aux.md) | 1891 | `result-track:f84c3cfff95a3c0ab0d244a5350ebfb0a941f158fdc453ca84d546c282f6c1df` |
| 149 | `theorem` | [wiener_ikehara_smooth_sub](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/wiener-ikehara-smooth-sub.md) | 1909 | `result-track:cd84ef4583358339f815083b4ec17df84d0ab8469c0d7f5ee86af3afa9c7aa79` |
| 150 | `lemma` | [wiener_ikehara_smooth](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/wiener-ikehara-smooth.md) | 1971 | `result-track:1277f73e318c740e9964cb09be8778d7522acd6142fa7f256d12b5b5025a6415` |
| 151 | `lemma` | [wiener_ikehara_smooth'](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/wiener-ikehara-smooth-source-edition-2.md) | 2027 | `result-track:4f5db7c810ec847b0ac30c254b6ecf1d1f80e0112980f9842afd9818027cb580` |
| 152 | `instance` | [(anonymous)](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/instance.md) | 2035 | `declaration-track:9f2fcbb2731adc69fbbfc91a4688a47107d39b6bf0b6e0b10e6dd85013295e37` |
| 153 | `theorem` | [set_integral_ofReal](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/set-integral-ofreal.md) | 2038 | `result-track:c62795e1badfed33f5de0c70822adc98e32b640ff770523b7ff3606bc1f04c67` |
| 154 | `lemma` | [wiener_ikehara_smooth_real](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/wiener-ikehara-smooth-real.md) | 2041 | `result-track:5103ef3388897e247ea3dde90040f238016e07c6f69ef695a1cf43d0e552a2e5` |
| 155 | `lemma` | [interval_approx_inf](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/interval-approx-inf.md) | 2057 | `result-track:69e7631cabb6432a0875b6197bb324900032338e9ef1d7ca9afce03cb7d3f43c` |
| 156 | `lemma` | [interval_approx_sup](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/interval-approx-sup.md) | 2091 | `result-track:8d55f30c3584a68b922b16f21dc70c6e5b3652c0cb69af00addd6095f699be6f` |
| 157 | `lemma` | [WI_summable](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/wi-summable.md) | 2122 | `result-track:572b3cc6140bab50952cdd21b103c784caad819604cda8148623452e14086115` |
| 158 | `lemma` | [WI_sum_le](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/wi-sum-le.md) | 2130 | `result-track:4966096dfc26a1375589f5800af74a4c6dc16e10966493fd733a8a0114f2af55` |
| 159 | `lemma` | [WI_sum_Iab_le](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/wi-sum-iab-le-source-edition-2.md) | 2137 | `result-track:1bb7ac01248e6a77e25df88c4ba43525719829d5d2bd02d66ac1639b6a154522` |
| 160 | `lemma` | [WI_sum_Iab_le'](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/wi-sum-iab-le.md) | 2159 | `result-track:000c9ce2fff492c214c8a96df8d7db56ff1958804639f1aa139b24e28023518a` |
| 161 | `lemma` | [le_of_eventually_nhdsWithin](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/le-of-eventually-nhdswithin.md) | 2163 | `result-track:c2f2bc18e8f99c8ab47583d2afa0821f1653c897ddb2f8847d60c88db2b71ef4` |
| 162 | `lemma` | [ge_of_eventually_nhdsWithin](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/ge-of-eventually-nhdswithin.md) | 2172 | `result-track:f8d74796ea01568b2db89e498b04ce12dd7518cccb8cff6b8135ecb02e8fcaf6` |
| 163 | `lemma` | [WI_tendsto_aux](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/wi-tendsto-aux-source-edition-2.md) | 2181 | `result-track:f6d97d3b67c76b37f998bda9baa39729201711f21cba410792c53b225b03113d` |
| 164 | `lemma` | [WI_tendsto_aux'](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/wi-tendsto-aux.md) | 2194 | `result-track:2a199db90c634ac1c71e2da81e27742fec1b7fbe0b98000b41e35828a497cb8e` |
| 165 | `theorem` | [residue_nonneg](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/residue-nonneg.md) | 2207 | `result-track:a7d3d56966d045915eb7e050d1ed08edd60a2b091678c64146e41519d38dd7ef` |
| 166 | `lemma` | [WienerIkeharaInterval](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/wienerikeharainterval.md) | 2243 | `result-track:49deb8db77d9dcb75221c5eab71c7b0fbaeab0e095c3c831460ab3c07bce296e` |
| 167 | `lemma` | [le_floor_mul_iff](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/le-floor-mul-iff.md) | 2312 | `result-track:64e75af732a8ac9d66a05cb7f44a96c8e55e446ffd2509490f676a3f24e583b2` |
| 168 | `lemma` | [lt_ceil_mul_iff](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/lt-ceil-mul-iff.md) | 2315 | `result-track:b48933f4fdc733023e1ab8930324c7c625c8f50a0609ae8d3d8c6aad46e80cf0` |
| 169 | `lemma` | [ceil_mul_le_iff](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/ceil-mul-le-iff.md) | 2318 | `result-track:af6fc63bef8a96be153ce894f250bd9fcf0933b83ffe13752220b143629dd22a` |
| 170 | `lemma` | [mem_Icc_iff_div](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/mem-icc-iff-div.md) | 2321 | `result-track:7fa7d83c8d45e99b77872ff54c786e8be8e2f698225fd12edf40cca4bcdb05da` |
| 171 | `lemma` | [mem_Ico_iff_div](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/mem-ico-iff-div.md) | 2324 | `result-track:b370ddd42667355d7907530d62519e220480d05d27b585e0fefda50f25895fbf` |
| 172 | `lemma` | [tsum_indicator](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/tsum-indicator.md) | 2327 | `result-track:b0ec0756531ec085c74720c2826e5408ec1d9ee156a52190e46566de608bbfc2` |
| 173 | `lemma` | [WienerIkeharaInterval_discrete](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/wienerikeharainterval-discrete-source-edition-2.md) | 2333 | `result-track:2d8c506877d1ae150b69a0dd36d43ca64e35ea4a1c8c8a23391f1db32ddb43c7` |
| 174 | `lemma` | [WienerIkeharaInterval_discrete'](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/wienerikeharainterval-discrete.md) | 2341 | `result-track:22b73a122db3a23a4a9ada2cfb5757d455fa3716c1d72772c7f75e782e492369` |
| 175 | `lemma` | [tendsto_mul_ceil_div](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/tendsto-mul-ceil-div.md) | 2355 | `result-track:a65de31e825af08d895812fe35a36c8fb717e35791b8d02fb65fbd6a384327aa` |
| 176 | `def` | [S](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/s.md) | 2370 | `declaration-track:abe3e550eec4184461517f18b5c17517f7b901ea575572566568a663b4f75eb0` |
| 177 | `lemma` | [S_sub_S](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/s-sub-s.md) | 2372 | `result-track:ca1f2d3249e2a452ec529780a17d039debe42a7cdfedfdbdec091377d94a2adc` |
| 178 | `lemma` | [tendsto_S_S_zero](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/tendsto-s-s-zero.md) | 2384 | `result-track:0af30079f642fd60f8e327f4979156f4c07dd0515baca8d4227de76ed6f3f5d2` |
| 179 | `theorem` | [WienerIkeharaTheorem'](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/wienerikeharatheorem-source-edition-2.md) | 2410 | `result-track:706a517192e2406630a78910c31bbaf56c8b2ffc1522ff4b5cffbeb1637eafcc` |
| 180 | `theorem` | [vonMangoldt_cheby](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/vonmangoldt-cheby.md) | 2425 | `result-track:cc15786258fdac68f3fda3fd9802a0b4117812a21c62fed5095e3d9f458111a0` |
| 181 | `theorem` | [WeakPNT](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/weakpnt.md) | 2454 | `result-track:7dfa64bbc7654de32330a2caff442e7531b7f597abc47cf9b01fb7513cc7ada6` |
| 182 | `lemma` | [norm_x_cpow_it](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/norm-x-cpow-it.md) | 2477 | `result-track:89a39abd6ec08dd47786a925f7f985cce6b3b367cef99059245ae8d0f5701fa2` |
| 183 | `lemma` | [limiting_fourier_aux_gt_zero](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/limiting-fourier-aux-gt-zero.md) | 2483 | `result-track:2b3504776fc6874d8b562265282ef47c4349126bc224f0fafbbe07b63dc3f4f5` |
| 184 | `theorem` | [limiting_fourier_lim2_gt_zero](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/limiting-fourier-lim2-gt-zero.md) | 2512 | `result-track:8310f4abcd296e20d5294a4023b9fb521a6ba829e4d02cc22c675e7636955acf` |
| 185 | `theorem` | [limiting_fourier_lim3_gt_zero](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/limiting-fourier-lim3-gt-zero.md) | 2552 | `result-track:457e8f7807bf4fe8e4ffecab4f7f94ce6575424d0da11b1eb1fab2bf9c6ce9cd` |
| 186 | `lemma` | [tendsto_tsum_of_monotone_convergence](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/tendsto-tsum-of-monotone-convergence.md) | 2582 | `result-track:7939abc42248d28596c8aed21c91f426a4369a0789a7325d013271b9172bf472` |
| 187 | `lemma` | [tendsto_tsum_of_monotone_convergence_nhdsGT_one](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/tendsto-tsum-of-monotone-convergence-nhdsgt-one.md) | 2597 | `result-track:62c7be79da071ab655b3e2f210295bd31cefef9b433ca60db1027bf327a25c31` |
| 188 | `lemma` | [limiting_fourier_variant_lim1_aux](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/limiting-fourier-variant-lim1-aux.md) | 2673 | `result-track:30054da8dc2d60f4cd2ccc8eadec36ae788b1a7f9fbd658d91ebf99eb3856530` |
| 189 | `theorem` | [limiting_fourier_variant_lim1](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/limiting-fourier-variant-lim1.md) | 2710 | `result-track:be4a968640d47f03f64ae2065d2ab1725b0b7cf2ef06156556cc67bdad459b7d` |
| 190 | `lemma` | [limiting_fourier_variant](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/limiting-fourier-variant.md) | 3017 | `result-track:a0d96b009d42061bd8c3a7e8633825d8ee51d9d4e0232ae4072dcd5da1e9d77e` |
| 191 | `lemma` | [norm_mul_integral_Ici_le_integral_norm](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/norm-mul-integral-ici-le-integral-norm.md) | 3169 | `result-track:26131f5419a525767df941dafeca632e56c1f589e9f697e9770bc94966a384eb` |
| 192 | `lemma` | [fourier_decay_of_CS2](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/fourier-decay-of-cs2.md) | 3217 | `result-track:e8a6df7c5796998673ec1167382bf36baf6ddd1545a89d843b7ab9836ef532c5` |
| 193 | `lemma` | [integrable_norm_fourier_scaled_of_CS2](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/integrable-norm-fourier-scaled-of-cs2.md) | 3228 | `result-track:2f2864026899d7a2513f1432a60c7b662d9fd84c586306ca746ecd9d4ba2271f` |
| 194 | `lemma` | [exists_bound_norm_G_on_tsupport](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/exists-bound-norm-g-on-tsupport.md) | 3289 | `result-track:bfff8f819a86ca16eebb31f1a58eeb8c8eb8410fccf7d584be7f23887b1a73b9` |
| 195 | `lemma` | [norm_integrand_le_K_mul_norm_psi](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/norm-integrand-le-k-mul-norm-psi.md) | 3313 | `result-track:e1b521f99b2df2f88b811f861e2560412b142cd8ec054e85d53374739019f0c0` |
| 196 | `lemma` | [norm_error_integral_le](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/norm-error-integral-le.md) | 3338 | `result-track:e9977cfec5f78ad267f3d35f429b9458b9537e677bb0fc8b46fc9efcf180d213` |
| 197 | `lemma` | [crude_upper_bound](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/crude-upper-bound.md) | 3408 | `result-track:4fbbb0fe61f242389dd7e01a4e1606e6f0cec2720d50c6cbd8b421e922c877a4` |
| 198 | `lemma` | [Real.fourierIntegral_convolution](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/real-fourierintegral-convolution.md) | 3543 | `result-track:d2abc3cba14cd66616fd24458cac6fbd5e3ea730cdc75e3c279e616e71b83135` |
| 199 | `lemma` | [Real.fourierIntegral_conj_neg](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/real-fourierintegral-conj-neg.md) | 3572 | `result-track:79ff2dbd24e245ecada0c3f1814f5eb7f33872e4be8a5a1b3da01e22997560cc` |
| 200 | `lemma` | [auto_cheby_exists_smooth_nonneg_fourier_kernel](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/auto-cheby-exists-smooth-nonneg-fourier-kernel.md) | 3589 | `result-track:807fdff0e6c1b3299d4dd71bf3f29bb7fe26bd576a7d328ce3a856b1bcccb0cb` |
| 201 | `lemma` | [auto_cheby_fourier_summable](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/auto-cheby-fourier-summable.md) | 3639 | `result-track:30218f48a95900b5e751cd4ff3b491d4c7134efc278d0e63c3519109de619a20` |
| 202 | `lemma` | [auto_cheby_short_interval_bound](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/auto-cheby-short-interval-bound.md) | 3729 | `result-track:c45cbf82916d07b6afa225a83a954fb24902b85cb3c30ebd548742e4308c3f62` |
| 203 | `lemma` | [auto_cheby_bootstrap_induction](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/auto-cheby-bootstrap-induction.md) | 3812 | `result-track:b410ecaee970322dfd8ee5ff829ec3df4376c83deacbba61c583e5b7c195ef03` |
| 204 | `lemma` | [auto_cheby](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/auto-cheby.md) | 3896 | `result-track:0951249cb01ba99a86f8564e53958bbc053185911e1b2a145680cdc6e784e1ea` |
| 205 | `theorem` | [WienerIkeharaTheorem''](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/wienerikeharatheorem.md) | 3909 | `result-track:5a902e1b1cfc0e0b7cd5a54c4c77512d167eb7aff29a7105337e4be813ccf847` |
| 206 | `theorem` | [WeakPNT_character](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/weakpnt-character.md) | 3938 | `result-track:148b6199eadb5f46705c2590fa96a307e1fc61882336724542082b5c5fb0dea0` |
| 207 | `theorem` | [WeakPNT_AP_prelim](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/weakpnt-ap-prelim.md) | 3984 | `result-track:527b677183cbb3163439fa27eba486c3696cba2a50379610afeac772bba3df3b` |
| 208 | `lemma` | [summable_vonMangoldt_div_rpow](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/summable-vonmangoldt-div-rpow.md) | 3999 | `result-track:8165f1a984e96b237c52600b29d747bb2ff039944c6e234789fa4f35cef8823f` |
| 209 | `theorem` | [WeakPNT_AP](../../../../MeasureAndIntegration/WienerNamespacedEdition2.lean/declarations/weakpnt-ap.md) | 4030 | `result-track:ac408909576ea0feaf8ba5df812ae16d968f510aed50658e4bad3f5a341957f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e5b997f7d30077d84d969d6fbe56f895f8138c009f9274ba4cd2df25049086da -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Wiener/Variantad3c57ec106810cca1baad79be714eee2d68131245c65d24f53380abe9deafce.lean","GRWTSK/_verification/specifications/Analysis/HarmonicAnalysis/FourierAnalysis/Wiener/Variantad3c57ec106810cca1baad79be714eee2d68131245c65d24f53380abe9deafce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
