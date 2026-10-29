# Verification target: Tonelli APINamespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b438bf19404fd1eee58dd6c18d0349dd81a6ea0e",
  "lexical_observation_count": 1,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/781e94f9be38cc16279b0a2c76e0f44379d357037eded1a378d4fb191e74e894TonelliAPI/Variant2e9d04680ef3916614ef75bfd3d77ab419a94612441a2683f086222154d1d1ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/TonelliAPINamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/TonelliAPINamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b438bf19404fd1eee58dd6c18d0349dd81a6ea0e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/781e94f9be38cc16279b0a2c76e0f44379d357037eded1a378d4fb191e74e894TonelliAPI/Variant2e9d04680ef3916614ef75bfd3d77ab419a94612441a2683f086222154d1d1ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/781e94f9be38cc16279b0a2c76e0f44379d357037eded1a378d4fb191e74e894TonelliAPI/Variant2e9d04680ef3916614ef75bfd3d77ab419a94612441a2683f086222154d1d1ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Prod` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nonnegative_integral_integral_swap](../../../../MeasureAndIntegration/TonelliAPINamespaced.lean/declarations/nonnegative-integral-integral-swap.md) | 20 | `result-track:85d7b943bd9f2c960a52c2fd9d5f7fd85b023ac239b2a48813e03bba7adf63e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=73f039f3a047d7912bc9053f3e3f51df1503294ed22f626c48480af52c9a989d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/781e94f9be38cc16279b0a2c76e0f44379d357037eded1a378d4fb191e74e894TonelliAPI/Variant2e9d04680ef3916614ef75bfd3d77ab419a94612441a2683f086222154d1d1ea.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/781e94f9be38cc16279b0a2c76e0f44379d357037eded1a378d4fb191e74e894TonelliAPI/Variant2e9d04680ef3916614ef75bfd3d77ab419a94612441a2683f086222154d1d1ea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
