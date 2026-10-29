# Verification target: Source Prime Square Tail Work Edition4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1094614db9115f5beeb671a900361db0245138b0",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant7b8974c71160b619fbb4ef3c333ec4c54797048f6f40c1a82f7f8a0ce0e75b8c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition4.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1094614db9115f5beeb671a900361db0245138b0`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant7b8974c71160b619fbb4ef3c333ec4c54797048f6f40c1a82f7f8a0ce0e75b8c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant7b8974c71160b619fbb4ef3c333ec4c54797048f6f40c1a82f7f8a0ce0e75b8c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePairedPrimeAverages` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceHigherPrimePowerCoefficients` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [squarePrefixCoefficient](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition4.lean/declarations/squareprefixcoefficient.md) | 29 | `declaration-track:3df0798f306d9ada94a5b4e61314d75717c499c4b818d629f2f769fed4f0b132` |
| 2 | `theorem` | [squarePrefixCoefficient_eq_slice](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition4.lean/declarations/squareprefixcoefficient-eq-slice.md) | 32 | `result-track:edc7f26c39b535cf9410ab73420f41b04b1addf96ef898a3de3c901420325cb1` |
| 3 | `theorem` | [squarePrefixCoefficient_summable](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition4.lean/declarations/squareprefixcoefficient-summable.md) | 45 | `result-track:3837dc0668d7f3f5138b0e6ccabaf9c5bd651150883637f293cee2c82c4278cc` |
| 4 | `theorem` | [squarePrefixCoefficient_pos](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition4.lean/declarations/squareprefixcoefficient-pos.md) | 53 | `result-track:66af69561ba94cfd80244c4043ee55a9aef0f3410057b27ed6a3c8f60841b4c8` |
| 5 | `def` | [squarePrefixBaseline](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition4.lean/declarations/squareprefixbaseline.md) | 59 | `declaration-track:b25bffc844dad5d77c937c2ccbc86b35e93c27c5be22e1f81a49e47f9dc199bb` |
| 6 | `def` | [squarePrefix](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition4.lean/declarations/squareprefix.md) | 62 | `declaration-track:7056f9a67967c81cc19e5a461b9177cf9e2f4fde70af77df2dc02326e9bb4980` |
| 7 | `def` | [squareTail](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition4.lean/declarations/squaretail.md) | 66 | `declaration-track:24280b46a69fecb11eae95116f29fc812b0117408cb00bcbfbc1fea6bce32441` |
| 8 | `def` | [squareTailWork](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition4.lean/declarations/squaretailwork.md) | 69 | `declaration-track:2c63f72e76a621c071f7b77bf6f0433b04ebdcab7dcf00c9bc0ffa6b38b5f971` |
| 9 | `def` | [squareTailNegativeMean](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition4.lean/declarations/squaretailnegativemean.md) | 73 | `declaration-track:9a06e10fa9397cef2d003b399a46d37f1aa18c7183d6d185b84a1206569a60cd` |
| 10 | `def` | [squareTailPairedWork](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition4.lean/declarations/squaretailpairedwork.md) | 77 | `declaration-track:e566fbdb215b4ed520f23fa989e1cc9e3539e9258762b245fcadbd6cc7353e05` |
| 11 | `theorem` | [squarePrefixBaseline_nonneg](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition4.lean/declarations/squareprefixbaseline-nonneg.md) | 81 | `result-track:64db77c9a3cddeb6a40c68bedee7d109c3dc53e35dc038922fdc01afcf09cdcd` |
| 12 | `theorem` | [squarePrefixBaseline_pos](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition4.lean/declarations/squareprefixbaseline-pos.md) | 84 | `result-track:a181fc29ac801daab3c09d2b5bfc4a65318045053ed92c80868964d48d3c2d9f` |
| 13 | `theorem` | [squarePrefixBaseline_le_higherBaseline](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition4.lean/declarations/squareprefixbaseline-le-higherbaseline.md) | 90 | `result-track:3e5adccc529748738bc719ca1dec1b4547ecbcc008a736c0913a7777f5e7cf47` |
| 14 | `theorem` | [squarePrefix_nonneg](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition4.lean/declarations/squareprefix-nonneg.md) | 101 | `result-track:d2f407b4abb6c442c82c3b18d2f7424e575d524baca25c0b0677bd71ce8af2a1` |
| 15 | `theorem` | [squarePrefix_le_baseline](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition4.lean/declarations/squareprefix-le-baseline.md) | 107 | `result-track:2e15881c705df9bc6571cfbe3ababb139a0e03d5cffd91222899f6d825cd5107` |
| 16 | `theorem` | [squareTail_nonneg](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition4.lean/declarations/squaretail-nonneg.md) | 117 | `result-track:2a6041f8923c757eef5b61a8c60b6b6b77ed794d9d3d31ee194a5f3f73b46c6d` |
| 17 | `theorem` | [squareTail_le_baseline](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition4.lean/declarations/squaretail-le-baseline.md) | 121 | `result-track:205c5dc867c52988dd64ac9c2a82ee8bfa5f5f11b736aafce1227f40611505b8` |
| 18 | `theorem` | [squareTail_below_first_square](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition4.lean/declarations/squaretail-below-first-square.md) | 126 | `result-track:32ad64f1c95c3cbb4ed7f54deb74024642c1d17bfc6b4532c55eb8c9781f9809` |
| 19 | `theorem` | [squareTail_at_zero](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition4.lean/declarations/squaretail-at-zero.md) | 138 | `result-track:932c1eaa41ea8a2bca67f053f4954dcff61d7818e0ca522337c3bdd4732a1ef2` |
| 20 | `theorem` | [squarePrefix_eq_steps](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition4.lean/declarations/squareprefix-eq-steps.md) | 144 | `result-track:f41e90865087819455b99f8ca125c37f450ac7b974f2e20a875ed19b3e1611e0` |
| 21 | `theorem` | [squarePrefix_mul_deriv_intervalIntegrable](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition4.lean/declarations/squareprefix-mul-deriv-intervalintegrable.md) | 158 | `result-track:d60d225b88331fea642b4449925b6378949e0514aee93c340c5d22a9dfc5304e` |
| 22 | `theorem` | [squareTail_mul_deriv_intervalIntegrable](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition4.lean/declarations/squaretail-mul-deriv-intervalintegrable.md) | 181 | `result-track:52c6f9f8b1185b03c229b372b7496f9c0bdf4d6b8bf672eeea5bc594e32bbc48` |
| 23 | `theorem` | [squarePrefix_source_work](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition4.lean/declarations/squareprefix-source-work.md) | 190 | `result-track:ab449b1a544a375a0b3bdb8d3aed28ba07460c056ecc4b609b206a974e9ae55f` |
| 24 | `theorem` | [squareTailWork_eq](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition4.lean/declarations/squaretailwork-eq.md) | 223 | `result-track:c2e30ebfa8d5d1171fac4f26e340c393cc6410b057cecf435285e51cce9cd360` |
| 25 | `theorem` | [squareTail_intervalIntegrable](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition4.lean/declarations/squaretail-intervalintegrable.md) | 239 | `result-track:a76b83f52646cb0bb7f7c7e04f8e580b1ba8807ede229ed6d1f8cd952a08371e` |
| 26 | `theorem` | [squareTailPairedWork_eq_work_add_mean](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition4.lean/declarations/squaretailpairedwork-eq-work-add-mean.md) | 246 | `result-track:d6b5dac4b4ded1fdb7d6bb2059eb880e898938423089a5457f73dba3246f3c80` |
| 27 | `theorem` | [squareTailNegativeMean_nonneg](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition4.lean/declarations/squaretailnegativemean-nonneg.md) | 269 | `result-track:8b45c630fe993128bcd13b595aa2f20804fd17b40c8cbfc8a7d8bcc188c39414` |
| 28 | `theorem` | [squareTailNegativeMean_le_baseline](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition4.lean/declarations/squaretailnegativemean-le-baseline.md) | 277 | `result-track:4f6e7311217df55a2e641269ab8805066e61ed100286c4d4f52c86a8e6288d8c` |
| 29 | `def` | [squareRemovedPairedWork](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition4.lean/declarations/squareremovedpairedwork.md) | 295 | `declaration-track:6b22b5bb5cce60046322cd97746ab467a5a9cfa871b5c7e600d88fe3d2a00e7b` |
| 30 | `def` | [squareRemovedRemainder](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition4.lean/declarations/squareremovedremainder.md) | 301 | `declaration-track:fac61ad04e4e300ff9e6a3cbd87d0fc7c3c4b3b5b9d9efbcb5316c5b36880426` |
| 31 | `theorem` | [squareRemovedPairedWork_eq](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition4.lean/declarations/squareremovedpairedwork-eq.md) | 306 | `result-track:6150bf3f23e349c65eefa4f7e670dca6ad5911d3fccd6785438b320244c08dad` |
| 32 | `theorem` | [mertensResidual_eq_squareRemoved](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition4.lean/declarations/mertensresidual-eq-squareremoved.md) | 323 | `result-track:ed30d852987318cc46858cc84512c2a1ad2bb05e4f19adfa00347d19d4de82a3` |
| 33 | `theorem` | [squareRemovedRemainder_uniformly_bounded](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition4.lean/declarations/squareremovedremainder-uniformly-bounded.md) | 335 | `result-track:00a36f9a3c27c23adae878faaf8cb99ec70ab9d2724971fef9967280726897a0` |
| 34 | `def` | [SquareRemovedPairedTailLowerBound](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition4.lean/declarations/squareremovedpairedtaillowerbound.md) | 371 | `declaration-track:7f5d3d57a10fcc98c4c80a5bbb1ac91b21a88aa6756800940996a956abd31c50` |
| 35 | `theorem` | [squareRemoved_tail_iff_residual_tail](../../../../MeasureAndIntegration/SourcePrimeSquareTailWorkEdition4.lean/declarations/squareremoved-tail-iff-residual-tail.md) | 376 | `result-track:6b676de9b82c84b3b3ccc6add02010dc8826cbc624328d3e6ed2e62a80bcfb82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=89ae70d37944bb245c70894d8691148586f6b07ec19ff696b26f5c09cdf06975 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant7b8974c71160b619fbb4ef3c333ec4c54797048f6f40c1a82f7f8a0ce0e75b8c.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareTailWork/Variant7b8974c71160b619fbb4ef3c333ec4c54797048f6f40c1a82f7f8a0ce0e75b8c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
