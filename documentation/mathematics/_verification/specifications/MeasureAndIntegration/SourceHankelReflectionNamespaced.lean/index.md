# Verification target: Source Hankel Reflection Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b64b12c796ba744dddee71eeb1c573d6203a9633",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/21SourceHankelReflection/Variant625e67df3f718274eecd6e615841ee40e740d926a6861370ffd4e6df3b075f6a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceHankelReflectionNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceHankelReflectionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b64b12c796ba744dddee71eeb1c573d6203a9633`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/21SourceHankelReflection/Variant625e67df3f718274eecd6e615841ee40e740d926a6861370ffd4e6df3b075f6a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/21SourceHankelReflection/Variant625e67df3f718274eecd6e615841ee40e740d926a6861370ffd4e6df3b075f6a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.MathematicalTooling.Reflection.Polarization` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [forwardProfile](../../../../MeasureAndIntegration/SourceHankelReflectionNamespaced.lean/declarations/forwardprofile.md) | 37 | `declaration-track:a2617635d9aa9fdbd44dda176249bd6bb07d29563fe6d794c028b7a65dcc3121` |
| 2 | `def` | [reflectedProfile](../../../../MeasureAndIntegration/SourceHankelReflectionNamespaced.lean/declarations/reflectedprofile.md) | 41 | `declaration-track:c4a8354ab19c9d6234f852d1551d0958c00ec2bf38232cfbded71a655979d914` |
| 3 | `theorem` | [translated_reflected_product_integrable](../../../../MeasureAndIntegration/SourceHankelReflectionNamespaced.lean/declarations/translated-reflected-product-integrable.md) | 45 | `result-track:2a4d0f07eb42576e3540d705ba4176c81ab6f536fa4a8fe2ed4dd53a5f62bcaf` |
| 4 | `theorem` | [translated_reflected_pairing](../../../../MeasureAndIntegration/SourceHankelReflectionNamespaced.lean/declarations/translated-reflected-pairing.md) | 55 | `result-track:26e97b2f1a1c8269b18e27c0c28f0bd10b11bf01cb177cb8c45e0db8ee9898ff` |
| 5 | `theorem` | [forwardProfile_continuous](../../../../MeasureAndIntegration/SourceHankelReflectionNamespaced.lean/declarations/forwardprofile-continuous.md) | 75 | `result-track:37e74bf1a9052e2a70d584d7fc2c810bce7135ece32e024381c2ecfe9c4c4c29` |
| 6 | `theorem` | [reflectedProfile_continuous](../../../../MeasureAndIntegration/SourceHankelReflectionNamespaced.lean/declarations/reflectedprofile-continuous.md) | 82 | `result-track:c956fc25620d75203dd9a58c4cd42e24190f630346d32a92407e641e05acc4ea` |
| 7 | `theorem` | [forwardProfile_hasCompactSupport](../../../../MeasureAndIntegration/SourceHankelReflectionNamespaced.lean/declarations/forwardprofile-hascompactsupport.md) | 89 | `result-track:4e9d68404af67e678370a8a29d083af0e79b3c414296890ceddf48518521667e` |
| 8 | `theorem` | [reflectedProfile_hasCompactSupport](../../../../MeasureAndIntegration/SourceHankelReflectionNamespaced.lean/declarations/reflectedprofile-hascompactsupport.md) | 101 | `result-track:689cc563547ad86f072dcbff08d696f28fc4dcceb604e9a4a7576b1438ace6d1` |
| 9 | `theorem` | [profile_product_integrable](../../../../MeasureAndIntegration/SourceHankelReflectionNamespaced.lean/declarations/profile-product-integrable.md) | 113 | `result-track:58a18eff79a84646d2d25f8f96e26565a5f8182986bcdf7422771335089313af` |
| 10 | `theorem` | [finite_hankel_pairing](../../../../MeasureAndIntegration/SourceHankelReflectionNamespaced.lean/declarations/finite-hankel-pairing.md) | 120 | `result-track:0a09c67f3a112050f9d6d7db3e49f56faefb4593865b80c3934bbacd177ee023` |
| 11 | `theorem` | [profile_square_sectors_integrable](../../../../MeasureAndIntegration/SourceHankelReflectionNamespaced.lean/declarations/profile-square-sectors-integrable.md) | 165 | `result-track:460d598e5df30a117e08629bc90ca968d5c49b0b012c540c872401b4c4536460` |
| 12 | `theorem` | [signed_energy_surplus](../../../../MeasureAndIntegration/SourceHankelReflectionNamespaced.lean/declarations/signed-energy-surplus.md) | 180 | `result-track:0c1b9896236356ccb41824c5034e6c3760178c10bbbee5ed74e142076567ffec` |
| 13 | `theorem` | [forwardProfile_memLp](../../../../MeasureAndIntegration/SourceHankelReflectionNamespaced.lean/declarations/forwardprofile-memlp.md) | 195 | `result-track:12f4cf8a654e46ee539a5bafe90e2ef11bffa8e3b161e38c0f2f68b8f8a204d7` |
| 14 | `theorem` | [reflectedProfile_memLp](../../../../MeasureAndIntegration/SourceHankelReflectionNamespaced.lean/declarations/reflectedprofile-memlp.md) | 203 | `result-track:bebb2e9ecd78073d740e379b5968ce541592cfd20e7a65d630a3a1db70da9a5a` |
| 15 | `def` | [forwardL2](../../../../MeasureAndIntegration/SourceHankelReflectionNamespaced.lean/declarations/forwardl2.md) | 211 | `declaration-track:ffda736acf3d734a52790619866800d79fff2aeb99637dce343247670f1650b0` |
| 16 | `def` | [reflectedL2](../../../../MeasureAndIntegration/SourceHankelReflectionNamespaced.lean/declarations/reflectedl2.md) | 216 | `declaration-track:650ef7f84204daca6dcc1209318b225c341e58a42bc306c69b236f5500f52e81` |
| 17 | `theorem` | [l2_inner_eq_pairing](../../../../MeasureAndIntegration/SourceHankelReflectionNamespaced.lean/declarations/l2-inner-eq-pairing.md) | 221 | `result-track:e2ce0321a134a7dd6444d80e2aa4a8467d6ec98100ce6a1328a7f58e173db136` |
| 18 | `theorem` | [forwardL2_norm_sq_eq_integral](../../../../MeasureAndIntegration/SourceHankelReflectionNamespaced.lean/declarations/forwardl2-norm-sq-eq-integral.md) | 234 | `result-track:87991635bb08d73434f1bd9e52774a9246afe1f86911c4489f42708a4373e4be` |
| 19 | `theorem` | [reflectedL2_norm_sq_eq_integral](../../../../MeasureAndIntegration/SourceHankelReflectionNamespaced.lean/declarations/reflectedl2-norm-sq-eq-integral.md) | 245 | `result-track:4e3d46e28a07eaa3e6c000e9695fe96392e119394940d3b07bf31b7846fc61e6` |
| 20 | `theorem` | [signed_l2_energy_surplus](../../../../MeasureAndIntegration/SourceHankelReflectionNamespaced.lean/declarations/signed-l2-energy-surplus.md) | 256 | `result-track:b49742c7d6b8ff54ef6f6d7be8d081c2e3c79024374bb159b7f83ccf4055d7bc` |
| 21 | `theorem` | [normalized_source_even](../../../../MeasureAndIntegration/SourceHankelReflectionNamespaced.lean/declarations/normalized-source-even.md) | 265 | `result-track:e6d254eca4b964558b03cb6ad7d78ad13e2290e2b3712aecf4fcdc77b9bc6470` |
| 22 | `theorem` | [reflectedProfile_eq_forwardProfile_neg](../../../../MeasureAndIntegration/SourceHankelReflectionNamespaced.lean/declarations/reflectedprofile-eq-forwardprofile-neg.md) | 279 | `result-track:c26a30df93c2023129c0f4de275bb333982c8b1429ea36ac13f586f952ea4ea3` |
| 23 | `theorem` | [singleton_pairing_negative](../../../../MeasureAndIntegration/SourceHankelReflectionNamespaced.lean/declarations/singleton-pairing-negative.md) | 290 | `result-track:55f2028e9f68eeeb596179982806ee814bd496b484e953a57f42555b65e5c076` |
| 24 | `theorem` | [actual_nonnegative_sectors_negative_surplus](../../../../MeasureAndIntegration/SourceHankelReflectionNamespaced.lean/declarations/actual-nonnegative-sectors-negative-surplus.md) | 298 | `result-track:daa6a8de047c95eadff8aa61c3a510348b0bc0bd6c8ae78d2840dbe26dbd65e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=503de68fbaf96baa73c29ef36c74b4f23833fae029a8097002436be1e49d6fb2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/21SourceHankelReflection/Variant625e67df3f718274eecd6e615841ee40e740d926a6861370ffd4e6df3b075f6a.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/21SourceHankelReflection/Variant625e67df3f718274eecd6e615841ee40e740d926a6861370ffd4e6df3b075f6a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
