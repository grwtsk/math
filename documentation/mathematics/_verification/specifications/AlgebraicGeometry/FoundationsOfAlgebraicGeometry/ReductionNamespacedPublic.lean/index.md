# Verification target: Reduction Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d2a14bce2719c1612afaf5a6791e75c827763cc",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Reduction/Variant0af4f682a8730874fb0a3f8483a200882000cac75c863859d5710d993ac49173.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d2a14bce2719c1612afaf5a6791e75c827763cc`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Reduction/Variant0af4f682a8730874fb0a3f8483a200882000cac75c863859d5710d993ac49173.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Reduction/Variant0af4f682a8730874fb0a3f8483a200882000cac75c863859d5710d993ac49173.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsIntegral](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/declarations/isintegral.md) | 67 | `declaration-track:1f0f784beee1a35e0250bac012c734ea3bbab285eaabe3742347f235e08a3fe6` |
| 2 | `def` | [integralModel](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/declarations/integralmodel.md) | 71 | `declaration-track:23e36d29f60ffc4013039fe5e1903cb2e53349d8e9cbaba08183b5d07b9d03cb` |
| 3 | `lemma` | [baseChange_integralModel_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/declarations/basechange-integralmodel-eq.md) | 77 | `result-track:d971ba23b8ca91fb1a923ac33d2a16dd81a913fefc5c173e44b494bb570258ba` |
| 4 | `lemma` | [isIntegral_of_exists_lift](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/declarations/isintegral-of-exists-lift.md) | 81 | `result-track:33f7470ab56acfdba675611cf025840a13ce321527d0befb02b1eecdd1499a41` |
| 5 | `lemma` | [Δ_integral_of_isIntegral](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/declarations/integral-of-isintegral.md) | 97 | `result-track:bbf87e8c080489413a14cbc6239a297571819d5de3e41240fde5fe3df67d8650` |
| 6 | `lemma` | [integralModel_a₁_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/declarations/integralmodel-a-eq-source-edition-5.md) | 104 | `result-track:f75439db0a684db1242e91125ef675044cb8dbdf5e967785ed241f69c94f5f8a` |
| 7 | `lemma` | [integralModel_a₂_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/declarations/integralmodel-a-eq-source-edition-3.md) | 109 | `result-track:a1f16f541ca89c27defff1fe7aa96e1a99f4fc378459fd8bfefae808c69e3bae` |
| 8 | `lemma` | [integralModel_a₃_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/declarations/integralmodel-a-eq.md) | 114 | `result-track:39580e1e7e3582faa5aa95c6cb9b181a661e5bd7ad0d068164fd1dbcc8ea74f0` |
| 9 | `lemma` | [integralModel_a₄_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/declarations/integralmodel-a-eq-source-edition-4.md) | 119 | `result-track:b90820ec85e817f7005cc5ad275d0f42abc13ff139c78b25688994743051433b` |
| 10 | `lemma` | [integralModel_a₆_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/declarations/integralmodel-a-eq-source-edition-2.md) | 124 | `result-track:755efcafc81510a8e78c5a7e3e2301eaff929408a744b74f50aed64cb6ee63e1` |
| 11 | `lemma` | [integralModel_b₂_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/declarations/integralmodel-b-eq.md) | 129 | `result-track:169e6e37a4404b18163a3092f977e771df4c0befdd1cdc5969770f4890e0af7c` |
| 12 | `lemma` | [integralModel_b₄_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/declarations/integralmodel-b-eq-source-edition-4.md) | 134 | `result-track:effffe53f8b6a5c26656503fa06d1b0a464db6999226d323b1d5abcb87440baf` |
| 13 | `lemma` | [integralModel_b₆_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/declarations/integralmodel-b-eq-source-edition-3.md) | 139 | `result-track:d1f349dcb7557e8d5f30d183570b98ebac3833d8e46e2329eac4fe06dd6331ea` |
| 14 | `lemma` | [integralModel_b₈_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/declarations/integralmodel-b-eq-source-edition-2.md) | 144 | `result-track:c533c200dd088cb2812f8de5759a796c90bce0d382af18bc1d046860de814b09` |
| 15 | `lemma` | [integralModel_c₄_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/declarations/integralmodel-c-eq.md) | 149 | `result-track:70d143e9f2d0432ecb97c511d4a84269d9ca9b012fdd77e98ae4f9e1b2fb5112` |
| 16 | `lemma` | [integralModel_c₆_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/declarations/integralmodel-c-eq-source-edition-2.md) | 154 | `result-track:90ca503d0555177f9d2ac7a6ee072c697b11a23087b25318794d3f0a9661a187` |
| 17 | `lemma` | [integralModel_Δ_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/declarations/integralmodel-eq.md) | 159 | `result-track:657d20cbb4d94953648d70a9b7815072e8d908124ea59c59b076681e4f8105af` |
| 18 | `theorem` | [exists_isIntegral](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/declarations/exists-isintegral.md) | 168 | `result-track:c54c17c2f7215b195af024d785efc27e00ada3ca2be5b8d29b10f2e8202f1b70` |
| 19 | `lemma` | [r_integral_of_u_integral](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/declarations/r-integral-of-u-integral.md) | 221 | `result-track:42ec9974553737210b691248584e9db70f879d4d6a6c26402b0873c0a5250a33` |
| 20 | `lemma` | [s_integral_of_u_integral](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/declarations/s-integral-of-u-integral.md) | 229 | `result-track:b409fc154e80cff19ff718ed0325521975d88af8c542f41a9a36da439ee8cd95` |
| 21 | `lemma` | [t_integral_of_u_integral](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/declarations/t-integral-of-u-integral.md) | 237 | `result-track:d5b220d5a44cb84224c17d967c1a4c5aba6275a15d258baac1569aceccf8aabf` |
| 22 | `theorem` | [variableChange_integral_of_u_integral](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/declarations/variablechange-integral-of-u-integral.md) | 249 | `result-track:297dbb5e06530daf3f00752063cfc72f4d7df8b2e6f2d30534a91bac43cd1333` |
| 23 | `def` | [valuation_Δ_aux](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/declarations/valuation-aux.md) | 267 | `declaration-track:11276833c571892400f6054954226351e68f4ebf58b99b2ad41cc47d1235a622` |
| 24 | `lemma` | [valuation_Δ_aux_eq_of_isIntegral](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/declarations/valuation-aux-eq-of-isintegral.md) | 276 | `result-track:c5db3c82b0cf26e310e0d70692d3705c060967a27adc7c33c5b45a1a6a61ca3a` |
| 25 | `class` | [IsMinimal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/declarations/isminimal.md) | 284 | `declaration-track:eecea1b479b0d23d521752b75a42bd44ba9cf6a40f92b7349bcf6f6486c4cc29` |
| 26 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/declarations/instance.md) | 292 | `declaration-track:9a22faf1d79f4fce25794ab6fcc963b9b4b307ebb17be81fe468c1cec9b3d131` |
| 27 | `theorem` | [exists_isMinimal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/declarations/exists-isminimal.md) | 295 | `result-track:2089bdc6fdde99dc7787820059bc20747276d8dcaf197358fc1435350db70878` |
| 28 | `def` | [minimal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/declarations/minimal.md) | 309 | `declaration-track:aa52043c8a7834e5fc5cc6b2ffb36f24310d9ad4f388fccf666612604b978500` |
| 29 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 312 | `declaration-track:c1bdd1f587b864a204454e9c78a3f69677a90cc2604073c98bb65bb2d579fb34` |
| 30 | `def` | [reduction](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/declarations/reduction.md) | 326 | `declaration-track:774c0cf939a2bd4d293e29d05e48623f1ed1650f0304fc226650a9c0c41e9464` |
| 31 | `class` | [HasGoodReduction](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/declarations/hasgoodreduction.md) | 333 | `declaration-track:24648f6e7834cc28c69d3dc2d83382258b45c6ef79aa2039c74b0a3cf57bbcd3` |
| 32 | `lemma` | [hasGoodReduction_iff_isElliptic_reduction](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/declarations/hasgoodreduction-iff-iselliptic-reduction.md) | 338 | `result-track:a01ee0ea16a98ce358e2430679ae1d3af043d77af65515d63657e691f618daae` |
| 33 | `class` | [HasMultiplicativeReduction](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/declarations/hasmultiplicativereduction.md) | 355 | `declaration-track:7089205566012dc0668616827f5985fa35f0af045b7660a1b5b6a7b00e7d2098` |
| 34 | `class` | [HasAdditiveReduction](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/declarations/hasadditivereduction.md) | 362 | `declaration-track:2a6ef36a3c927d47ddd4c64647136f14830e8fd11042ef55be2f80787a5e157e` |
| 35 | `class` | [HasSplitMultiplicativeReduction](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/declarations/hassplitmultiplicativereduction.md) | 374 | `declaration-track:9941481121c936cebdd88bdbb04594f7d44af3ad25b9fa1af5bba88fa644a7dc` |
| 36 | `theorem` | [hasGoodReduction_or_hasMultiplicativeReduction_or_hasAdditiveReduction](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/declarations/hasgoodreduction-or-hasmultiplicativereduction-or-hasadditivereduction.md) | 382 | `result-track:08684634d1615b30df5dbb1dff3e41bc0fbd253d282da8905c0d45c6cc996a07` |
| 37 | `theorem` | [HasGoodReduction.not_hasMultiplicativeReduction](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/declarations/hasgoodreduction-not-hasmultiplicativereduction.md) | 388 | `result-track:00e41f2431ba5d20f8e0565aaaf609d55b49ac63e60a4bb5c9e523e73e31ab6c` |
| 38 | `theorem` | [HasGoodReduction.not_hasAdditiveReduction](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/declarations/hasgoodreduction-not-hasadditivereduction.md) | 392 | `result-track:e86c8f8887e1501b710a2d272c34d919a7135043e717b0352f9940a2c8da3d57` |
| 39 | `theorem` | [HasMultiplicativeReduction.not_hasGoodReduction](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/declarations/hasmultiplicativereduction-not-hasgoodreduction.md) | 396 | `result-track:99b615c8ad3642fe14e1c62eab3733147d668384c5475274d0e9f1cef5f090bf` |
| 40 | `theorem` | [HasAdditiveReduction.not_hasGoodReduction](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/declarations/hasadditivereduction-not-hasgoodreduction.md) | 400 | `result-track:8c161de9781ede2a0560d668a40ccbdaf3f38de1fb5fc200eeb89ed66ab78a00` |
| 41 | `theorem` | [HasMultiplicativeReduction.not_hasAdditiveReduction](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/declarations/hasmultiplicativereduction-not-hasadditivereduction.md) | 404 | `result-track:7f7005c1ea733a0ced508d15d25a43748aa1b16101bbe1f9072e19e31103995b` |
| 42 | `theorem` | [HasAdditiveReduction.not_hasMultiplicativeReduction](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ReductionNamespacedPublic.lean/declarations/hasadditivereduction-not-hasmultiplicativereduction.md) | 408 | `result-track:7c4b5f9145b639d88ffb5005c114750c5b0cc247867f586bf35350502c01bd3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=205fac71e6fed455d96d8edbe2a072a22a73eee5f31b7b07fdd31269aa3dc676 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Reduction/Variant0af4f682a8730874fb0a3f8483a200882000cac75c863859d5710d993ac49173.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Reduction/Variant0af4f682a8730874fb0a3f8483a200882000cac75c863859d5710d993ac49173.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
