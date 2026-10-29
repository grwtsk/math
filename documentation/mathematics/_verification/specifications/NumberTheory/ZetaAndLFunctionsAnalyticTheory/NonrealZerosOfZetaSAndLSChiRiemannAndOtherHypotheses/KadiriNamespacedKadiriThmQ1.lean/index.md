# Verification target: Kadiri Namespaced Kadiri Thm Q1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6326567f538c80e40d2edd733922ee69b10b823a",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Kadiri/Variantec4a0c436037d0d21eeac8b92b3059f8d3301f468f8c28e00a299a646818cfb8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriNamespacedKadiriThmQ1.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriNamespacedKadiriThmQ1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6326567f538c80e40d2edd733922ee69b10b823a`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Kadiri/Variantec4a0c436037d0d21eeac8b92b3059f8d3301f468f8c28e00a299a646818cfb8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Kadiri/Variantec4a0c436037d0d21eeac8b92b3059f8d3301f468f8c28e00a299a646818cfb8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 6; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.ZetaDefinitions` — import line 8; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.HadamardLogDerivative` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Digamma` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [laplaceTransform](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriNamespacedKadiriThmQ1.lean/declarations/laplacetransform.md) | 46 | `declaration-track:3455d662991ea3bd959b6aca141a0afdf4c1ac842f21bd9bf97e850f9aae1591` |
| 2 | `lemma` | [f_log_support_finite](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriNamespacedKadiriThmQ1.lean/declarations/f-log-support-finite.md) | 51 | `result-track:b51e0a5bc8f8472d645b194ca1c93a71f80803b94a6ebbe0a9cd8508d096b098` |
| 3 | `lemma` | [summable_f_log](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriNamespacedKadiriThmQ1.lean/declarations/summable-f-log.md) | 64 | `result-track:71eb7c8ede299180337b7aaa855cd643c01423d2c440dd6f57025b2d20678659` |
| 4 | `def` | [hadamardB](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriNamespacedKadiriThmQ1.lean/declarations/hadamardb.md) | 97 | `declaration-track:9a3516c9a8d049429b5cfbf8914840ceeccaf8a3b62a1ed93f81a781d498e9ef` |
| 5 | `theorem` | [hadamard_identity](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriNamespacedKadiriThmQ1.lean/declarations/hadamard-identity.md) | 116 | `result-track:1bf927409459754ecea91676628c435ee25e6c7e3a16446de2edceacd88cd1ae` |
| 6 | `theorem` | [kadiri_thm_3_1_q1](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriNamespacedKadiriThmQ1.lean/declarations/kadiri-thm-3-1-q1.md) | 160 | `result-track:01c6d25ff88db4ea27bdbea3e06d614c903b546d45adf097265c1fb43e8d69a9` |
| 7 | `theorem` | [laplaceTransform_ibp](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriNamespacedKadiriThmQ1.lean/declarations/laplacetransform-ibp.md) | 206 | `result-track:8e08d0475a817c3d00f88cd87b007458996ce4844205692a59efb178af44d4ad` |
| 8 | `def` | [kadiriTestFn](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriNamespacedKadiriThmQ1.lean/declarations/kadiritestfn.md) | 224 | `declaration-track:7c63910d8fd3877d6797fcf0823009c870cb91729e3527c00ad471d231a266f6` |
| 9 | `theorem` | [kadiriTestFn_contDiff](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriNamespacedKadiriThmQ1.lean/declarations/kadiritestfn-contdiff.md) | 245 | `result-track:47825e82df06ed58e0803e3d86f73f2be82ed97b1e2434008318ab54c1de64a0` |
| 10 | `theorem` | [kadiriTestFn_decay](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriNamespacedKadiriThmQ1.lean/declarations/kadiritestfn-decay.md) | 273 | `result-track:9b4b46b2b29255b400578f46a4ff972fc152e28b6c04dd1490eedddd909919a8` |
| 11 | `theorem` | [kadiriTestFn_laplaceTransform](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriNamespacedKadiriThmQ1.lean/declarations/kadiritestfn-laplacetransform.md) | 298 | `result-track:876fcbc4174fd03340f5257938dde93a6e780029e565c98b329b306bbd9d50fe` |
| 12 | `theorem` | [kadiriTestFn_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriNamespacedKadiriThmQ1.lean/declarations/kadiritestfn-zero.md) | 314 | `result-track:c7f94efcd96e0e83f1d812de3dcfb4ede9337199324c8297dbe80ff27786b83c` |
| 13 | `theorem` | [kadiriTestFn_neg_log](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriNamespacedKadiriThmQ1.lean/declarations/kadiritestfn-neg-log.md) | 317 | `result-track:626da14ce2673b246be25dd8f99107953f54f8fa049bda8c00f0dbdd9f85057a` |
| 14 | `theorem` | [kadiriTestFn_log](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriNamespacedKadiriThmQ1.lean/declarations/kadiritestfn-log.md) | 326 | `result-track:829bc61adc94a0ebac7be366a772e94e3e7cb53217b900b4c4d254496513ff54` |
| 15 | `theorem` | [identity_16_complex](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriNamespacedKadiriThmQ1.lean/declarations/identity-16-complex.md) | 368 | `result-track:6a8440f3a81e13cfe11b64c25b9839ff479bf815596e0fe02a63545a8a1ed984` |
| 16 | `theorem` | [identity_16](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriNamespacedKadiriThmQ1.lean/declarations/identity-16.md) | 422 | `result-track:1eff8ae1664014da5e9e79c37c616b1aef9710ddb98e91149d186079c3b7c4d6` |
| 17 | `theorem` | [re_hadamardB_eq](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriNamespacedKadiriThmQ1.lean/declarations/re-hadamardb-eq.md) | 497 | `result-track:1c100c9812ff115d43c18e66bba54f03c43c441594eb384331e5b8691ea64605` |
| 18 | `theorem` | [backlund_bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriNamespacedKadiriThmQ1.lean/declarations/backlund-bound.md) | 523 | `result-track:c90620e9cf1e6063a6d78e8ce1f403ae56434ded6d6805f4bcdda284ccce0521` |
| 19 | `theorem` | [laplaceTransform_re_decay](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriNamespacedKadiriThmQ1.lean/declarations/laplacetransform-re-decay.md) | 548 | `result-track:a6d0fc53188f5f092e8bc7739124e8256075a59444f622251790a19ef4db84cf` |
| 20 | `theorem` | [summable_lap_re_at_zeros](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriNamespacedKadiriThmQ1.lean/declarations/summable-lap-re-at-zeros.md) | 575 | `result-track:3c53a30bd76681900908ea05420dcf8c629699a7fa158d5836fe724ef408cd5d` |
| 21 | `theorem` | [re_inner_eq](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriNamespacedKadiriThmQ1.lean/declarations/re-inner-eq.md) | 607 | `result-track:c595fbb8df17019d40bb6545752b1a3a592ccc6774482bda71373092dfd0a9da` |
| 22 | `theorem` | [prop_2_1](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriNamespacedKadiriThmQ1.lean/declarations/prop-2-1.md) | 646 | `result-track:d2b13679d82630c9caa932e77f4a8119f5f79c139060f6e69c74125f8557e08b` |
| 23 | `def` | [T1](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriNamespacedKadiriThmQ1.lean/declarations/t1.md) | 683 | `declaration-track:185ff6e1ecdc0f2429939eec8a07c34df3bc416785cdf48aa977dc6dd9eb4c4c` |
| 24 | `def` | [T2](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriNamespacedKadiriThmQ1.lean/declarations/t2.md) | 688 | `declaration-track:403501656227183094f71bf97ac166a2d16921a90e72751bb079a4ab9aaa7227` |
| 25 | `def` | [D](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriNamespacedKadiriThmQ1.lean/declarations/d.md) | 698 | `declaration-track:8ba51fc8bf8c8fb357c9934d2691b9307f2d8dc4e72d2086b4933fdc53ba6f0b` |
| 26 | `def` | [Δ1](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriNamespacedKadiriThmQ1.lean/declarations/1.md) | 702 | `declaration-track:a54444fb8832cefc46819cff6fa870a0d15ac3c6936104b8d1b4fedfeff85018` |
| 27 | `def` | [Δ2](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriNamespacedKadiriThmQ1.lean/declarations/2.md) | 706 | `declaration-track:4cecc794f323ed95e11dc11d5ec669c03bc11454ffa198893a4d0fbdad520f0b` |
| 28 | `theorem` | [eq_5](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriNamespacedKadiriThmQ1.lean/declarations/eq-5.md) | 729 | `result-track:ae6791fdf6ef9a3668f3d564f74acb3d0e244c3d19692310e67feb9b1f9cc85e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8c1506135b4de82815266f945ecc77feb2175c30e2de1244bcac04684fed824a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Kadiri/Variantec4a0c436037d0d21eeac8b92b3059f8d3301f468f8c28e00a299a646818cfb8.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/Kadiri/Variantec4a0c436037d0d21eeac8b92b3059f8d3301f468f8c28e00a299a646818cfb8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
