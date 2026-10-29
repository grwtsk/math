# Verification target: Symmetric Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a474e86d0518afb248ad5433ab11eda31f84405",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant20ebf9c731951c0fde27c8c18cd9a195fb2fe6366c3741ee08b3f12674162eea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/SymmetricNamespacedPublic.lean/index.md) · [Full source](../../../../RealFunctions/SymmetricNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a474e86d0518afb248ad5433ab11eda31f84405`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant20ebf9c731951c0fde27c8c18cd9a195fb2fe6366c3741ee08b3f12674162eea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant20ebf9c731951c0fde27c8c18cd9a195fb2fe6366c3741ee08b3f12674162eea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSymmSndFDerivWithinAt](../../../../RealFunctions/SymmetricNamespacedPublic.lean/declarations/issymmsndfderivwithinat.md) | 91 | `declaration-track:6dd4a4d2153bccd2f570ad2ce429e83ee1cd309b4e492f05b6ebfe126e4b1b2d` |
| 2 | `def` | [IsSymmSndFDerivAt](../../../../RealFunctions/SymmetricNamespacedPublic.lean/declarations/issymmsndfderivat.md) | 99 | `declaration-track:377b419cd88e5ff401f89d87ef231e4e6385f85361d99b73c6b94d84a3490b86` |
| 3 | `lemma` | [IsSymmSndFDerivWithinAt.eq](../../../../RealFunctions/SymmetricNamespacedPublic.lean/declarations/issymmsndfderivwithinat-eq.md) | 102 | `result-track:c6782332568fc548aa4b113d795f9d0029fcb6bea665aa0c90382425898e2e6e` |
| 4 | `lemma` | [IsSymmSndFDerivAt.eq](../../../../RealFunctions/SymmetricNamespacedPublic.lean/declarations/issymmsndfderivat-eq.md) | 106 | `result-track:576efb069d7667e3650e9d29ef53662c26abc6281a450e5d5e96246997bc21b0` |
| 5 | `lemma` | [fderivWithin_fderivWithin_eq_of_mem_nhdsWithin](../../../../RealFunctions/SymmetricNamespacedPublic.lean/declarations/fderivwithin-fderivwithin-eq-of-mem-nhdswithin.md) | 111 | `result-track:2a21347fa29ca9d4380d400f83bc336dfc05dd35825a9b07f60ebcce81726322` |
| 6 | `lemma` | [fderivWithin_fderivWithin_eq_of_eventuallyEqSet](../../../../RealFunctions/SymmetricNamespacedPublic.lean/declarations/fderivwithin-fderivwithin-eq-of-eventuallyeqset.md) | 128 | `result-track:2992f5e98ba36e7c2c09b5e4ef76d01ce49252dcb02640aa8bc8af9a27803ab7` |
| 7 | `lemma` | [fderivWithin_fderivWithin_eq_of_mem_nhds](../../../../RealFunctions/SymmetricNamespacedPublic.lean/declarations/fderivwithin-fderivwithin-eq-of-mem-nhds.md) | 139 | `result-track:cda0d6d8a631a6d8794c679438762153e7a86459d1a1fc93791c388a90fed254` |
| 8 | `lemma` | [isSymmSndFDerivWithinAt_univ](../../../../RealFunctions/SymmetricNamespacedPublic.lean/declarations/issymmsndfderivwithinat-univ.md) | 146 | `result-track:23b30ff92c93d2e5f14802a012ef8b46197f79b6ab35455a8017d81f6e939b04` |
| 9 | `theorem` | [IsSymmSndFDerivWithinAt.mono_of_mem_nhdsWithin](../../../../RealFunctions/SymmetricNamespacedPublic.lean/declarations/issymmsndfderivwithinat-mono-of-mem-nhdswithin.md) | 150 | `result-track:fff5fdc6bb94b57c7a766798576cb468a1b8312112cbcf33a2105311f1c06175` |
| 10 | `theorem` | [IsSymmSndFDerivWithinAt.congr_set](../../../../RealFunctions/SymmetricNamespacedPublic.lean/declarations/issymmsndfderivwithinat-congr-set.md) | 158 | `result-track:318284e1cccd1e56dd974609f5c83f7cc74728e9e860dd0d717f9a5232317592` |
| 11 | `theorem` | [isSymmSndFDerivWithinAt_congr_set](../../../../RealFunctions/SymmetricNamespacedPublic.lean/declarations/issymmsndfderivwithinat-congr-set-source-edition-2.md) | 164 | `result-track:a3b69cc6722b8477c92163dbd536fdfcac3e5e7df61e646ecc5d6c73ebf01c80` |
| 12 | `theorem` | [IsSymmSndFDerivAt.isSymmSndFDerivWithinAt](../../../../RealFunctions/SymmetricNamespacedPublic.lean/declarations/issymmsndfderivat-issymmsndfderivwithinat.md) | 168 | `result-track:fdd8a048d6b9e00a6805d9d3fdaa7f38af3220b56f8666c818446fec6620e555` |
| 13 | `theorem` | [isSymmSndFDerivWithinAt_iff_iteratedFDerivWithin](../../../../RealFunctions/SymmetricNamespacedPublic.lean/declarations/issymmsndfderivwithinat-iff-iteratedfderivwithin.md) | 174 | `result-track:0b418935853c4cdb6783366b5ee7bfe47d3e8b7ee6365e75bb94e03c0a0de12e` |
| 14 | `theorem` | [isSymmSndFDerivAt_iff_iteratedFDeriv](../../../../RealFunctions/SymmetricNamespacedPublic.lean/declarations/issymmsndfderivat-iff-iteratedfderiv.md) | 182 | `result-track:f6e60b3fa12df330a861174527b21f4b8ce8bebedeaa6187e65411d60a384556` |
| 15 | `theorem` | [IsSymmSndFDerivWithinAt.iteratedFDerivWithin_cons](../../../../RealFunctions/SymmetricNamespacedPublic.lean/declarations/issymmsndfderivwithinat-iteratedfderivwithin-cons.md) | 188 | `result-track:d46ab5cf1d3d058c6b55689dff6eda3b201ca4f3574782895fcdc09c34eff2cb` |
| 16 | `theorem` | [IsSymmSndFDerivAt.iteratedFDeriv_cons](../../../../RealFunctions/SymmetricNamespacedPublic.lean/declarations/issymmsndfderivat-iteratedfderiv-cons.md) | 197 | `result-track:6c08f84de0f8ec3a109a59b73298aa14795168fb4e91880fb1d3290d5e7794e3` |
| 17 | `theorem` | [ContDiffWithinAt.isSymmSndFDerivWithinAt_of_omega](../../../../RealFunctions/SymmetricNamespacedPublic.lean/declarations/contdiffwithinat-issymmsndfderivwithinat-of-omega.md) | 203 | `result-track:cc366ffa5b1e1051525b726b08e7f24274d17d676b4149f1736b408d92753a7e` |
| 18 | `theorem` | [ContDiffAt.isSymmSndFDerivAt_of_omega](../../../../RealFunctions/SymmetricNamespacedPublic.lean/declarations/contdiffat-issymmsndfderivat-of-omega.md) | 210 | `result-track:6c07104ba5a6785e83fb31c5c9f62689c404938722e557951fbcdadeb331ae5d` |
| 19 | `theorem` | [Convex.taylor_approx_two_segment](../../../../RealFunctions/SymmetricNamespacedPublic.lean/declarations/convex-taylor-approx-two-segment.md) | 234 | `result-track:4cb81dfbec8a078434611ce5c892e904f4ba852c3fb4d3419fbde9a55791a526` |
| 20 | `theorem` | [Convex.isLittleO_alternate_sum_square](../../../../RealFunctions/SymmetricNamespacedPublic.lean/declarations/convex-islittleo-alternate-sum-square.md) | 342 | `result-track:722613c3969a8d48da405ee87080519a5c07e48d85ffa3422e71766b5a35ee93` |
| 21 | `theorem` | [Convex.second_derivative_within_at_symmetric_of_mem_interior](../../../../RealFunctions/SymmetricNamespacedPublic.lean/declarations/convex-second-derivative-within-at-symmetric-of-mem-interior.md) | 382 | `result-track:1b702dbc89819fb1ce7a10aae2d1ace6e0bc6b9bdf45a019458cbd67b11aaf2a` |
| 22 | `theorem` | [Convex.second_derivative_within_at_symmetric](../../../../RealFunctions/SymmetricNamespacedPublic.lean/declarations/convex-second-derivative-within-at-symmetric.md) | 407 | `result-track:2d791dbdc67126c3f65d18fe48f7eec1a41ce02ae94baef88b3e5b57828f8c4e` |
| 23 | `theorem` | [second_derivative_symmetric_of_eventually_of_real](../../../../RealFunctions/SymmetricNamespacedPublic.lean/declarations/second-derivative-symmetric-of-eventually-of-real.md) | 454 | `result-track:4346aaa27053c96b3e6738e8ba8abf992e66bb19a0b2df51ddf8138a4888f8e9` |
| 24 | `theorem` | [second_derivative_symmetric_of_eventually](../../../../RealFunctions/SymmetricNamespacedPublic.lean/declarations/second-derivative-symmetric-of-eventually.md) | 472 | `result-track:3da0b57dd8cb557ffcc59589b7696c36d6109e6bec8a1a0288c64d260ad6a298` |
| 25 | `theorem` | [second_derivative_symmetric](../../../../RealFunctions/SymmetricNamespacedPublic.lean/declarations/second-derivative-symmetric.md) | 491 | `result-track:66d8276e2066709d280298b4168ba2de0a9df50f2847e4f32993a0c28ede0af4` |
| 26 | `lemma` | [minSmoothness_of_isRCLikeNormedField](../../../../RealFunctions/SymmetricNamespacedPublic.lean/declarations/minsmoothness-of-isrclikenormedfield.md) | 504 | `result-track:f3d1991734d232505ed565b9c90da5ebfa44e010ac9f86e47b1fe718da223091` |
| 27 | `lemma` | [le_minSmoothness](../../../../RealFunctions/SymmetricNamespacedPublic.lean/declarations/le-minsmoothness.md) | 508 | `result-track:b4280b271ace873f1ecdca577d26fefae2fc59c1448682a7113da037d136f72d` |
| 28 | `lemma` | [minSmoothness_add](../../../../RealFunctions/SymmetricNamespacedPublic.lean/declarations/minsmoothness-add.md) | 512 | `result-track:56189d08852d3ed98dbe6dc7283cf19c453a63d6fc16d081091847defce4af4b` |
| 29 | `lemma` | [minSmoothness_monotone](../../../../RealFunctions/SymmetricNamespacedPublic.lean/declarations/minsmoothness-monotone.md) | 516 | `result-track:ba892e9eafa369ed72c1c3051867ab2ba24494d66b50d46ba938e3047ac649bc` |
| 30 | `lemma` | [minSmoothness_eq_infty](../../../../RealFunctions/SymmetricNamespacedPublic.lean/declarations/minsmoothness-eq-infty.md) | 521 | `result-track:abb1512504628a4ce55db14d131860632e995137653b071168e64d0a961c511f` |
| 31 | `lemma` | [exist_minSmoothness_le_ne_infty](../../../../RealFunctions/SymmetricNamespacedPublic.lean/declarations/exist-minsmoothness-le-ne-infty.md) | 531 | `result-track:f332795d73f24688b8edf9be89986b41bb231d2de9b9bffe135ae36e4b907646` |
| 32 | `theorem` | [ContDiffAt.isSymmSndFDerivAt](../../../../RealFunctions/SymmetricNamespacedPublic.lean/declarations/contdiffat-issymmsndfderivat.md) | 542 | `result-track:203c4f92fc3c746393fa39805bcbe5118a8b603aee38e28ab4a43035d7cd9bda` |
| 33 | `theorem` | [ContDiffWithinAt.isSymmSndFDerivWithinAt](../../../../RealFunctions/SymmetricNamespacedPublic.lean/declarations/contdiffwithinat-issymmsndfderivwithinat.md) | 568 | `result-track:928ab71b7293d94ca28cc2322c34804015e387c746ef74252399ce152e031e35` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4fe1b6118e9997cff8d2d33e0332fbc5c8cbfb0ed6c401c29b9272b8e830fef0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant20ebf9c731951c0fde27c8c18cd9a195fb2fe6366c3741ee08b3f12674162eea.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant20ebf9c731951c0fde27c8c18cd9a195fb2fe6366c3741ee08b3f12674162eea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
