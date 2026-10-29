# Verification target: With Density Finite Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a67d3a6cb3902f354b77e36cd85756418461b1be",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/WithDensityFinite/Variant95ef3c787d104f48a6f8f75166b6e5efdc4378a65aee45e7cd89371f541e890f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityFinitePublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityFinitePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a67d3a6cb3902f354b77e36cd85756418461b1be`.

Source path: `GRWTSK/Analysis/MeasureTheory/WithDensityFinite/Variant95ef3c787d104f48a6f8f75166b6e5efdc4378a65aee45e7cd89371f541e890f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/WithDensityFinite/Variant95ef3c787d104f48a6f8f75166b6e5efdc4378a65aee45e7cd89371f541e890f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Measure.toFiniteAux](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityFinitePublic.lean/declarations/measure-tofiniteaux.md) | 50 | `declaration-track:c073ada760f4d18dbbc7f90956b9eec18c7a0a3ee08fcbfdf2718fbd3965dbf0` |
| 2 | `def` | [Measure.toFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityFinitePublic.lean/declarations/measure-tofinite.md) | 59 | `declaration-track:06f2437883c1d39ab411385a0c4c4e1da3394f1dd1574569947b046ae91f1bd0` |
| 3 | `lemma` | [ae_toFiniteAux](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityFinitePublic.lean/declarations/ae-tofiniteaux.md) | 63 | `result-track:e85b406763d8e67e86972c22ac24fec18dd736b43475f7c005f5fe8da528f57f` |
| 4 | `theorem` | [isFiniteMeasure_toFiniteAux](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityFinitePublic.lean/declarations/isfinitemeasure-tofiniteaux.md) | 71 | `result-track:2ca0735b447aed3c8f0cfaf1ab78d349fa9ac1d78a233993de32c256389c401f` |
| 5 | `lemma` | [ae_toFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityFinitePublic.lean/declarations/ae-tofinite.md) | 78 | `result-track:e4d153e71956f0fbd6347735e6eca5575f13a200e2e4f59b5797705beb02ae91` |
| 6 | `lemma` | [toFinite_apply_eq_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityFinitePublic.lean/declarations/tofinite-apply-eq-zero-iff.md) | 82 | `result-track:665792ca7612c40c704ff4a37873f7b20b816cb42cd43d505f6a8e43f53286b2` |
| 7 | `lemma` | [toFinite_eq_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityFinitePublic.lean/declarations/tofinite-eq-zero-iff.md) | 86 | `result-track:eef916f3a29bb870910658dac57c4cc883b86bbd161c2be3f7990b7eb0d1c33c` |
| 8 | `lemma` | [toFinite_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityFinitePublic.lean/declarations/tofinite-zero.md) | 90 | `result-track:b3a4c9aaf5c0c9fca794e1f721476fe4b5bbb18367b3abbd398a3bbcbc118a00` |
| 9 | `lemma` | [toFinite_eq_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityFinitePublic.lean/declarations/tofinite-eq-self.md) | 92 | `result-track:87fc3f6f95e96be3f568b75e3cd00ce4713bbbd75ce3f3828ac71a1435224574` |
| 10 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityFinitePublic.lean/declarations/instance-source-edition-2.md) | 96 | `declaration-track:6990df7ee2da4bad69c73897134c1dc33e6c022cce4c68fbcd45cac8a45c2544` |
| 11 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityFinitePublic.lean/declarations/instance.md) | 100 | `declaration-track:4aeb302228baaa6b9afc2598f6d873df36e34eb01fec335d62f8113dfeba338a` |
| 12 | `lemma` | [absolutelyContinuous_toFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityFinitePublic.lean/declarations/absolutelycontinuous-tofinite.md) | 104 | `result-track:5d4c9f2bd6f13c01ad15bd4db537af106d18fea6ca5b7aa2307dd8e1a9aee8ed` |
| 13 | `lemma` | [sfiniteSeq_absolutelyContinuous_toFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityFinitePublic.lean/declarations/sfiniteseq-absolutelycontinuous-tofinite.md) | 107 | `result-track:eff8832077c0fed22b1b29d475d282026631d1b38ddd91c49295e6d112a9f9b4` |
| 14 | `lemma` | [toFinite_absolutelyContinuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityFinitePublic.lean/declarations/tofinite-absolutelycontinuous.md) | 111 | `result-track:c11bb284dc8639454f5d86eba524b18c996c64c10482ee76451755e76d32e219` |
| 15 | `lemma` | [restrict_compl_sigmaFiniteSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/WithDensityFinitePublic.lean/declarations/restrict-compl-sigmafiniteset.md) | 114 | `result-track:9a11e2ed5acb90ccd622d6bd5acac03f14cdb1b3352b350ec809d2474028af89` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=05558ca836a84d8321e8e772a6d51ee42cd790a937e2415c0ca6e3f7322fb637 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/WithDensityFinite/Variant95ef3c787d104f48a6f8f75166b6e5efdc4378a65aee45e7cd89371f541e890f.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/WithDensityFinite/Variant95ef3c787d104f48a6f8f75166b6e5efdc4378a65aee45e7cd89371f541e890f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
