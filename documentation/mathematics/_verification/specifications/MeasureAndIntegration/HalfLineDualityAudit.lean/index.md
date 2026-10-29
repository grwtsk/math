# Verification target: Half Line Duality Audit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ea6048d4910f151a3eaa7caaa7fc1f6c9f9bab1",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/HalfLineDualityAudit/Variant6c9daca081e3ce107f3117b72a4e5adf9dea1d31c9ffa78ef50b6e44ee289e82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/HalfLineDualityAudit.lean/index.md) · [Full source](../../../../MeasureAndIntegration/HalfLineDualityAudit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ea6048d4910f151a3eaa7caaa7fc1f6c9f9bab1`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/HalfLineDualityAudit/Variant6c9daca081e3ce107f3117b72a4e5adf9dea1d31c9ffa78ef50b6e44ee289e82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/HalfLineDualityAudit/Variant6c9daca081e3ce107f3117b72a4e5adf9dea1d31c9ffa78ef50b6e44ee289e82.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm.Indicator` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FullH](../../../../MeasureAndIntegration/HalfLineDualityAudit.lean/declarations/fullh.md) | 17 | `declaration-track:8f86beef5148461ca124cc088fef00c981df0388d0d3e15154bd2236a37d28ad` |
| 2 | `def` | [zeroExtensionFunction](../../../../MeasureAndIntegration/HalfLineDualityAudit.lean/declarations/zeroextensionfunction.md) | 19 | `declaration-track:a43104c8bace09a9198cdb8139b82d905314078b0967cb361c8c0c8c69168f2a` |
| 3 | `theorem` | [zeroExtensionFunction_memLp](../../../../MeasureAndIntegration/HalfLineDualityAudit.lean/declarations/zeroextensionfunction-memlp.md) | 21 | `result-track:ee1d11e3ca24cb75de68c06290090855ce1ef200dbca43584242be55a6b63d13` |
| 4 | `def` | [zeroExtensionVector](../../../../MeasureAndIntegration/HalfLineDualityAudit.lean/declarations/zeroextensionvector.md) | 25 | `declaration-track:1da7703b4f1ccba43aed0dff611d6131c0a2755e87c06733af5f4dd6ed100941` |
| 5 | `theorem` | [zeroExtensionVector_ae](../../../../MeasureAndIntegration/HalfLineDualityAudit.lean/declarations/zeroextensionvector-ae.md) | 28 | `result-track:95adfe2001afc71d5d74cf231a74a959332cf1cbda37c783adeb035d94efc195` |
| 6 | `theorem` | [zeroExtensionVector_norm](../../../../MeasureAndIntegration/HalfLineDualityAudit.lean/declarations/zeroextensionvector-norm.md) | 32 | `result-track:ecc1d81246423c5dad132c6e5b17e60de5d7cfeba5ce7601a2a4af20b9947eca` |
| 7 | `theorem` | [zeroExtensionVector_add](../../../../MeasureAndIntegration/HalfLineDualityAudit.lean/declarations/zeroextensionvector-add.md) | 37 | `result-track:b486822ff3c3f077ac4dd6202d419b10b082a0ee03a5cc1aad7311a55596b467` |
| 8 | `theorem` | [zeroExtensionVector_smul](../../../../MeasureAndIntegration/HalfLineDualityAudit.lean/declarations/zeroextensionvector-smul.md) | 49 | `result-track:a9af15c229be81db55fdad34d2dbc76914ea4430333c746a2715a3569efb5f6f` |
| 9 | `def` | [zeroExtension](../../../../MeasureAndIntegration/HalfLineDualityAudit.lean/declarations/zeroextension.md) | 62 | `declaration-track:5138495a73c72c24755f507205bd72698aa37d0d15261e513c9eb03ad88a5260` |
| 10 | `theorem` | [zeroExtension_ae](../../../../MeasureAndIntegration/HalfLineDualityAudit.lean/declarations/zeroextension-ae.md) | 68 | `result-track:8c6de9ca9f681690b5856debf19e81d4595ebe79f28f53f095cd3cc3b0790b04` |
| 11 | `theorem` | [zeroExtension_norm](../../../../MeasureAndIntegration/HalfLineDualityAudit.lean/declarations/zeroextension-norm.md) | 72 | `result-track:90b878083efe86797cfe7eefebabac0cf3b68b56be708c02ca755cf57aaae73f` |
| 12 | `theorem` | [zeroExtension_ae_halfLine](../../../../MeasureAndIntegration/HalfLineDualityAudit.lean/declarations/zeroextension-ae-halfline.md) | 75 | `result-track:84759187978b109c5f66c7747855e2086a6fec01e314225368ad9c08270e91db` |
| 13 | `theorem` | [zeroExtension_ae_nonpositive](../../../../MeasureAndIntegration/HalfLineDualityAudit.lean/declarations/zeroextension-ae-nonpositive.md) | 81 | `result-track:937a02034eadd06c6efa5953685d031a91853cde2173a4504f4bec9554791733` |
| 14 | `def` | [restriction](../../../../MeasureAndIntegration/HalfLineDualityAudit.lean/declarations/restriction.md) | 90 | `declaration-track:bc97483e1cef9799d75769d79b5785feb562e49fdb3f008f7408962968f04cb5` |
| 15 | `theorem` | [restriction_ae](../../../../MeasureAndIntegration/HalfLineDualityAudit.lean/declarations/restriction-ae.md) | 92 | `result-track:681abc0e9c8cab80c0e6bc2868850913602b259533d5ae690fadfa3d5cbec26e` |
| 16 | `theorem` | [restriction_norm_le](../../../../MeasureAndIntegration/HalfLineDualityAudit.lean/declarations/restriction-norm-le.md) | 95 | `result-track:fdaa87032c14f33805eea60bfb28fe0656b3eac014c40e5946270eaa9b3a3fdf` |
| 17 | `theorem` | [restriction_opNorm_le](../../../../MeasureAndIntegration/HalfLineDualityAudit.lean/declarations/restriction-opnorm-le.md) | 98 | `result-track:042e9b73933c25ba51c7daff921582a7e242da98ec1dc7a3ea08f9c6efa36350` |
| 18 | `theorem` | [restriction_zeroExtension](../../../../MeasureAndIntegration/HalfLineDualityAudit.lean/declarations/restriction-zeroextension.md) | 103 | `result-track:acb9bcb521b1e9d4bf2dd24c926ae62f34ea314910b59cc20a9f21040c4d0926` |
| 19 | `theorem` | [restriction_comp_zeroExtension](../../../../MeasureAndIntegration/HalfLineDualityAudit.lean/declarations/restriction-comp-zeroextension.md) | 106 | `result-track:76dd03dbfb6e444d9e2e718bc02725d2b8ca831375541d7eb14d2fa3d730f7d0` |
| 20 | `theorem` | [restricted_inner_integrable](../../../../MeasureAndIntegration/HalfLineDualityAudit.lean/declarations/restricted-inner-integrable.md) | 128 | `result-track:f2c526e1de1249c8bc364c8aa232d55d0d5ed888485947b713a8eb0a5933a20f` |
| 21 | `theorem` | [extended_inner_integrable](../../../../MeasureAndIntegration/HalfLineDualityAudit.lean/declarations/extended-inner-integrable.md) | 134 | `result-track:72525f424b10fe3a0f36fcc8deb24318230e596d414c3e1b23600ea8c1352c35` |
| 22 | `theorem` | [inner_restriction_zeroExtension](../../../../MeasureAndIntegration/HalfLineDualityAudit.lean/declarations/inner-restriction-zeroextension.md) | 138 | `result-track:6c4f6bb2f8a5d658650b75440b4702fd4c105d8ea5a330381aabeec2630a9823` |
| 23 | `theorem` | [zeroExtension_adjoint](../../../../MeasureAndIntegration/HalfLineDualityAudit.lean/declarations/zeroextension-adjoint.md) | 156 | `result-track:67e7348dfb2af2251bbb8706df12bffde45a26e64758d006e4456f25f402aefb` |
| 24 | `theorem` | [restriction_adjoint](../../../../MeasureAndIntegration/HalfLineDualityAudit.lean/declarations/restriction-adjoint.md) | 161 | `result-track:5a760fa10a19c765bd0522fd1f6aac8671d65762936fce40ca1486880f6a09cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2d267ccbb34e703abec03f4d936b10615f2877e6c1420e447f954defdb336134 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/HalfLineDualityAudit/Variant6c9daca081e3ce107f3117b72a4e5adf9dea1d31c9ffa78ef50b6e44ee289e82.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/HalfLineDualityAudit/Variant6c9daca081e3ce107f3117b72a4e5adf9dea1d31c9ffa78ef50b6e44ee289e82.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
