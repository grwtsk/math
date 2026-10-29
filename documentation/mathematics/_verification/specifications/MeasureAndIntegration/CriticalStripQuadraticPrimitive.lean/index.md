# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripQuadraticPrimitive

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea2bb13499f413f3c585ce3b837d538180713172",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripQuadraticPrimitive.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/CriticalStripQuadraticPrimitive.lean/index.md) · [Full source](../../../../MeasureAndIntegration/CriticalStripQuadraticPrimitive.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea2bb13499f413f3c585ce3b837d538180713172`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripQuadraticPrimitive.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripQuadraticPrimitive.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCenteredMellin`](../../../../MeasureAndIntegration/CriticalStripCenteredMellin.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realKernel](../../../../MeasureAndIntegration/CriticalStripQuadraticPrimitive.lean/declarations/realkernel.md) | 34 | `declaration-track:2d08e3c4a06ec58a727d1dcf8df595cc6ec718c2992e302a64b2e90821f07c78` |
| 2 | `def` | [kernel](../../../../MeasureAndIntegration/CriticalStripQuadraticPrimitive.lean/declarations/kernel.md) | 37 | `declaration-track:478ee1cf3c4a26f67d0de8d2c7ca387b281bb26be6f0816ca93c6b486449b0cb` |
| 3 | `lemma` | [realKernel_bounds](../../../../MeasureAndIntegration/CriticalStripQuadraticPrimitive.lean/declarations/realkernel-bounds.md) | 39 | `result-track:26af7d50e0267e2a8c2c2c4ecfa63e9b9dfc07833130363cfd99e4dcd6495171` |
| 4 | `lemma` | [kernel_norm_le](../../../../MeasureAndIntegration/CriticalStripQuadraticPrimitive.lean/declarations/kernel-norm-le.md) | 46 | `result-track:2ec6867d5bf4a3ec79277795bf1e6448a051f5868a38070d8b81718f5fb26c57` |
| 5 | `lemma` | [kernel_measurable](../../../../MeasureAndIntegration/CriticalStripQuadraticPrimitive.lean/declarations/kernel-measurable.md) | 50 | `result-track:edbe29633711fec3ad258f450a5eea06c9a9ac0021aafd9c0ffc50f484352b09` |
| 6 | `lemma` | [kernel_zero_below](../../../../MeasureAndIntegration/CriticalStripQuadraticPrimitive.lean/declarations/kernel-zero-below.md) | 55 | `result-track:5251e930547ae3fdf56a2f5134aae918076bd590a9504372e9342a30d84d299c` |
| 7 | `lemma` | [kernel_nat](../../../../MeasureAndIntegration/CriticalStripQuadraticPrimitive.lean/declarations/kernel-nat.md) | 58 | `result-track:7c815541ba698b2916d5607349e1fdb5ff32c7254d73d666cab35086cb8a54bd` |
| 8 | `lemma` | [kernel_locallyIntegrable](../../../../MeasureAndIntegration/CriticalStripQuadraticPrimitive.lean/declarations/kernel-locallyintegrable.md) | 66 | `result-track:38508ac2eaf330791fc861d4f4f81f7d6c50ca4d94a3cfaedbefb1525f1c0a7c` |
| 9 | `lemma` | [kernel_isBigO_top](../../../../MeasureAndIntegration/CriticalStripQuadraticPrimitive.lean/declarations/kernel-isbigo-top.md) | 72 | `result-track:8db3d428e03179a762730bd448e3af7a7bba3072ff50d3a08071c9f23bd8d85a` |
| 10 | `lemma` | [kernel_isBigO_zero](../../../../MeasureAndIntegration/CriticalStripQuadraticPrimitive.lean/declarations/kernel-isbigo-zero.md) | 78 | `result-track:2088871c51f3f914546c7e19fcd15efbc1b295c3db679334aeb89d9b6092e78f` |
| 11 | `def` | [integrand](../../../../MeasureAndIntegration/CriticalStripQuadraticPrimitive.lean/declarations/integrand.md) | 85 | `declaration-track:606ebb9cfa6046965b650f96dd1a734b48491e0700bc7ca499af5e67e8a500cf` |
| 12 | `def` | [tail](../../../../MeasureAndIntegration/CriticalStripQuadraticPrimitive.lean/declarations/tail.md) | 87 | `declaration-track:83f8d470b62d3de273a9418e9531fde8b0017eaace3a7214d5938728bb74c447` |
| 13 | `lemma` | [integrand_integrable](../../../../MeasureAndIntegration/CriticalStripQuadraticPrimitive.lean/declarations/integrand-integrable.md) | 89 | `result-track:27db8aec55d55563944ae18077a4d0609c6cc1bb14bfc304d4363829e68dfaab` |
| 14 | `theorem` | [tail_norm_le](../../../../MeasureAndIntegration/CriticalStripQuadraticPrimitive.lean/declarations/tail-norm-le.md) | 105 | `result-track:b4e290ceb9f27091cd8b506acd32d153c952c6509387f32f8e0544beb16224dd` |
| 15 | `def` | [cell](../../../../MeasureAndIntegration/CriticalStripQuadraticPrimitive.lean/declarations/cell.md) | 130 | `declaration-track:23ae35e3745cefae7dc318090297556752d6b133ba11c4a528fc908af801d873` |
| 16 | `lemma` | [cell_left](../../../../MeasureAndIntegration/CriticalStripQuadraticPrimitive.lean/declarations/cell-left.md) | 133 | `result-track:e7a21b81c2c138005471f7ab7dec61491e894747a5768aec02746d3e10bf4f14` |
| 17 | `lemma` | [cell_right](../../../../MeasureAndIntegration/CriticalStripQuadraticPrimitive.lean/declarations/cell-right.md) | 134 | `result-track:ffea24396a0e0f1c3c04438aaf3fa178d46b37285d41a3fbb3b45d1123887236` |
| 18 | `lemma` | [cell_hasDerivAt](../../../../MeasureAndIntegration/CriticalStripQuadraticPrimitive.lean/declarations/cell-hasderivat.md) | 137 | `result-track:56fda4dfe67a63f0a9f8400c86c1f08d47b719768df8f641adabab1cd831a013` |
| 19 | `lemma` | [floor_eq_on_open_cell](../../../../MeasureAndIntegration/CriticalStripQuadraticPrimitive.lean/declarations/floor-eq-on-open-cell.md) | 145 | `result-track:7348fc81707fd4aad0ea9ae6ce865aacfc04c8fb4bd6972852d96098e4a923ea` |
| 20 | `lemma` | [kernel_eq_cell](../../../../MeasureAndIntegration/CriticalStripQuadraticPrimitive.lean/declarations/kernel-eq-cell.md) | 151 | `result-track:0ce56c8fff6c76417b16733876bcdf67709e744f58316312eed94e51437bac86` |
| 21 | `lemma` | [centered_eq_cell_derivative](../../../../MeasureAndIntegration/CriticalStripQuadraticPrimitive.lean/declarations/centered-eq-cell-derivative.md) | 159 | `result-track:a874aa2eb1384581a7ffadaa28bdb02a8da162d2b877f58d3e15399bced7107b` |
| 22 | `lemma` | [cell_integral_identity](../../../../MeasureAndIntegration/CriticalStripQuadraticPrimitive.lean/declarations/cell-integral-identity.md) | 169 | `result-track:824480e94451b6896bd859c092dd95f08c07ab43a8018d5d8a4ff6af99898d80` |
| 23 | `lemma` | [intervalIntegrable_of_tail](../../../../MeasureAndIntegration/CriticalStripQuadraticPrimitive.lean/declarations/intervalintegrable-of-tail.md) | 217 | `result-track:e140e50314e3240650776b5ebfd2c48482c153359d5dcaec42c399b746039db2` |
| 24 | `lemma` | [finite_integral_identity](../../../../MeasureAndIntegration/CriticalStripQuadraticPrimitive.lean/declarations/finite-integral-identity.md) | 223 | `result-track:18208ab28855c06a88a5aef2aada79146d82ce7027dce50cdff39f432f8fb0e2` |
| 25 | `lemma` | [split_integral_tail](../../../../MeasureAndIntegration/CriticalStripQuadraticPrimitive.lean/declarations/split-integral-tail.md) | 247 | `result-track:6cc99e8bcd0490a47e63a0dfb1aec5d86bb1ef1ce334094a0e3811ad77f85e15` |
| 26 | `theorem` | [value_identity](../../../../MeasureAndIntegration/CriticalStripQuadraticPrimitive.lean/declarations/value-identity.md) | 269 | `result-track:a4425d9c5005aad13db39fa8818a01ca70d04c59379f3b30808288eccc6f4f07` |
| 27 | `theorem` | [integer_tail_identity](../../../../MeasureAndIntegration/CriticalStripQuadraticPrimitive.lean/declarations/integer-tail-identity.md) | 313 | `result-track:69f785361062411b9e87210bda76fd68dac378026ce52009bedad88339ca8634` |
| 28 | `theorem` | [centered_tail_norm_le](../../../../MeasureAndIntegration/CriticalStripQuadraticPrimitive.lean/declarations/centered-tail-norm-le.md) | 327 | `result-track:1fa44aea1441ec8ee53ed474059035aa373179fa099ebabbcfe5b4e5af76457d` |
| 29 | `theorem` | [centered_value_norm_le](../../../../MeasureAndIntegration/CriticalStripQuadraticPrimitive.lean/declarations/centered-value-norm-le.md) | 334 | `result-track:987f0d5ed31efc20206a321281319dc4ffe681b72d43943ff819ca21124ac167` |
| 30 | `theorem` | [finiteModel_error_improved](../../../../MeasureAndIntegration/CriticalStripQuadraticPrimitive.lean/declarations/finitemodel-error-improved.md) | 341 | `result-track:a0eba7d6719b100fa9a5f114fff17e7744c44154afb407f0f5bf2944d731f133` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2a5af7e036eabf1b9f27785683cd79fcd4ba773cbb9d26ab3e4482b35a3670ad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripQuadraticPrimitive.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/CriticalStripQuadraticPrimitive.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
