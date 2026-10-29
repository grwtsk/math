# Verification target: Measure Complex Namespaced Complex Measure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6842686decc7cf8eaf80f6e7a74ba6a71d355ac7",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Complex/Variant5ef280304589c789fa54530dc40ac22a14a0a803a22bc92bb89f989259d6767e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureComplexNamespacedComplexMeasure.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureComplexNamespacedComplexMeasure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6842686decc7cf8eaf80f6e7a74ba6a71d355ac7`.

Source path: `GRWTSK/Analysis/MeasureTheory/Complex/Variant5ef280304589c789fa54530dc40ac22a14a0a803a22bc92bb89f989259d6767e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Complex/Variant5ef280304589c789fa54530dc40ac22a14a0a803a22bc92bb89f989259d6767e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.VectorMeasure.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ComplexMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureComplexNamespacedComplexMeasure.lean/declarations/complexmeasure.md) | 52 | `declaration-track:fdf630ce8b4c13f27f2dd702f7196ba75b76cac96da02c0dcb888d3b949736ff` |
| 2 | `def` | [re](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureComplexNamespacedComplexMeasure.lean/declarations/re.md) | 59 | `declaration-track:850af494cf304ad1430f9aa3d7a9fe2701bbd2eb05dbe2b66a80762c010ba1bf` |
| 3 | `def` | [im](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureComplexNamespacedComplexMeasure.lean/declarations/im.md) | 64 | `declaration-track:e7c30f1dbb9c0c16ec4171090d58b2f030c9c6568a3bfb732ecc3666f3fcfd80` |
| 4 | `def` | [Measure Complex Namespaced Complex Measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureComplexNamespacedComplexMeasure.lean/declarations/tocomplexmeasure.md) | 69 | `declaration-track:6d614ac5fe9ba7960f089fdb8301ab97e5cd1cd4ac4981224daffbbb1dfe524a` |
| 5 | `theorem` | [Measure Complex Namespaced Complex Measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureComplexNamespacedComplexMeasure.lean/declarations/tocomplexmeasure-apply.md) | 76 | `result-track:7a19d3006bec5d6b67e54f1d17e5b1a836f52ce4da545148aed6617affaf1614` |
| 6 | `theorem` | [toComplexMeasure_to_signedMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureComplexNamespacedComplexMeasure.lean/declarations/tocomplexmeasure-to-signedmeasure.md) | 79 | `result-track:b34495b4f3fa545a75d738f1917f92644bcb3b20cb0c085df4e1db86325ef3d1` |
| 7 | `theorem` | [Measure Complex Namespaced Complex Measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureComplexNamespacedComplexMeasure.lean/declarations/re-tocomplexmeasure.md) | 82 | `result-track:95305607d2703cc0c1468b3ed8d60deb2d4ad9502abe7f0d0b9c93bfbb69a96b` |
| 8 | `theorem` | [Measure Complex Namespaced Complex Measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureComplexNamespacedComplexMeasure.lean/declarations/im-tocomplexmeasure.md) | 85 | `result-track:72cf7ec7956075a114015c3be89a3a2df47dafa959817fef5ee794637535840b` |
| 9 | `def` | [equivSignedMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureComplexNamespacedComplexMeasure.lean/declarations/equivsignedmeasure-source-edition-2.md) | 90 | `declaration-track:15928e10338fb31c5091f6187a891aaf25248ce2b892e5e0f484c1d9201e9ef9` |
| 10 | `def` | [equivSignedMeasureₗ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureComplexNamespacedComplexMeasure.lean/declarations/equivsignedmeasure.md) | 103 | `declaration-track:0840c18f0d24b034aced279e954dd7bf85c8ec13d05e4be7da53cb3ae1fce211` |
| 11 | `theorem` | [absolutelyContinuous_ennreal_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureComplexNamespacedComplexMeasure.lean/declarations/absolutelycontinuous-ennreal-iff.md) | 115 | `result-track:98122ce1470a7f6b25e73494427d7246ea1206220fa674c5dfc9551f51a54b19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8fcbab30434475d736962bfba55760c2ec94e6d46187b0679cb397894798fdba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Complex/Variant5ef280304589c789fa54530dc40ac22a14a0a803a22bc92bb89f989259d6767e.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Complex/Variant5ef280304589c789fa54530dc40ac22a14a0a803a22bc92bb89f989259d6767e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
