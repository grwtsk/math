# Verification target: Dynamical Zeta Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03886f4abadc49af6c26ce34eee5e994683807da",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DynamicalZeta/Variant6fb23e5e40763f58a33bf62eb6df43b637f8fe09463383eed974669a9228c35f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03886f4abadc49af6c26ce34eee5e994683807da`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DynamicalZeta/Variant6fb23e5e40763f58a33bf62eb6df43b637f8fe09463383eed974669a9228c35f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DynamicalZeta/Variant6fb23e5e40763f58a33bf62eb6df43b637f8fe09463383eed974669a9228c35f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BinaryMatrix.Symmetry` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.FiniteDynamics.Permutation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.PeriodicPts.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.QuotientGroup` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasExactPeriod](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/hasexactperiod.md) | 43 | `declaration-track:d0ac71af70de42475ba5b43283ba7de5d68df1ef04d8b1147458980fcc1017d4` |
| 2 | `instance` | [hasExactPeriodDecidable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/hasexactperioddecidable.md) | 56 | `declaration-track:9a1548b21bf86e39ed01fd3516e199d60bba2c8a550522c644f26808afee9227` |
| 3 | `def` | [exactPeriodPoints](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/exactperiodpoints.md) | 76 | `declaration-track:931781d7ac76b31ff7a588f3798c464c15cdea34b89becf776d8b2fd9577cb1f` |
| 4 | `def` | [exactPeriodCount](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/exactperiodcount.md) | 82 | `declaration-track:865bd44e6ec6de8f2bfa15497519c0d7a0a90c759ccd50842716816da7e3d04b` |
| 5 | `theorem` | [mem_exactPeriodPoints_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/mem-exactperiodpoints-iff.md) | 87 | `result-track:6a85806745bed9605579d61ed91125344aaf6e9f770b20f78a80495fa8149276` |
| 6 | `theorem` | [exactPeriodPoints_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/exactperiodpoints-zero.md) | 95 | `result-track:69c4fb8ccf26e2b0ba4738fc9ae9449f4e4ee803c6f03bea30882e5de9a2404b` |
| 7 | `theorem` | [exactPeriodCount_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/exactperiodcount-zero.md) | 101 | `result-track:461c0159c671b6b865d601589230f7480981c9805881666dcf810d80cac94bf1` |
| 8 | `theorem` | [exactPeriodPoints_subset_fixedPoints](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/exactperiodpoints-subset-fixedpoints.md) | 106 | `result-track:49ee4422f99e5db4ca8935748efaa4afbaac96f813fa89cdb597d4ec36ce5ab2` |
| 9 | `theorem` | [isPeriodicPt_iff_pow_apply](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/isperiodicpt-iff-pow-apply.md) | 116 | `result-track:0b57a03b44ce2da863ee02a54fc98953e6f93c5cd677096e6e3324de4a80462e` |
| 10 | `theorem` | [hasExactPeriod_iff_minimalPeriod_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/hasexactperiod-iff-minimalperiod-eq.md) | 124 | `result-track:14de3a08fb591504f197e45c0e4d8c92cae950f573ae697e728db8abf584a95c` |
| 11 | `theorem` | [exactPeriod_dvd_of_fixed](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/exactperiod-dvd-of-fixed.md) | 160 | `result-track:373aaa8481d57ba80b13ec0f0eb3799034733627354fea30b282c0a3d2829abd` |
| 12 | `theorem` | [mem_fixedPoints_iff_exists_exactPeriod](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/mem-fixedpoints-iff-exists-exactperiod.md) | 174 | `result-track:a0d858ab788bd5e3dbbb1fea8cda3adff576bbfbfbcef963c616ef242c7e048e` |
| 13 | `theorem` | [exactPeriodPoints_disjoint](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/exactperiodpoints-disjoint.md) | 202 | `result-track:9b9cb9ee24c3dd2aa621361bb44825f7f7eb3154139c99e6cde8b5cb197b41e5` |
| 14 | `theorem` | [fixedPoints_eq_biUnion_exactPeriodPoints](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/fixedpoints-eq-biunion-exactperiodpoints.md) | 215 | `result-track:93db4d262b43dc59996d5c4da7af04f41797759ed23c48deb4f7b93c30cd2b0b` |
| 15 | `theorem` | [fixedPointCount_eq_sum_exactPeriodCount](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/fixedpointcount-eq-sum-exactperiodcount.md) | 225 | `result-track:b7d390543e7f9a1aa097944dd946d4484b127480ebef76aa769f10b30ea2ba35` |
| 16 | `abbrev` | [ExactPoint](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/exactpoint.md) | 240 | `declaration-track:10e11b0f53de324c64aebfc023b2d243900abe0dbde3fdee35209986e990e32e` |
| 17 | `theorem` | [hasExactPeriod_apply](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/hasexactperiod-apply.md) | 243 | `result-track:5ea29dbb84da78b8a2278e99ed68b35ae534581c73f561408cc215115e540d8b` |
| 18 | `theorem` | [hasExactPeriod_symm_apply](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/hasexactperiod-symm-apply.md) | 254 | `result-track:3e61a198dc9b48d6ae2afadfe4da36f0158b3431b2ccc8199e0be96aa408ce75` |
| 19 | `def` | [exactPeriodPerm](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/exactperiodperm.md) | 269 | `declaration-track:c62feb4338754ca53a13ec04e798a223c60b603673da6dfaf8e90a437ae288ac` |
| 20 | `theorem` | [exactPeriodPerm_apply_val](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/exactperiodperm-apply-val.md) | 282 | `result-track:91ac25acdd454684374739d78cd6abf6ae826f6134d2d44c7ac2dd76a0efc867` |
| 21 | `theorem` | [exactPeriodPerm_pow_apply_val](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/exactperiodperm-pow-apply-val.md) | 289 | `result-track:825880a689862b322f69d26775a219229e44abd86d878872b87246927dad4ea6` |
| 22 | `theorem` | [minimalPeriod_exactPeriodPerm](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/minimalperiod-exactperiodperm.md) | 300 | `result-track:487dd1c4afc09f11e4de006fd8bc012bcfa8ebb72b42a4bf56cc197349d350f9` |
| 23 | `theorem` | [exactPeriodCount_dvd](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/exactperiodcount-dvd.md) | 328 | `result-track:491fef94490df84e19777442c2ffc4d4481a54cda8389ae4fd32e6445cde8c2e` |
| 24 | `def` | [cycleCount](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/cyclecount.md) | 360 | `declaration-track:0b4131d9e419d91bb205ace616f67e85dc447495f06bbe8a65d68643437753c3` |
| 25 | `theorem` | [cycleCount_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/cyclecount-zero.md) | 364 | `result-track:df9cea0822dce3b7440156f1bb177c0cb00058d9102e5b38480bbed371d54534` |
| 26 | `theorem` | [exactPeriodCount_eq_mul_cycleCount](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/exactperiodcount-eq-mul-cyclecount.md) | 369 | `result-track:062c68b95df389f3267963ea1ec121a134529dd7e667e71bf37a4b4e5c0f755c` |
| 27 | `theorem` | [fixedPointCount_eq_sum_mul_cycleCount](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/fixedpointcount-eq-sum-mul-cyclecount.md) | 378 | `result-track:e41a8950662f49efd966edd779b7d1a14dc545960910812181ef6e81c683f7df` |
| 28 | `theorem` | [hasExactPeriod_conjugate_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/hasexactperiod-conjugate-iff.md) | 391 | `result-track:deefd2ff9e11db03129c772969c6832d8b85f2da9ef849b5bdab674687d5b0fd` |
| 29 | `theorem` | [exactPeriodCount_conjugate](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/exactperiodcount-conjugate.md) | 418 | `result-track:4c5f443fd9c35778876978b477e49d4cc6ee333dfe7fff8ad73b18be18a051b2` |
| 30 | `theorem` | [cycleCount_conjugate](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/cyclecount-conjugate.md) | 438 | `result-track:cd5778e94820b4937187d064d17a67bbc025ecba34846053cc11c9bc32a62076` |
| 31 | `theorem` | [exactPeriodCount_le_stateCard](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/exactperiodcount-le-statecard.md) | 444 | `result-track:877580f6f96e823950c376af308e81641030f8f9170611d2311785530109ae02` |
| 32 | `theorem` | [cycleCount_eq_zero_of_card_lt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/cyclecount-eq-zero-of-card-lt.md) | 455 | `result-track:dcf6e182fbf042fd212544b382efff213c6d9fd07883df539e50aaaea97d5d82` |
| 33 | `theorem` | [cycleCount_mobius](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/cyclecount-mobius.md) | 467 | `result-track:0d549777801462ae9c0d1c09ce069a1e6c78a3b91bb55233ef65c6556d853c85` |
| 34 | `def` | [cycleEulerFactorData](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/cycleeulerfactordata.md) | 495 | `declaration-track:df959f57af73d13f40521cb7c1da041611cf83de417ac7d471971358864e6143` |
| 35 | `theorem` | [cycleEulerFactorData_apply](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/cycleeulerfactordata-apply.md) | 510 | `result-track:9beb9627c395937e58039ebd8f128e55ea5d69c6d9bb3ff103c9d2a79432ff54` |
| 36 | `theorem` | [cycleEulerFactorData_support_subset](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/cycleeulerfactordata-support-subset.md) | 517 | `result-track:0193d56c5e30d5eccaa608c14682195f94b95d6192c2188001bc5d1688e08ae0` |
| 37 | `theorem` | [cycleEulerFactorData_conjugate](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/cycleeulerfactordata-conjugate.md) | 523 | `result-track:f3daeb5e6658322e6b1291f653c6d23c608c156a9fda84fe19dd00fc9f0c5ddd` |
| 38 | `def` | [firstSecondSwap](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/firstsecondswap.md) | 537 | `declaration-track:3e591f8fca7829f99469fba7134a1cecc74aec74a89e8f9fdc12730ef7cdce97` |
| 39 | `theorem` | [firstSecondSwap_ne_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/firstsecondswap-ne-one.md) | 541 | `result-track:28931610552ce2cba24913bdfedfc5228b4a448f31b4fb56a4ab9c3e02b64115` |
| 40 | `theorem` | [coordinate_firstSecondSwap_ne_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/coordinate-firstsecondswap-ne-one.md) | 548 | `result-track:21fced78ff62210fde28c259c898b0af2c3d81360e0cb4cd04860dfde5a73097` |
| 41 | `theorem` | [exists_nontrivial_bitPerm_with_zero_avalanche](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/exists-nontrivial-bitperm-with-zero-avalanche.md) | 561 | `result-track:f5d7e9fd5bcdf8aa14337cbb31de6c8a538301668365fa84d622fcab732f0451` |
| 42 | `theorem` | [cycleEulerFactorData_ne_identity_of_ne](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/cycleeulerfactordata-ne-identity-of-ne.md) | 574 | `result-track:2c57949d37865fd044d2eb4ad6d5dab076e7ebb27279284be937aa89dc091c00` |
| 43 | `theorem` | [exists_nontrivial_cycle_data_with_zero_avalanche](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/exists-nontrivial-cycle-data-with-zero-avalanche.md) | 616 | `result-track:569de2d298d5c2a4e51acb40a22d0e2ce6f01ca524b92cf6172fe150ab1f6940` |
| 44 | `theorem` | [fixedPointCount_eq_generic](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/fixedpointcount-eq-generic.md) | 637 | `result-track:c65acd53a8f6aae3db7fa277abf41eb6ee061fb30e065b93d5a5c24b354ff683` |
| 45 | `theorem` | [hasExactPeriod_iff_generic](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/hasexactperiod-iff-generic.md) | 643 | `result-track:bcd407e308849d8bee431695ebef81f0df4cc4301d19c29cea467547406b0beb` |
| 46 | `theorem` | [exactPeriodCount_eq_generic](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/exactperiodcount-eq-generic.md) | 649 | `result-track:b59ec09810785c37d3d06a12e9d3cde05ac624fd2de4218bd515a7fe26aa66a6` |
| 47 | `theorem` | [cycleCount_eq_generic](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/cyclecount-eq-generic.md) | 655 | `result-track:ab5f6e7586926776a30b0bfe9aa7d6939f896592560e7b6cf87e0f988f2ef775` |
| 48 | `theorem` | [cycleEulerFactorData_apply_eq_generic](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DynamicalZetaNamespacedEdition2.lean/declarations/cycleeulerfactordata-apply-eq-generic.md) | 661 | `result-track:018027a19d1b921f71061b894242a8db4fa931237a5275778c89bb9efd29ff34` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=11428d03d890ace5576df2d8a294c7d91426c67663d52964b21f1dbfb4e57c4e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DynamicalZeta/Variant6fb23e5e40763f58a33bf62eb6df43b637f8fe09463383eed974669a9228c35f.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DynamicalZeta/Variant6fb23e5e40763f58a33bf62eb6df43b637f8fe09463383eed974669a9228c35f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
