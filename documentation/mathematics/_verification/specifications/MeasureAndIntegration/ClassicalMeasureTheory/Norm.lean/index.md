# Verification target: Norm

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff7cb88df88fc52a309051e9dcceacbd73850915",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Norm/Variant8b5f8c92dd803fed4171327dca2247679ddccb7d6308db2e19d7b8b1861ae5ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Norm.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Norm.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff7cb88df88fc52a309051e9dcceacbd73850915`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Norm/Variant8b5f8c92dd803fed4171327dca2247679ddccb7d6308db2e19d7b8b1861ae5ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Norm/Variant8b5f8c92dd803fed4171327dca2247679ddccb7d6308db2e19d7b8b1861ae5ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Lebesgue.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lintegral_ofReal_le_lintegral_enorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Norm.lean/declarations/lintegral-ofreal-le-lintegral-enorm.md) | 17 | `result-track:86089057d713ea4a0ab7b1d35778491e3f6da42a72f4a699f2d54ffa1d1e8023` |
| 2 | `theorem` | [lintegral_enorm_of_ae_nonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Norm.lean/declarations/lintegral-enorm-of-ae-nonneg.md) | 27 | `result-track:89f6c4106f5162e095fc96c4a812af79724719093648e119dd9ad7b4963e61d5` |
| 3 | `theorem` | [lintegral_enorm_of_nonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Norm.lean/declarations/lintegral-enorm-of-nonneg.md) | 36 | `result-track:8772c5aba299b1ef46fd2459c638f2793f977c18f5f6074a161841093d43880e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e4d2204b3251ef01dcfa4a56dd4e6acb1fb4990acad2261b0482f72227e8211 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Norm/Variant8b5f8c92dd803fed4171327dca2247679ddccb7d6308db2e19d7b8b1861ae5ea.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Norm/Variant8b5f8c92dd803fed4171327dca2247679ddccb7d6308db2e19d7b8b1861ae5ea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
