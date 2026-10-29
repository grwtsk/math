# Verification target: Orthonormal Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fbb9476a43faedb956189b02cdbc2eae7ccd7201",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Orthonormal/Variant5062228cc85a55039c858717c78e2bd8704bc1a4cbf6c32481d89023bab9a59e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fbb9476a43faedb956189b02cdbc2eae7ccd7201`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Orthonormal/Variant5062228cc85a55039c858717c78e2bd8704bc1a4cbf6c32481d89023bab9a59e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Orthonormal/Variant5062228cc85a55039c858717c78e2bd8704bc1a4cbf6c32481d89023bab9a59e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.LinearMap` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Orthonormal](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/orthonormal.md) | 56 | `declaration-track:2872f21962fa1bfb9637119034457cbd4d4f6b470ed83e1a0a3e0354c44659a8` |
| 2 | `lemma` | [Orthonormal.norm_eq_one](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/orthonormal-norm-eq-one.md) | 61 | `result-track:24dfb0206043b061be98a1ce411cf053298d76bbcc54c206ebba2f10fa69fab5` |
| 3 | `lemma` | [Orthonormal.nnnorm_eq_one](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/orthonormal-nnnorm-eq-one.md) | 64 | `result-track:1db93caefcc96a5af2bdb42e29ecfece111247b4178f8d6e05bc5f870e7adb8d` |
| 4 | `lemma` | [Orthonormal.enorm_eq_one](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/orthonormal-enorm-eq-one.md) | 69 | `result-track:13b34021fd28f7b14afea87c53287eb35f6e214981fc488682d6e61305cae4d1` |
| 5 | `lemma` | [Orthonormal.inner_eq_zero](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/orthonormal-inner-eq-zero.md) | 72 | `result-track:59d2b3c924cc076695303f9ec5e56620cd07147f63b32af2ca15503b41a87488` |
| 6 | `theorem` | [orthonormal_iff_ite](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/orthonormal-iff-ite.md) | 77 | `result-track:39de8aa5019ad049bd041de769a1e976c534a92a1400d4ea162c85b854f8324b` |
| 7 | `theorem` | [orthonormal_subtype_iff_ite](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/orthonormal-subtype-iff-ite.md) | 96 | `result-track:b424d63436ab82d16fd310bdb15b20ece518263bbf6880afdabc9d9f10345f24` |
| 8 | `theorem` | [Orthonormal.inner_right_finsupp](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/orthonormal-inner-right-finsupp.md) | 109 | `result-track:9b76ba3d8a7af91867b72206ab8789ed579e7c603a4b526291274d71ef64de67` |
| 9 | `theorem` | [Orthonormal.inner_right_sum](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/orthonormal-inner-right-sum.md) | 116 | `result-track:756bdad3945cdddaa8ed4a42a432b9ab45010cec4fb131794c387ad6e49e161e` |
| 10 | `theorem` | [Orthonormal.inner_right_fintype](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/orthonormal-inner-right-fintype.md) | 123 | `result-track:39d4d7e894d0ff3492a4da89bd562ed38a14cb85527bbf92ba7a59058b7f9411` |
| 11 | `theorem` | [Orthonormal.inner_left_finsupp](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/orthonormal-inner-left-finsupp.md) | 129 | `result-track:acd60d9b43a5a676de40d05ab2a2fd76b8b7a2c28d0322b525b2671cff496f5f` |
| 12 | `theorem` | [Orthonormal.inner_left_sum](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/orthonormal-inner-left-sum.md) | 134 | `result-track:334624adb01ca79fe3891a944a13c76992dd0cab7f11b2191e156196429dd7fb` |
| 13 | `theorem` | [Orthonormal.inner_left_fintype](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/orthonormal-inner-left-fintype.md) | 142 | `result-track:58f3444e06c8c998f1e9358384a0425e4a6f186b2eedff6fbff151c165493720` |
| 14 | `theorem` | [Orthonormal.inner_finsupp_eq_sum_left](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/orthonormal-inner-finsupp-eq-sum-left.md) | 148 | `result-track:0e6ee13943b7044ae9d8d8adb80d377f4304cd50f4ebce64bf82c35bbe2e2c87` |
| 15 | `theorem` | [Orthonormal.inner_finsupp_eq_sum_right](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/orthonormal-inner-finsupp-eq-sum-right.md) | 154 | `result-track:4bac5a1755424cba96c4e861719da8bd20942023e776fef46399612331ee71bd` |
| 16 | `theorem` | [Orthonormal.inner_sum](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/orthonormal-inner-sum.md) | 161 | `result-track:a85b63dc7978e4998e1aea712eab248b197409bd3ee475face19590d21267cd8` |
| 17 | `theorem` | [Orthonormal.inner_left_right_finset](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/orthonormal-inner-left-right-finset.md) | 171 | `result-track:ee583cad28da2fcdbdd036a177455f4111445cd141818d048c74f095a6695e66` |
| 18 | `theorem` | [Orthonormal.linearIndependent](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/orthonormal-linearindependent.md) | 177 | `result-track:ac11387d450361eafaa4f1e57f7dc49d1572bd457d8fbb6dc07dc3ba84d7cbef` |
| 19 | `theorem` | [Orthonormal.comp](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/orthonormal-comp.md) | 187 | `result-track:e7586d32e97644153e42ab2e2c06c1107c3bd8a6532af05c8a93a5a289b9b43d` |
| 20 | `theorem` | [orthonormal_subtype_range](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/orthonormal-subtype-range.md) | 197 | `result-track:675b60c338a997febe6215834156130f90314963c17d9b03df06076601636cb4` |
| 21 | `theorem` | [Orthonormal.toSubtypeRange](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/orthonormal-tosubtyperange.md) | 206 | `result-track:77c60376f940644aeb1a589c95da4dce4759a8f24e3bf71f64176dea501844ed` |
| 22 | `theorem` | [Orthonormal.inner_finsupp_eq_zero](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/orthonormal-inner-finsupp-eq-zero.md) | 212 | `result-track:754703ee3ec94de5642a8d9768c2273b76a311dd4371cf7abd3dae205dacce61` |
| 23 | `theorem` | [Orthonormal.orthonormal_of_forall_eq_or_eq_neg](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/orthonormal-orthonormal-of-forall-eq-or-eq-neg.md) | 220 | `result-track:0cb506c68c7cf28bce501ab5a5190fe1a7e3d3456315620e1e8ce6d8e835d977` |
| 24 | `theorem` | [orthonormal_empty](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/orthonormal-empty.md) | 235 | `result-track:1664798a3062af4de0f25bfcf6f59e94c55a0d4cfee500143944d12d6891ee99` |
| 25 | `theorem` | [orthonormal_iUnion_of_directed](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/orthonormal-iunion-of-directed.md) | 241 | `result-track:a3c0568cebdd80d56e1abe1fbb2fd3144b4948108631925f68d91507feffcd17` |
| 26 | `theorem` | [orthonormal_sUnion_of_directed](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/orthonormal-sunion-of-directed.md) | 252 | `result-track:2db996607a2bcdfce3e302e64015df2a382ae65174b4e1c4fc92818c00bd6783` |
| 27 | `theorem` | [exists_maximal_orthonormal](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/exists-maximal-orthonormal.md) | 259 | `result-track:a2940ac990ccca6ccc60b0ee84cdcdd71dc4916a37a7aa336a98bd1f0370b712` |
| 28 | `def` | [basisOfOrthonormalOfCardEqFinrank](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/basisoforthonormalofcardeqfinrank.md) | 272 | `declaration-track:a758b6f1a21aeff827c8b65bd6e711bf60dabd9a4250328791bc1f76c8b7d2b1` |
| 29 | `theorem` | [coe_basisOfOrthonormalOfCardEqFinrank](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/coe-basisoforthonormalofcardeqfinrank.md) | 277 | `result-track:52bd1ab4bf21fe9fd193bc37c70ea276efd7edf19f67dc3e21f94921d8f1a65b` |
| 30 | `theorem` | [Orthonormal.ne_zero](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/orthonormal-ne-zero.md) | 282 | `result-track:5c10d176e46162ad4d3cdcf35fda2d6305bb12595a2ece8f3de5825a7d86d82c` |
| 31 | `theorem` | [LinearIsometry.orthonormal_comp_iff](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/linearisometry-orthonormal-comp-iff.md) | 305 | `result-track:b030efa26377752d90d7fa4549b234bcf418829554aeabfbed36f7a570ea4a92` |
| 32 | `theorem` | [Orthonormal.comp_linearIsometry](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/orthonormal-comp-linearisometry.md) | 310 | `result-track:362898e8edbb0af365ff3704fa354fe6469f2cf7e572c521bcbcad6589f05d18` |
| 33 | `theorem` | [Orthonormal.comp_linearIsometryEquiv](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/orthonormal-comp-linearisometryequiv.md) | 314 | `result-track:af02eb3c1e3c49417fe413a11d765f2976295e68870257d812a1f05f51e589f8` |
| 34 | `theorem` | [Orthonormal.mapLinearIsometryEquiv](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/orthonormal-maplinearisometryequiv.md) | 320 | `result-track:778430e9816b1337d41e9aff7987f37da44979a9b5194e058b4409ff4c36145f` |
| 35 | `def` | [LinearMap.isometryOfOrthonormal](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/linearmap-isometryoforthonormal.md) | 325 | `declaration-track:ab3a6c286e05c8896b6ddb8ba335de5339447f31182f8f762b35ace8c194a877` |
| 36 | `theorem` | [LinearMap.coe_isometryOfOrthonormal](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/linearmap-coe-isometryoforthonormal.md) | 333 | `result-track:fbcf310d8916d4799dcd7461871ba7d1c7ecbecbbf0d10241ecfa7f2fb7c5aad` |
| 37 | `theorem` | [LinearMap.isometryOfOrthonormal_toLinearMap](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/linearmap-isometryoforthonormal-tolinearmap.md) | 338 | `result-track:25ce2b48b5d19f4f8ca4759466a414a956c62f90d8e82cd0074a097d229e11ec` |
| 38 | `def` | [LinearEquiv.isometryOfOrthonormal](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/linearequiv-isometryoforthonormal.md) | 345 | `declaration-track:376dedf2c56c0071c8ee603e5bf6d4f5aecc66f0b9e0b50eab9451c90010b789` |
| 39 | `theorem` | [LinearEquiv.coe_isometryOfOrthonormal](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/linearequiv-coe-isometryoforthonormal.md) | 354 | `result-track:43acdd9f9b92b82ce515372e523b9833681cfa78e50ef08bbb32fcdffd2beacf` |
| 40 | `theorem` | [LinearEquiv.isometryOfOrthonormal_toLinearEquiv](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/linearequiv-isometryoforthonormal-tolinearequiv.md) | 359 | `result-track:3194c2f6c128799817e326869c9264b2c2e1bcbf29813307f165f084addb925b` |
| 41 | `def` | [Orthonormal.equiv](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/orthonormal-equiv.md) | 365 | `declaration-track:dd9a8676378d53b8a3af7abbf5a80f1f0a9c4c9ff45564fd0970319b753bba88` |
| 42 | `theorem` | [Orthonormal.equiv_toLinearEquiv](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/orthonormal-equiv-tolinearequiv.md) | 376 | `result-track:89e246daa4078575463ed369dc8f4169e23c490d1b873149f8ee001661ae3c73` |
| 43 | `theorem` | [Orthonormal.equiv_apply](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/orthonormal-equiv-apply.md) | 382 | `result-track:298ab062b7e2ea648411625d3389f7a61d0ccccfd5fb887ee6e433623fb1daef` |
| 44 | `theorem` | [Orthonormal.equiv_trans](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/orthonormal-equiv-trans.md) | 388 | `result-track:a9c4ee3ac0b82b85950703d492682c03e2fe192ffee0ee533bb62c18d211b933` |
| 45 | `theorem` | [Orthonormal.map_equiv](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/orthonormal-map-equiv.md) | 395 | `result-track:dd46aeeb0a37d48c808f57f1b827af0f9ba3765d8875830785815904c21633b1` |
| 46 | `theorem` | [Orthonormal.equiv_refl](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/orthonormal-equiv-refl.md) | 407 | `result-track:824f2d1e0418d46ac5c8aac4dccda287e34d7aa11b215662207bee2d413aeb02` |
| 47 | `theorem` | [Orthonormal.equiv_symm](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/orthonormal-equiv-symm.md) | 413 | `result-track:009e78eedb8f591886874d579f9efc640f594e8d375063394b3c93cb1757d7be` |
| 48 | `theorem` | [Orthonormal.sum_inner_products_le](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/orthonormal-sum-inner-products-le.md) | 432 | `result-track:659174d1a53222bb8735c8730a4194e6463b7f3b9ef99cc6ce5a7db5c8f88821` |
| 49 | `theorem` | [Orthonormal.tsum_inner_products_le](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/orthonormal-tsum-inner-products-le.md) | 451 | `result-track:2dbaefa0adc58faf3ff4b52cdab184f46e75d87dbfb97af8e25b93dd5b0dffe8` |
| 50 | `theorem` | [Orthonormal.inner_products_summable](../../../../FunctionalAnalysis/OrthonormalNamespaced.lean/declarations/orthonormal-inner-products-summable.md) | 457 | `result-track:b947f538ee8d3cac8bae4b29042d2f0883698bcd8864e398a8b00b395caa7bf7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=03288dfa8319a62a46a182e817acae2a2cbe30ff31f2475f33a24c93d2d0f3bb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Orthonormal/Variant5062228cc85a55039c858717c78e2bd8704bc1a4cbf6c32481d89023bab9a59e.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Orthonormal/Variant5062228cc85a55039c858717c78e2bd8704bc1a4cbf6c32481d89023bab9a59e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
