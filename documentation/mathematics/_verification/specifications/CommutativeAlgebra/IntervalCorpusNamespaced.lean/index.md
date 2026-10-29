# Verification target: Interval Corpus Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2661d19f48902234c8a2a9d6291731c2069d2794",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/IntervalCorpus/Varianta48320f68e44149fde772098e5a0d6ebdd9d315f5cc2ab26e63a4f8e19edd3d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/IntervalCorpusNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/IntervalCorpusNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2661d19f48902234c8a2a9d6291731c2069d2794`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/IntervalCorpus/Varianta48320f68e44149fde772098e5a0d6ebdd9d315f5cc2ab26e63a4f8e19edd3d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/IntervalCorpus/Varianta48320f68e44149fde772098e5a0d6ebdd9d315f5cc2ab26e63a4f8e19edd3d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Discovery.IdeasCorpus` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Polynomial.Interval` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [source](../../../../CommutativeAlgebra/IntervalCorpusNamespaced.lean/declarations/source.md) | 25 | `declaration-track:92ef270bc91c09d0725ca06be023ac881dab39e5f4ed6cac88eeb306f0801a0a` |
| 2 | `def` | [endpointDifference](../../../../CommutativeAlgebra/IntervalCorpusNamespaced.lean/declarations/endpointdifference.md) | 50 | `declaration-track:9e4fa1b166074bb020e8754ed9925f89028385915622496d0d2ede3a93649ebd` |
| 3 | `def` | [endpointDifferenceSelf](../../../../CommutativeAlgebra/IntervalCorpusNamespaced.lean/declarations/endpointdifferenceself.md) | 69 | `declaration-track:518ad38f04eacd5bbb93591a4350264744cc6080f2b19691f535e2dead52bfd2` |
| 4 | `def` | [endpointDifferenceComposition](../../../../CommutativeAlgebra/IntervalCorpusNamespaced.lean/declarations/endpointdifferencecomposition.md) | 88 | `declaration-track:cc71120221da5c5d8e02bb2830736d5a6a620df4c66fc3ae032374a4b3655b0f` |
| 5 | `def` | [genuineIntervalIntegral](../../../../CommutativeAlgebra/IntervalCorpusNamespaced.lean/declarations/genuineintervalintegral.md) | 107 | `declaration-track:e2076b4a257df053e6948580e5f485c5645c19c04543e5b82cefec3092ab4199` |
| 6 | `def` | [links](../../../../CommutativeAlgebra/IntervalCorpusNamespaced.lean/declarations/links.md) | 126 | `declaration-track:6d519fdfada057d3cbce13678acd93e2207dd6d3e3475e916283793d842269cd` |
| 7 | `theorem` | [links_length](../../../../CommutativeAlgebra/IntervalCorpusNamespaced.lean/declarations/links-length.md) | 133 | `result-track:9248f048822851ac53b8e71439c3069f2afdb74dbc399716aef4f07e96cf7c9a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cec9080393f78c40a63b750b223554d6f2cc7d23915f2a190b28f40a651cbb6c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/IntervalCorpus/Varianta48320f68e44149fde772098e5a0d6ebdd9d315f5cc2ab26e63a4f8e19edd3d4.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/IntervalCorpus/Varianta48320f68e44149fde772098e5a0d6ebdd9d315f5cc2ab26e63a4f8e19edd3d4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
