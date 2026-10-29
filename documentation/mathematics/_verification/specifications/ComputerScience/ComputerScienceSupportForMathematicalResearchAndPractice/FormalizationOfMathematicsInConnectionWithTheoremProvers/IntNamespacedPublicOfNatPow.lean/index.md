# Verification target: Int Namespaced Public Of Nat Pow

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f689dda3e0e494c35dfa455c5289a998c7cc0cfa",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Int/Variant85449fcadb862911e7579c49414f55cbbc0fd735ffaf53f1a6af4289d147dacf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f689dda3e0e494c35dfa455c5289a998c7cc0cfa`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Int/Variant85449fcadb862911e7579c49414f55cbbc0fd735ffaf53f1a6af4289d147dacf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Int/Variant85449fcadb862911e7579c49414f55cbbc0fd735ffaf53f1a6af4289d147dacf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Int.Lemmas` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Int.Order` — import line 19; external provider; requires a separately pinned dependency.
- `Init.PropLemmas` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ofNat_pow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/ofnat-pow.md) | 40 | `result-track:fec1854d68794231b9f817f3e864514813343f3931d217dd180eabd1dfbcd875` |
| 2 | `theorem` | [pos_pow_of_pos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/pos-pow-of-pos.md) | 45 | `result-track:4418674a98de24a47dbb9df8f0d03ff64d696a60e93d4ba4fc76910f4cbc1a30` |
| 3 | `theorem` | [ofNat_pos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/ofnat-pos.md) | 49 | `result-track:a6b243ab1aa529d2a63d1e6b5f867bd272f4f6a827d65591b1d547ed76c506fb` |
| 4 | `theorem` | [ofNat_pos_of_pos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/ofnat-pos-of-pos.md) | 52 | `result-track:9246d586ad7aa47a3198095a6a66e407aa150f784a8b00f5c08e9f9836479ab5` |
| 5 | `theorem` | [natCast_ofNat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/natcast-ofnat.md) | 55 | `result-track:44a234694588c4ba6c9fd1ff7a16c75044bdbf714990ce351e93742801508153` |
| 6 | `theorem` | [ofNat_lt_of_lt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/ofnat-lt-of-lt.md) | 58 | `result-track:32a00f946f19660ed34ee62e8ea8c67093f727d632f4a2505cb4a9f245a3009f` |
| 7 | `theorem` | [ofNat_le_of_le](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/ofnat-le-of-le.md) | 61 | `result-track:cef48678e56ad80b39d2bd18b9f9ccccb8a96b646f6abd6897f3e9b1d4ad47cc` |
| 8 | `theorem` | [ofNat_shiftLeft_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/ofnat-shiftleft-eq.md) | 64 | `result-track:7866b7ff93e7d1340f0539d4224a07ed4dcccf772675eabf7f07e293bc3606e8` |
| 9 | `theorem` | [ofNat_shiftRight_eq_div_pow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/ofnat-shiftright-eq-div-pow.md) | 67 | `result-track:4587b6763be383f560eb983113e2be4ac94a2a0beb41360ceb71023e722668db` |
| 10 | `theorem` | [emod_ofNat_nonneg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/emod-ofnat-nonneg.md) | 70 | `result-track:2c0b0bb1323a5393a0df8e6141650a1ccfdecc55ffc93689234cb80a0dad048e` |
| 11 | `theorem` | [lt_of_not_ge](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/lt-of-not-ge.md) | 74 | `result-track:8ffb52e092af8814f43a4671e68d7542c67792d2d9c335dc495bba433438406e` |
| 12 | `theorem` | [lt_of_not_le](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/lt-of-not-le-source-edition-2.md) | 75 | `result-track:c980a15e289f911ce4789a4a49f7226d149ab573968f809e729a372237c25690` |
| 13 | `theorem` | [not_le_of_lt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/not-le-of-lt.md) | 76 | `result-track:9163f0bd262e7eca76af9426491bd9bd7e623ac1877af69161ece9d824c0121f` |
| 14 | `theorem` | [lt_le_asymm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/lt-le-asymm.md) | 77 | `result-track:f048b3b41f193d07f615348cea0d4a9f4c36c0572f4da7355098226f38fac41c` |
| 15 | `theorem` | [le_lt_asymm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/le-lt-asymm.md) | 78 | `result-track:5deca3bd4292c203a1225f585ebd36d7d73216f7a99f0fd51df0822b6e23dad8` |
| 16 | `theorem` | [le_of_not_gt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/le-of-not-gt.md) | 80 | `result-track:cf9b00c754cea4d2d1ab07d4565464153cab97a8fc62b098d629a38259078580` |
| 17 | `theorem` | [not_lt_of_ge](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/not-lt-of-ge.md) | 81 | `result-track:92ed93cc70da64fcc869c8db4e5b706b90533cb3cdae726c3097adf175e21cba` |
| 18 | `theorem` | [le_of_not_lt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/le-of-not-lt.md) | 82 | `result-track:6630008a3ff8cd40bc619a0b1fa606749bb4fdd0f86ac653f61a90b23ed7143a` |
| 19 | `theorem` | [not_lt_of_le](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/not-lt-of-le.md) | 83 | `result-track:372ae3beed5b3f07c7ddc3f1c0906359d946cb023fcc4c1daddea8d5126d1760` |
| 20 | `theorem` | [add_congr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/add-congr.md) | 85 | `result-track:3bbcc2a11a356e102f17b894d2a7d7f18a720a674b862f8c8b8f6e917bfa0775` |
| 21 | `theorem` | [mul_congr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/mul-congr.md) | 88 | `result-track:c5adac51dfd5fb2a00abe1643cadeb4ecc7f471f028ce44ffe596b99e4145df9` |
| 22 | `theorem` | [mul_congr_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/mul-congr-left.md) | 91 | `result-track:eac87bff1cbc400941eeb8de8baef231d5ca2ce35330173a4ede49f15366a23d` |
| 23 | `theorem` | [sub_congr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/sub-congr.md) | 94 | `result-track:0f08863955d685558c5247d49dd5d3da0cdab95137a63043b12f342507c5cc32` |
| 24 | `theorem` | [neg_congr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/neg-congr.md) | 97 | `result-track:1db588c90241994a2d25b9f1fe4aac9c906b1dcf47528b7036ed60c7564ee42e` |
| 25 | `theorem` | [lt_of_gt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/lt-of-gt.md) | 100 | `result-track:17159fe812d8f7f14858dd5bf48001d813bf55429912d66bcf6a8b313cfa4a46` |
| 26 | `theorem` | [le_of_ge](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/le-of-ge.md) | 101 | `result-track:427bb5e1f0c25448fa5d208b3bdb803cb3da389d453af570bf86f09aff39ec19` |
| 27 | `theorem` | [ofNat_mul_nonneg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/ofnat-mul-nonneg.md) | 103 | `result-track:a5dc8281909b18ca83c299c2736ebf024d9faf60ddebf6480800d57dceeda348` |
| 28 | `theorem` | [ofNat_sub_eq_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/ofnat-sub-eq-zero.md) | 107 | `result-track:04f100c8216732a19a6308c28ecea51eadd6df5658d13b03866ef5ff6b1e2a8b` |
| 29 | `theorem` | [ofNat_sub_dichotomy](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/ofnat-sub-dichotomy.md) | 110 | `result-track:1516cc54ee35e21d44fc10373d92723680c98550ff253b8f1e91a32d800766e8` |
| 30 | `theorem` | [ofNat_congr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/ofnat-congr.md) | 121 | `result-track:34408fb83d7fed3487d7da3ac98cdcadfc09f265aae84afb6957c29405d89fa4` |
| 31 | `theorem` | [ofNat_sub_sub](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/ofnat-sub-sub.md) | 123 | `result-track:02f332b7673c71c48fb2e5f43fc8f7ee45fca70f1f06b52239f5aee051a5a9a1` |
| 32 | `theorem` | [ofNat_min](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/ofnat-min.md) | 126 | `result-track:a75a31d59ace26aae48ad2c521ddaa4aadbf3cff434a49f04821a79bca54a7c7` |
| 33 | `theorem` | [ofNat_max](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/ofnat-max.md) | 130 | `result-track:a49aec6bf348903159cf6349feca779e4936db50a34921db9e56a8cc31879ef9` |
| 34 | `theorem` | [ofNat_natAbs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/ofnat-natabs.md) | 134 | `result-track:1afb34a9e422a70fac026d0e36fbdc22e9c3b534de591d7bf04fadb0e9c0cc1a` |
| 35 | `theorem` | [natAbs_dichotomy](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/natabs-dichotomy.md) | 141 | `result-track:fa2268b83ff7bad6b667cf454dada02b2ede693e2604fd2045dd72778d904dfe` |
| 36 | `theorem` | [neg_le_natAbs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/neg-le-natabs.md) | 150 | `result-track:1b543d699d53fd9a8555139088292bdcb3e52379a774056ab9330314c32dacec` |
| 37 | `theorem` | [add_le_iff_le_sub](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/add-le-iff-le-sub.md) | 155 | `result-track:0b176bcfe4796da5a9e9582e5e866249d71a9b1d947377be57278ebfeff825c4` |
| 38 | `theorem` | [le_add_iff_sub_le](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/le-add-iff-sub-le.md) | 162 | `result-track:cf747007bfbccb7d5dec33f6365a38166b3085b575a0564cc34187b797a2b665` |
| 39 | `theorem` | [add_le_zero_iff_le_neg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/add-le-zero-iff-le-neg-source-edition-2.md) | 168 | `result-track:eda62e86b5bc554301503df2082515e2e30da8a34ba4da466413473531621752` |
| 40 | `theorem` | [add_le_zero_iff_le_neg'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/add-le-zero-iff-le-neg.md) | 170 | `result-track:e493f18c56621a84e9903b2644202051c7710c0d3348d11e555b1fbba6097514` |
| 41 | `theorem` | [add_nonneg_iff_neg_le](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/add-nonneg-iff-neg-le.md) | 172 | `result-track:ab6298fc8c703bca0618d9488485e1c51c3ac2ef12f9f95cd02d5ccf8d231313` |
| 42 | `theorem` | [add_nonneg_iff_neg_le'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/add-nonneg-iff-neg-le-source-edition-2.md) | 174 | `result-track:fab7f319761ee6f93a4332541897149bb60debde50603a34679bac7d24c7d877` |
| 43 | `theorem` | [ofNat_fst_mk](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/ofnat-fst-mk.md) | 177 | `result-track:18b6859cb6ce5a75e5525c5bdc06baf6977be56d54c0c2aac9b5b5f6192b029f` |
| 44 | `theorem` | [ofNat_snd_mk](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/ofnat-snd-mk.md) | 178 | `result-track:4c9bdfcaef41be3259cbedff417a350a6e4eb2cad44838821c3c6c9c68042a05` |
| 45 | `theorem` | [lt_of_gt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/lt-of-gt-source-edition-2.md) | 185 | `result-track:e5a02b18ef4b11713354d1602f1d83c3bfd20aa40dde1c1da0cd083967e364d3` |
| 46 | `theorem` | [le_of_ge](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/le-of-ge-source-edition-2.md) | 186 | `result-track:ce44ad352b7718fffa8cb38922e494d35cce0dab13893dce8cca53a0198cab34` |
| 47 | `theorem` | [ne_iff_lt_or_gt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/ne-iff-lt-or-gt.md) | 192 | `result-track:9bff4fccc6e929d6a04285b175f38837c9a3fffc0e7da22e47513e03d577e4e4` |
| 48 | `theorem` | [lt_or_gt_of_ne](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/lt-or-gt-of-ne.md) | 195 | `result-track:65b6d05bf7e5242feba74a3204b0141b376dc72c9f72e17e2a48688569e7133a` |
| 49 | `theorem` | [not_le](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/not-le.md) | 197 | `result-track:f6a77534269bcf61cf0d2dbe19af2e6ba4cf0318e259a72854c6667bbe2e3fbf` |
| 50 | `theorem` | [not_lt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/not-lt.md) | 200 | `result-track:db397038ba8e76a661d5ba7b7db7e63b9dd87db20aec281ffbcfa240a7b53135` |
| 51 | `theorem` | [lt_of_not_le](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/lt-of-not-le.md) | 203 | `result-track:4d29f8900f736ede3c5d03d4dd65eda31e5fb621cceb666b903dd20c306ada99` |
| 52 | `theorem` | [le_of_not_lt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/le-of-not-lt-source-edition-2.md) | 204 | `result-track:c24dff626d1ef91f5285c9c40f338d52445df3fb19314010272c53ca5fb87d52` |
| 53 | `theorem` | [ofNat_val_add](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/ofnat-val-add.md) | 206 | `result-track:a1707d6f2e692a3c964ebfdb55b39cd172165774def38980f43cb30fe5ed46c0` |
| 54 | `theorem` | [ofNat_val_sub](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/ofnat-val-sub.md) | 209 | `result-track:a9e5a4644354b7541ca4ce3379ce853f795f65882634ea5c9c5016abfeab0bef` |
| 55 | `theorem` | [ofNat_val_mul](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/ofnat-val-mul.md) | 212 | `result-track:e39fb514881381c7bc979d24cab0b0abacb04e3bc33a6444cba5df0b3bf24f31` |
| 56 | `theorem` | [ofNat_val_natCast](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/ofnat-val-natcast.md) | 215 | `result-track:fcfac05928436d8c8f8225fcf866559c85f3ed2d2382a2eff9616e52a4ae106f` |
| 57 | `theorem` | [of_lex](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/of-lex.md) | 224 | `result-track:0862c8cee0339d6f8d53c88216f46631b0d9484188d11be30e20dbfaee857911` |
| 58 | `theorem` | [of_not_lex](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/of-not-lex.md) | 227 | `result-track:74574f1f756ab18246a71518e3981a9ed9132784ee5bfd7f550dd24862d824a3` |
| 59 | `theorem` | [fst_mk](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/fst-mk.md) | 233 | `result-track:13518e382b2ed4bf9933eb923a4408b9a4d9cec958fe4e68dfb70d4dc941df36` |
| 60 | `theorem` | [snd_mk](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntNamespacedPublicOfNatPow.lean/declarations/snd-mk.md) | 234 | `result-track:fe928721e8c1bf994eb63821e78ad2b1cc91deb4428a166dd0de15b26b6ed337` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0fadeba5ca4935dd2cef6981598bc1ac3e267c402a47bd4dd0a8a8e9f63f0781 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Int/Variant85449fcadb862911e7579c49414f55cbbc0fd735ffaf53f1a6af4289d147dacf.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Int/Variant85449fcadb862911e7579c49414f55cbbc0fd735ffaf53f1a6af4289d147dacf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
