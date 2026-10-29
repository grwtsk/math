# Verification target: Zeta Definitions Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66c2589c6e257b0c3c33d4c4596db5dd4e36dee6",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaDefinitions/Variantade7f5dfd5df40d392da06a71efa496bcde728aee9c617759e3c44a9c35c5ef5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaDefinitionsNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaDefinitionsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66c2589c6e257b0c3c33d4c4596db5dd4e36dee6`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaDefinitions/Variantade7f5dfd5df40d392da06a71efa496bcde728aee9c617759e3c44a9c35c5ef5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaDefinitions/Variantade7f5dfd5df40d392da06a71efa496bcde728aee9c617759e3c44a9c35c5ef5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Meromorphic.Order` — import line 8; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Nonvanishing` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [riemannZeta.zeroes](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaDefinitionsNamespaced.lean/declarations/riemannzeta-zeroes.md) | 28 | `declaration-track:8747c52b9465e0f4bed4bfaefff7ac0f7c1f68d9cdff0735cea94eb9eb7914eb` |
| 2 | `def` | [riemannZeta.zeroes_rect](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaDefinitionsNamespaced.lean/declarations/riemannzeta-zeroes-rect.md) | 32 | `declaration-track:c4091a619aa2f8029b9a4d00a57f02af58fcafd4dd23d63a01fcdd44b87e7ca4` |
| 3 | `lemma` | [riemannZeta.zeroes_rect_eq](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaDefinitionsNamespaced.lean/declarations/riemannzeta-zeroes-rect-eq.md) | 35 | `result-track:a54911ca90568b16892f2605396d823e8722fe7832662c476aaaee4f087eee40` |
| 4 | `lemma` | [riemannZeta.zeroes_rect_disjoint₁](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaDefinitionsNamespaced.lean/declarations/riemannzeta-zeroes-rect-disjoint.md) | 40 | `result-track:96fedd380a025d0279f224460cf080bdaa1341b0b8821e1749df35e365d7d7a0` |
| 5 | `lemma` | [riemannZeta.zeroes_rect_union](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaDefinitionsNamespaced.lean/declarations/riemannzeta-zeroes-rect-union.md) | 44 | `result-track:b32feb7961d56de0633757576d3a76c67bea31349c0ea6d41dda8a0ad4ce0adb` |
| 6 | `lemma` | [riemannZeta_differentiableOn_compl_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaDefinitionsNamespaced.lean/declarations/riemannzeta-differentiableon-compl-one.md) | 51 | `result-track:5f4d782a2be8ce2c60d178e51393d286efb96b94abb5b8987af2bf75c0a8f955` |
| 7 | `lemma` | [riemannZeta_analyticOn_compl_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaDefinitionsNamespaced.lean/declarations/riemannzeta-analyticon-compl-one.md) | 55 | `result-track:b7a428f1b75c433074cd9c9ea74635c5e4a96e4333b9736c387b327db5720715` |
| 8 | `lemma` | [riemannZeta.zeroes_codiscreteWithin_compl_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaDefinitionsNamespaced.lean/declarations/riemannzeta-zeroes-codiscretewithin-compl-one.md) | 59 | `result-track:69942a14c35db7f6ece6d63e44fea2a2c360b8dccdbd50996078c97cbe87e7a5` |
| 9 | `lemma` | [riemannZeta.zeroes_on_Compact_finite](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaDefinitionsNamespaced.lean/declarations/riemannzeta-zeroes-on-compact-finite-source-edition-2.md) | 69 | `result-track:ab61efa87bf4cd838a22a2ab87c3cd348cfc93a72bed13962e4ea23526400b94` |
| 10 | `lemma` | [riemannZeta_eventually_ne_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaDefinitionsNamespaced.lean/declarations/riemannzeta-eventually-ne-zero.md) | 81 | `result-track:eb9b1a9fd376789ce17ded5fe78a2df2dece1808a048b6c0bd197b7f6f31d0e7` |
| 11 | `lemma` | [riemannZeta_no_zeroes_near_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaDefinitionsNamespaced.lean/declarations/riemannzeta-no-zeroes-near-one.md) | 89 | `result-track:acbc5f90d77507af7b2975ce1791c22ad9336b63f9d4d8e0276f85fee13bda1c` |
| 12 | `lemma` | [riemannZeta.zeroes_on_Compact_finite'](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaDefinitionsNamespaced.lean/declarations/riemannzeta-zeroes-on-compact-finite.md) | 98 | `result-track:1533d6dbb6bd967b44df2ca036c02160e43ab13e87819f918dd396d4bad21cd4` |
| 13 | `def` | [riemannZeta.order](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaDefinitionsNamespaced.lean/declarations/riemannzeta-order.md) | 111 | `declaration-track:7334a7f05cde9914bc200809252b4cd64c53d6605040d95554d8cb8b0a5c1f37` |
| 14 | `def` | [riemannZeta.zeroes_sum](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaDefinitionsNamespaced.lean/declarations/riemannzeta-zeroes-sum.md) | 115 | `declaration-track:53a839e8e7b913a4717e14e4f8dd3807b5b2b95c05b5bb014653f720f1e30498` |
| 15 | `def` | [riemannZeta.RH_up_to](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaDefinitionsNamespaced.lean/declarations/riemannzeta-rh-up-to.md) | 125 | `declaration-track:1d63e390db5711eeedd877ec2d2997d8111ebdf5f4897885bff1be18d5cd001e` |
| 16 | `def` | [riemannZeta.classicalZeroFree](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaDefinitionsNamespaced.lean/declarations/riemannzeta-classicalzerofree.md) | 135 | `declaration-track:68e34853dc14495d1ff29838fdffa474fc9a88dbf4c752267b46f53802f143be` |
| 17 | `def` | [riemannZeta.N](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaDefinitionsNamespaced.lean/declarations/riemannzeta-n-source-edition-2.md) | 145 | `declaration-track:94244027e7dd3367fd7e06d074a3a8b4339ad1231027ec8ced1b91f0fc20b1c6` |
| 18 | `def` | [riemannZeta.N'](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaDefinitionsNamespaced.lean/declarations/riemannzeta-n.md) | 154 | `declaration-track:68e116a7f8624f9ee441552541f21cf1bfdb1f165b7f34b4ea4b8eb4e6e05d81` |
| 19 | `def` | [riemannZeta.RvM](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaDefinitionsNamespaced.lean/declarations/riemannzeta-rvm.md) | 158 | `declaration-track:c7ea96cb07bc0b0f4e81fdd41447ea95cfb4402c524ace91439c527005bd29ea` |
| 20 | `def` | [riemannZeta.Riemann_vonMangoldt_bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaDefinitionsNamespaced.lean/declarations/riemannzeta-riemann-vonmangoldt-bound.md) | 169 | `declaration-track:484d595880de5e677c382858c90a3a452a113958f0def18b4f126dac5ba23a36` |
| 21 | `structure` | [zero_density_bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaDefinitionsNamespaced.lean/declarations/zero-density-bound.md) | 181 | `declaration-track:487e07530d15219f59ff18702f56883388b99eddb7d9f7724435ce82d4b21f4c` |
| 22 | `def` | [zero_density_bound.N](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaDefinitionsNamespaced.lean/declarations/zero-density-bound-n.md) | 193 | `declaration-track:650237d1b270ce641c32f88e48ae6a3d919b704bb1188878691d53ee1b4c1277` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1b235238255b0fb086cecd089a4186491c16cc37bfb4033e8e41b0501322dc27 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaDefinitions/Variantade7f5dfd5df40d392da06a71efa496bcde728aee9c617759e3c44a9c35c5ef5.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaDefinitions/Variantade7f5dfd5df40d392da06a71efa496bcde728aee9c617759e3c44a9c35c5ef5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
