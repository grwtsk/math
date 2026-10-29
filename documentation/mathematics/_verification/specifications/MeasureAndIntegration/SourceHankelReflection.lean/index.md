# Verification target: Source Hankel Reflection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e43df4c20fb350feae75604083ad76504c34d47",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/21SourceHankelReflection/Variant9ed13c361d12afa384bec3fea33dbd27581d6f15ac9aff9ec7f84f664cf606bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceHankelReflection.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceHankelReflection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e43df4c20fb350feae75604083ad76504c34d47`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/21SourceHankelReflection/Variant9ed13c361d12afa384bec3fea33dbd27581d6f15ac9aff9ec7f84f664cf606bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/21SourceHankelReflection/Variant9ed13c361d12afa384bec3fea33dbd27581d6f15ac9aff9ec7f84f664cf606bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.MathematicalTooling.Reflection.Polarization` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [forwardProfile](../../../../MeasureAndIntegration/SourceHankelReflection.lean/declarations/forwardprofile.md) | 29 | `declaration-track:22589ef45538131cf22707dbcf1f570f481604243d1eaeba7eaf9f0ca9104be4` |
| 2 | `def` | [reflectedProfile](../../../../MeasureAndIntegration/SourceHankelReflection.lean/declarations/reflectedprofile.md) | 33 | `declaration-track:8ca9ef2ba241e6bf975480dd04686193c4a3bf70bd5c66093267b821b0be684e` |
| 3 | `theorem` | [translated_reflected_product_integrable](../../../../MeasureAndIntegration/SourceHankelReflection.lean/declarations/translated-reflected-product-integrable.md) | 37 | `result-track:42fe7fe66d8e8210e01dea971ffb5d2520ef4ae695fb684172fdf9f12c26e911` |
| 4 | `theorem` | [translated_reflected_pairing](../../../../MeasureAndIntegration/SourceHankelReflection.lean/declarations/translated-reflected-pairing.md) | 47 | `result-track:0693adc76f8eab425a2db1d7cbdbcd1d2c076e93111e00d9bd208a65aa1926e4` |
| 5 | `theorem` | [forwardProfile_continuous](../../../../MeasureAndIntegration/SourceHankelReflection.lean/declarations/forwardprofile-continuous.md) | 67 | `result-track:ff4cafddc9d8bf78a1e4cbcd875dfcd465f08da862b5db8754cb289ccb97caf2` |
| 6 | `theorem` | [reflectedProfile_continuous](../../../../MeasureAndIntegration/SourceHankelReflection.lean/declarations/reflectedprofile-continuous.md) | 74 | `result-track:2ff468b172f611462a320e4898b2179f39464a0c708ef91b7a0784a2aff66f5a` |
| 7 | `theorem` | [forwardProfile_hasCompactSupport](../../../../MeasureAndIntegration/SourceHankelReflection.lean/declarations/forwardprofile-hascompactsupport.md) | 81 | `result-track:78258e951971b8aef026b416ca446c225e0a5596ffe90f368035f5a0bb32e57f` |
| 8 | `theorem` | [reflectedProfile_hasCompactSupport](../../../../MeasureAndIntegration/SourceHankelReflection.lean/declarations/reflectedprofile-hascompactsupport.md) | 93 | `result-track:ec8c5836658134b584cf2de2257d5598d5d964c48e7d3745dccf21448dad2063` |
| 9 | `theorem` | [profile_product_integrable](../../../../MeasureAndIntegration/SourceHankelReflection.lean/declarations/profile-product-integrable.md) | 105 | `result-track:10f43c76a088565e74ea4d3b6c758feda69b3b9a94d6749728c09de03febcd40` |
| 10 | `theorem` | [finite_hankel_pairing](../../../../MeasureAndIntegration/SourceHankelReflection.lean/declarations/finite-hankel-pairing.md) | 112 | `result-track:7199437ee0ad07ab9d3186d16417d9a5c243b91576c92612c8a4ea4dfb7d778a` |
| 11 | `theorem` | [profile_square_sectors_integrable](../../../../MeasureAndIntegration/SourceHankelReflection.lean/declarations/profile-square-sectors-integrable.md) | 157 | `result-track:8231ea26d8a720914c02da6526d515df0cbd71293c834af1db49c62589c1fc37` |
| 12 | `theorem` | [signed_energy_surplus](../../../../MeasureAndIntegration/SourceHankelReflection.lean/declarations/signed-energy-surplus.md) | 172 | `result-track:d2fb012a8ec5b2031e15654acedd704a16f3392119e391f40a0a0715d34aa2fe` |
| 13 | `theorem` | [forwardProfile_memLp](../../../../MeasureAndIntegration/SourceHankelReflection.lean/declarations/forwardprofile-memlp.md) | 187 | `result-track:d72eff4605b9a4dd5736d4943c2f31c3a2f269166240b19651394f637e9df4e9` |
| 14 | `theorem` | [reflectedProfile_memLp](../../../../MeasureAndIntegration/SourceHankelReflection.lean/declarations/reflectedprofile-memlp.md) | 195 | `result-track:efb282b27e398fdb38714a96d10a2841aba54deb9bf614cce66d4c3b2858797a` |
| 15 | `def` | [forwardL2](../../../../MeasureAndIntegration/SourceHankelReflection.lean/declarations/forwardl2.md) | 203 | `declaration-track:9dbd4c6089322ad68e5c9f1db420d843d347fb1c1c7193839fb350569a0f0bfd` |
| 16 | `def` | [reflectedL2](../../../../MeasureAndIntegration/SourceHankelReflection.lean/declarations/reflectedl2.md) | 208 | `declaration-track:629d4ae7f295aa9c021a19f686e80274b4f30055f5ce5d04d2c657d24911e398` |
| 17 | `theorem` | [l2_inner_eq_pairing](../../../../MeasureAndIntegration/SourceHankelReflection.lean/declarations/l2-inner-eq-pairing.md) | 213 | `result-track:c975a556624f9d66b9b4bff3b26b6a9916299b3b52681422a95404dfe8a7e518` |
| 18 | `theorem` | [forwardL2_norm_sq_eq_integral](../../../../MeasureAndIntegration/SourceHankelReflection.lean/declarations/forwardl2-norm-sq-eq-integral.md) | 226 | `result-track:19cd5173fa43cb5d54bd985875892904dd240920986470adbe79026aa4cd7667` |
| 19 | `theorem` | [reflectedL2_norm_sq_eq_integral](../../../../MeasureAndIntegration/SourceHankelReflection.lean/declarations/reflectedl2-norm-sq-eq-integral.md) | 237 | `result-track:ee879c6c3b0ad3df45adbd1c204c0dfc637909a671b52a8cd3fc94203affcf86` |
| 20 | `theorem` | [signed_l2_energy_surplus](../../../../MeasureAndIntegration/SourceHankelReflection.lean/declarations/signed-l2-energy-surplus.md) | 248 | `result-track:11e67857f4fad4f4eb3ee6dbf9e65efef892482da1e7b7a8a4861f769bac9a09` |
| 21 | `theorem` | [normalized_source_even](../../../../MeasureAndIntegration/SourceHankelReflection.lean/declarations/normalized-source-even.md) | 257 | `result-track:4f07ee9df04efc7847ddcebc779abe2f5fd8d9750281570a84799b16cf001d26` |
| 22 | `theorem` | [reflectedProfile_eq_forwardProfile_neg](../../../../MeasureAndIntegration/SourceHankelReflection.lean/declarations/reflectedprofile-eq-forwardprofile-neg.md) | 271 | `result-track:cea831785c9cbb72b03226e772a2d821c3cc216bb00121fdb6b20fa593a3d033` |
| 23 | `theorem` | [singleton_pairing_negative](../../../../MeasureAndIntegration/SourceHankelReflection.lean/declarations/singleton-pairing-negative.md) | 282 | `result-track:e287e66bfb68d2a67bec1cf5fa43eb09015894b92185f0a5e91df6ebc8c16c24` |
| 24 | `theorem` | [actual_nonnegative_sectors_negative_surplus](../../../../MeasureAndIntegration/SourceHankelReflection.lean/declarations/actual-nonnegative-sectors-negative-surplus.md) | 290 | `result-track:c0bdc6b8947110eb5abb40c1291188704a58b393b324b10ffdad3164e34268c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=75ca6dafa13ba11029ba344c7f8738bab85cd8fa9db5df55f5a1882084e44079 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/21SourceHankelReflection/Variant9ed13c361d12afa384bec3fea33dbd27581d6f15ac9aff9ec7f84f664cf606bf.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/21SourceHankelReflection/Variant9ed13c361d12afa384bec3fea33dbd27581d6f15ac9aff9ec7f84f664cf606bf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
