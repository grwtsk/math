# Verification target: Half Line Extension Audit Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff3c09d3e946ff8ee6e79a5a6e6128fcbf8f43db",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant602877f22adbb08cf8c56fb8390a2202434f508de9bffe70cbd67673c3961934.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/HalfLineExtensionAuditNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/HalfLineExtensionAuditNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff3c09d3e946ff8ee6e79a5a6e6128fcbf8f43db`.

Source path: `GRWTSK/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant602877f22adbb08cf8c56fb8390a2202434f508de9bffe70cbd67673c3961934.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant602877f22adbb08cf8c56fb8390a2202434f508de9bffe70cbd67673c3961934.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm.Indicator` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FullH](../../../../MeasureAndIntegration/HalfLineExtensionAuditNamespaced.lean/declarations/fullh.md) | 24 | `declaration-track:c4656b1dbe00876fda57c47203868dc70f2cdc51e582262cdc081dd9ce3aa724` |
| 2 | `def` | [zeroExtensionFunction](../../../../MeasureAndIntegration/HalfLineExtensionAuditNamespaced.lean/declarations/zeroextensionfunction.md) | 26 | `declaration-track:0212e9715714b1f0c4ed013547759329a6a23c210cc555e9cdc899048776a424` |
| 3 | `theorem` | [zeroExtensionFunction_memLp](../../../../MeasureAndIntegration/HalfLineExtensionAuditNamespaced.lean/declarations/zeroextensionfunction-memlp.md) | 28 | `result-track:744f219956d1355a527ba807f2f19e74bb34e97356ea7e1b566811b6807588ef` |
| 4 | `def` | [zeroExtensionVector](../../../../MeasureAndIntegration/HalfLineExtensionAuditNamespaced.lean/declarations/zeroextensionvector.md) | 32 | `declaration-track:f7c5eda1241c416f2fb6171ebd48e55c58757f80a58828c4b48dc3f441822062` |
| 5 | `theorem` | [zeroExtensionVector_ae](../../../../MeasureAndIntegration/HalfLineExtensionAuditNamespaced.lean/declarations/zeroextensionvector-ae.md) | 35 | `result-track:8b1011b3928f99eea2c142c495df1be032a6dab0a55bae197ace666307d9b1d8` |
| 6 | `theorem` | [zeroExtensionVector_norm](../../../../MeasureAndIntegration/HalfLineExtensionAuditNamespaced.lean/declarations/zeroextensionvector-norm.md) | 39 | `result-track:76945786db0c6ce699f7465d560457de0d00150518f1ea702cd8e5d5d27a3bff` |
| 7 | `theorem` | [zeroExtensionVector_add](../../../../MeasureAndIntegration/HalfLineExtensionAuditNamespaced.lean/declarations/zeroextensionvector-add.md) | 44 | `result-track:5e5567894a6fb6cfec9ec23af9a7ae88dd00580af82127c4afa83c77c8f55099` |
| 8 | `theorem` | [zeroExtensionVector_smul](../../../../MeasureAndIntegration/HalfLineExtensionAuditNamespaced.lean/declarations/zeroextensionvector-smul.md) | 56 | `result-track:8546b097685a1f14b89fcf8fad4f49dcc622a41010cc5b164f043e3f69290130` |
| 9 | `def` | [zeroExtension](../../../../MeasureAndIntegration/HalfLineExtensionAuditNamespaced.lean/declarations/zeroextension.md) | 69 | `declaration-track:8bae34155c3bf69749ca6e87cf84807805792dff39ca59fb3de6962dcf515342` |
| 10 | `theorem` | [zeroExtension_ae](../../../../MeasureAndIntegration/HalfLineExtensionAuditNamespaced.lean/declarations/zeroextension-ae.md) | 75 | `result-track:6268013e37cb9856bea063d9623b9435992417f4579563cff5735c627f84ec00` |
| 11 | `theorem` | [zeroExtension_norm](../../../../MeasureAndIntegration/HalfLineExtensionAuditNamespaced.lean/declarations/zeroextension-norm.md) | 79 | `result-track:47f7d8967aa5c444b03c9318ad5cf2c4ae1a6bd7dfe4b457e2fa613c877a52b5` |
| 12 | `theorem` | [zeroExtension_ae_halfLine](../../../../MeasureAndIntegration/HalfLineExtensionAuditNamespaced.lean/declarations/zeroextension-ae-halfline.md) | 82 | `result-track:946526d5caa5d669b7d164837e572d1d5ad04c8717d93c2f8720aed14250457b` |
| 13 | `theorem` | [zeroExtension_ae_nonpositive](../../../../MeasureAndIntegration/HalfLineExtensionAuditNamespaced.lean/declarations/zeroextension-ae-nonpositive.md) | 88 | `result-track:891d51dbbd20882ae9980c4bfe8c42cc1e7d71dab6a94309ffb65278be64e761` |
| 14 | `def` | [restriction](../../../../MeasureAndIntegration/HalfLineExtensionAuditNamespaced.lean/declarations/restriction.md) | 97 | `declaration-track:0bd5574af4d9edeedaeaab4b207e903d1e67c3273dd1eb8ce1e0a527df9dc4db` |
| 15 | `theorem` | [restriction_ae](../../../../MeasureAndIntegration/HalfLineExtensionAuditNamespaced.lean/declarations/restriction-ae.md) | 99 | `result-track:722ec76252bb95da7c65c822f41b9644bd65bade0cef0f17f075d37e4f1d605f` |
| 16 | `theorem` | [restriction_norm_le](../../../../MeasureAndIntegration/HalfLineExtensionAuditNamespaced.lean/declarations/restriction-norm-le.md) | 102 | `result-track:b81aafca00f8dd063529b7ff40966992915e5af676e85dc4077426f1fe79c647` |
| 17 | `theorem` | [restriction_opNorm_le](../../../../MeasureAndIntegration/HalfLineExtensionAuditNamespaced.lean/declarations/restriction-opnorm-le.md) | 105 | `result-track:ff55bf37f73309de23ca627be2af794dc550ee3ca240f9a052bafb69141b0660` |
| 18 | `theorem` | [restriction_zeroExtension](../../../../MeasureAndIntegration/HalfLineExtensionAuditNamespaced.lean/declarations/restriction-zeroextension.md) | 110 | `result-track:618734377a0f5aeec53af5f08cfff26168f5ea0a638a84dd56ddd728fb396313` |
| 19 | `theorem` | [restriction_comp_zeroExtension](../../../../MeasureAndIntegration/HalfLineExtensionAuditNamespaced.lean/declarations/restriction-comp-zeroextension.md) | 113 | `result-track:660261c9f7676459ea7e2fdac73aac5aededf60040e3c09331749f5f57617e7d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=034a5cc8b1876b96995fd56f261cb5b23acf21a9625fefaec85325f658c3eae9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant602877f22adbb08cf8c56fb8390a2202434f508de9bffe70cbd67673c3961934.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/HalfLineExtensionAudit/Variant602877f22adbb08cf8c56fb8390a2202434f508de9bffe70cbd67673c3961934.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
