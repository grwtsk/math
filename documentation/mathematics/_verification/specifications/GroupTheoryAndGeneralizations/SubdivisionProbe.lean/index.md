# Verification target: Subdivision Probe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36fe948c3f4a8beea342bed31a12ca31786f68b6",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SubdivisionProbe/Variantc4ef4c74e4e9b44cc8d3bd3cc6f26ea3f34bab1dc68a46f91385304fd439d370.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/SubdivisionProbe.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/SubdivisionProbe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36fe948c3f4a8beea342bed31a12ca31786f68b6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SubdivisionProbe/Variantc4ef4c74e4e9b44cc8d3bd3cc6f26ea3f34bab1dc68a46f91385304fd439d370.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SubdivisionProbe/Variantc4ef4c74e4e9b44cc8d3bd3cc6f26ea3f34bab1dc68a46f91385304fd439d370.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ControlRow](../../../../GroupTheoryAndGeneralizations/SubdivisionProbe.lean/declarations/controlrow.md) | 36 | `declaration-track:15123adb44131b071ac178e3fd64c4767c0c11cafe271a1a8ac87311d68d1d1b` |
| 2 | `abbrev` | [HomogeneousPoint](../../../../GroupTheoryAndGeneralizations/SubdivisionProbe.lean/declarations/homogeneouspoint.md) | 39 | `declaration-track:9cc1d82549eed3a1d1d322d0cc76f4978fce28c8863e77c705c44e64509f2a2b` |
| 3 | `abbrev` | [HomogeneousControlRow](../../../../GroupTheoryAndGeneralizations/SubdivisionProbe.lean/declarations/homogeneouscontrolrow.md) | 44 | `declaration-track:304d159bc1564334c7803ec5df577df53e601853dcf261d9cf47f892d39d03a5` |
| 4 | `def` | [step](../../../../GroupTheoryAndGeneralizations/SubdivisionProbe.lean/declarations/step.md) | 48 | `declaration-track:37cd0ddd489611d2e76e4e791c05ae9ed09bf0aeadb7f62fa16c6fc499a6d929` |
| 5 | `def` | [eval](../../../../GroupTheoryAndGeneralizations/SubdivisionProbe.lean/declarations/eval.md) | 52 | `declaration-track:f0c46fec27814ce2f52a0957b941c8f8fc6df1856bf42fc3bf17a823286ccb45` |
| 6 | `def` | [rowCombo](../../../../GroupTheoryAndGeneralizations/SubdivisionProbe.lean/declarations/rowcombo.md) | 57 | `declaration-track:fd7feda44f8454957ed03573e5ae2776a088565976f3acbc47751ce5df0ae9b5` |
| 7 | `lemma` | [step_rowCombo](../../../../GroupTheoryAndGeneralizations/SubdivisionProbe.lean/declarations/step-rowcombo.md) | 60 | `result-track:07f1b1d61a1f9129bbc0283fb80e35e19e1ecbdff2990359a083efc94462f4d7` |
| 8 | `lemma` | [eval_rowCombo](../../../../GroupTheoryAndGeneralizations/SubdivisionProbe.lean/declarations/eval-rowcombo.md) | 66 | `result-track:80e809468e344ad22ae5f57108a2cbaebdf5425355622b9bab2f3e69aa492927` |
| 9 | `lemma` | [step_eq_rowCombo_self_step](../../../../GroupTheoryAndGeneralizations/SubdivisionProbe.lean/declarations/step-eq-rowcombo-self-step.md) | 75 | `result-track:d0a864ba02b9addc4bd20e87af510f5ce630910f0d251726b3601357945d276f` |
| 10 | `def` | [splitLeft](../../../../GroupTheoryAndGeneralizations/SubdivisionProbe.lean/declarations/splitleft.md) | 83 | `declaration-track:d0cc6eb9ea3123a7d0827aa35358f4a0f36900b5fc390bcc021987591c1dea71` |
| 11 | `lemma` | [step_splitLeft](../../../../GroupTheoryAndGeneralizations/SubdivisionProbe.lean/declarations/step-splitleft.md) | 86 | `result-track:8baba0452f8bb1841ae76ff2e5c239042a5896911f4b4990b5b3c45a15edc9e8` |
| 12 | `theorem` | [eval_split_left_mul](../../../../GroupTheoryAndGeneralizations/SubdivisionProbe.lean/declarations/eval-split-left-mul.md) | 96 | `result-track:5bb732cf330ef2cddff81a92ca696507b40bc6be5a55088671ce9d1cd7a6d726` |
| 13 | `theorem` | [eval_split_left](../../../../GroupTheoryAndGeneralizations/SubdivisionProbe.lean/declarations/eval-split-left.md) | 106 | `result-track:be3d23333e2c7b09b8cdc1f3fb61b0d09087bf354cb975c65a95ddbd2b93f31a` |
| 14 | `lemma` | [eval_congr_prefix](../../../../GroupTheoryAndGeneralizations/SubdivisionProbe.lean/declarations/eval-congr-prefix.md) | 111 | `result-track:fd72b24d2805f61e6a9037910419e04b6957a2b3f13f844e01479405340d94e6` |
| 15 | `def` | [splitRight](../../../../GroupTheoryAndGeneralizations/SubdivisionProbe.lean/declarations/splitright.md) | 125 | `declaration-track:db3daf31da54d9209f42ac6c2203aa69212fd6feddbf7a7e0f4e83fc8f7e5b40` |
| 16 | `lemma` | [step_splitRight_prefix](../../../../GroupTheoryAndGeneralizations/SubdivisionProbe.lean/declarations/step-splitright-prefix.md) | 128 | `result-track:8cc08e2472d5321aa4ac2cb9218a0b83bfd69fc3a6f6fa6dbc8a2f095206f9d8` |
| 17 | `theorem` | [eval_split_right](../../../../GroupTheoryAndGeneralizations/SubdivisionProbe.lean/declarations/eval-split-right.md) | 148 | `result-track:ce5405a40083dc5ecbffc83c78f0cc2de0e5079b05ac52393cde15e8a110579e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=44e2b7678c3adba2e5458892f879f5e3fa0f3cbe8099202f355dff411aecef39 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SubdivisionProbe/Variantc4ef4c74e4e9b44cc8d3bd3cc6f26ea3f34bab1dc68a46f91385304fd439d370.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SubdivisionProbe/Variantc4ef4c74e4e9b44cc8d3bd3cc6f26ea3f34bab1dc68a46f91385304fd439d370.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
