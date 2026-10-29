# Verification target: Translations V3 Source Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0abf3b2d5438574562efb7d7aa1517c184f9ccdf",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TranslationsV3Source/Variant7ea53dbf5659039b62001575f66e5b56e577397907a3d1fae18930e802de20b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TranslationsV3SourceNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TranslationsV3SourceNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0abf3b2d5438574562efb7d7aa1517c184f9ccdf`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TranslationsV3Source/Variant7ea53dbf5659039b62001575f66e5b56e577397907a3d1fae18930e802de20b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TranslationsV3Source/Variant7ea53dbf5659039b62001575f66e5b56e577397907a3d1fae18930e802de20b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePrimeMomentScale` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.GevreyPolynomial` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [translation_add](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TranslationsV3SourceNamespaced.lean/declarations/translation-add.md) | 35 | `result-track:3a7e88bfe34033aa9f89ece16b157644dd96221997fd7b4fcce367f1eb56cb8a` |
| 2 | `theorem` | [translation_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TranslationsV3SourceNamespaced.lean/declarations/translation-zero.md) | 47 | `result-track:dcd59ba10f6cc1f88be14fc8495f677b90eeceed5b8f4ac78b434f35c6545fb5` |
| 3 | `theorem` | [translation_symm_apply](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TranslationsV3SourceNamespaced.lean/declarations/translation-symm-apply.md) | 53 | `result-track:bdb7c6bcfe54521c048f55d0f4e417b5c7c21eff324e128976cae6f5c88c92f8` |
| 4 | `theorem` | [translation_inner_flip](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TranslationsV3SourceNamespaced.lean/declarations/translation-inner-flip.md) | 59 | `result-track:c1ccfe6882b4850664a4a5163850b9fcb672efbb4e175d895bb0f02597fc4fa9` |
| 5 | `theorem` | [translation_self_real_even](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TranslationsV3SourceNamespaced.lean/declarations/translation-self-real-even.md) | 64 | `result-track:058c6631017ff69c2699b08eba6ca19455c3bfbbb4d2e1f640c56c21f158002d` |
| 6 | `def` | [symmetricTranslation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TranslationsV3SourceNamespaced.lean/declarations/symmetrictranslation.md) | 70 | `declaration-track:d118a264d51f5ae1dad419458785395c78fe58f94fa4186217bae153fe7f2a70` |
| 7 | `theorem` | [symmetricTranslation_apply](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TranslationsV3SourceNamespaced.lean/declarations/symmetrictranslation-apply.md) | 75 | `result-track:c103ecf733d7bd2424309bc5e131d413fa3c997ce39de86ab3e6c6a06f8019f2` |
| 8 | `theorem` | [symmetricTranslation_inner_symmetric](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TranslationsV3SourceNamespaced.lean/declarations/symmetrictranslation-inner-symmetric.md) | 79 | `result-track:9896a70ea2fb22a4803ccd1458219c05d3fd8b22bbe1ee1f6313accedbcdef4d` |
| 9 | `theorem` | [symmetricTranslation_selfAdjoint](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TranslationsV3SourceNamespaced.lean/declarations/symmetrictranslation-selfadjoint.md) | 87 | `result-track:03733c886a4e225521b292ad09d91d69c52aa507b28671753a2f1d1db3512faf` |
| 10 | `theorem` | [symmetricTranslation_self_real](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TranslationsV3SourceNamespaced.lean/declarations/symmetrictranslation-self-real.md) | 91 | `result-track:6d780079409dbf6e3502f5982a6361ecacd00839c0dd76a7b623c62071f324c3` |
| 11 | `def` | [mangoldtCoefficient](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TranslationsV3SourceNamespaced.lean/declarations/mangoldtcoefficient.md) | 99 | `declaration-track:5a048fb0728e75e6b9d11aa6d0a4c61266417e6ee9cd62948fb69845f318183d` |
| 12 | `def` | [mangoldtInteraction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TranslationsV3SourceNamespaced.lean/declarations/mangoldtinteraction.md) | 102 | `declaration-track:020fac83fe80ffaa2e056854f8fd616d5686c21c6219645cf72a3e177d010417` |
| 13 | `theorem` | [mangoldtInteraction_apply](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TranslationsV3SourceNamespaced.lean/declarations/mangoldtinteraction-apply.md) | 107 | `result-track:0c45e2e61855ea8ec3702deaa2e16f1c77bda5b206ea268a9e3c1fb7bfa7ea56` |
| 14 | `theorem` | [mangoldtInteraction_inner_symmetric](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TranslationsV3SourceNamespaced.lean/declarations/mangoldtinteraction-inner-symmetric.md) | 114 | `result-track:4c608738d93f9b8cf38c3b09938fd224a8b876afcd8df832f67ff5e946eb70bb` |
| 15 | `theorem` | [mangoldtInteraction_selfAdjoint](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TranslationsV3SourceNamespaced.lean/declarations/mangoldtinteraction-selfadjoint.md) | 120 | `result-track:4f75c788cf2a9ee64a3af77f4a5b333d486ff2a0ffc08a2230cea2e72e675f22` |
| 16 | `theorem` | [mangoldtInteraction_self_real](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TranslationsV3SourceNamespaced.lean/declarations/mangoldtinteraction-self-real.md) | 124 | `result-track:49eea9787a9038a17bf58f9b4b01d59514d231ba00461cf74cc573652bbb615a` |
| 17 | `theorem` | [closedPrimeMoment_eq_quadratic](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TranslationsV3SourceNamespaced.lean/declarations/closedprimemoment-eq-quadratic.md) | 132 | `result-track:7b1fec4194f2c9b5cde5e9e2f54a691cd1d12f73c24f8635acf6f22a1474056a` |
| 18 | `theorem` | [mertensResidual_eq_quadratic](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TranslationsV3SourceNamespaced.lean/declarations/mertensresidual-eq-quadratic.md) | 143 | `result-track:d543b0a81666f19d9eaa33efd9528e859967559a97fe8d0326779163ed2d4fdf` |
| 19 | `theorem` | [criticalMangoldtWork_eq_continuous_sub_quadratic](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TranslationsV3SourceNamespaced.lean/declarations/criticalmangoldtwork-eq-continuous-sub-quadratic.md) | 149 | `result-track:4282409ce0a9150fac69a3657e3d0bca19646adfd6c867667c3bffa98dca8712` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eaef746095c993b7e7539b26be8eb3536dd79b09e0be0dd762c6b7d7ba43d2b0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TranslationsV3Source/Variant7ea53dbf5659039b62001575f66e5b56e577397907a3d1fae18930e802de20b2.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TranslationsV3Source/Variant7ea53dbf5659039b62001575f66e5b56e577397907a3d1fae18930e802de20b2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
