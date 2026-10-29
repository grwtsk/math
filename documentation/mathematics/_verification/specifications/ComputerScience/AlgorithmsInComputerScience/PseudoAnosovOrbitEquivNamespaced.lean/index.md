# Verification target: Pseudo Anosov Orbit Equiv Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ef30cd8c64a9a3a1cafc7804d185778248bd3bd",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PseudoAnosovOrbitEquiv/Variant4e91560ddb287018254c8d274a0023b48eeff2e696570feb605e2f0fe9ccab9f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/PseudoAnosovOrbitEquivNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/PseudoAnosovOrbitEquivNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ef30cd8c64a9a3a1cafc7804d185778248bd3bd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PseudoAnosovOrbitEquiv/Variant4e91560ddb287018254c8d274a0023b48eeff2e696570feb605e2f0fe9ccab9f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PseudoAnosovOrbitEquiv/Variant4e91560ddb287018254c8d274a0023b48eeff2e696570feb605e2f0fe9ccab9f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.ResearchSurvey.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Context](../../../../../ComputerScience/AlgorithmsInComputerScience/PseudoAnosovOrbitEquivNamespaced.lean/declarations/context.md) | 25 | `declaration-track:cb1c67a75caec3d31201fa960fde4983499929ab317a7e5d35a692a5d42f7100` |
| 2 | `inductive` | [Atom](../../../../../ComputerScience/AlgorithmsInComputerScience/PseudoAnosovOrbitEquivNamespaced.lean/declarations/atom.md) | 49 | `declaration-track:db8273bfcc3f59a4167d209847c8e90549405d5243407bcbe2022cab37879c93` |
| 3 | `def` | [Atom.id](../../../../../ComputerScience/AlgorithmsInComputerScience/PseudoAnosovOrbitEquivNamespaced.lean/declarations/atom-id.md) | 61 | `declaration-track:5615b66972f7a363981a58319e87442701f52fb0de8c058c6eca8c79d0d9e6f8` |
| 4 | `def` | [Atom.kind](../../../../../ComputerScience/AlgorithmsInComputerScience/PseudoAnosovOrbitEquivNamespaced.lean/declarations/atom-kind.md) | 72 | `declaration-track:7ac76f2fb63eeb56231a0f831841f8c157b8422fcdcddcec0163440e6d74d09b` |
| 5 | `def` | [Atom.blocks](../../../../../ComputerScience/AlgorithmsInComputerScience/PseudoAnosovOrbitEquivNamespaced.lean/declarations/atom-blocks.md) | 83 | `declaration-track:f7182115c04117bc5791949f80585c09c479a8b3ea9c4d588248461b1454c40f` |
| 6 | `def` | [Atom.clearsBy](../../../../../ComputerScience/AlgorithmsInComputerScience/PseudoAnosovOrbitEquivNamespaced.lean/declarations/atom-clearsby.md) | 103 | `declaration-track:3b56f6c2f523c41667bf48970912ba959b6a581cb1a63d3ac5fd1367e93e2df5` |
| 7 | `def` | [atomResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/PseudoAnosovOrbitEquivNamespaced.lean/declarations/atomresidue.md) | 123 | `declaration-track:b1a0c7df18a1c7f5ec0723f71669d4b2039b10de48591f5856cdd43a9c10ad94` |
| 8 | `def` | [finalClaim](../../../../../ComputerScience/AlgorithmsInComputerScience/PseudoAnosovOrbitEquivNamespaced.lean/declarations/finalclaim.md) | 130 | `declaration-track:21a23161f748b14de514f544bebf6172bc225fb6657d52ed1f832509ee5df094` |
| 9 | `def` | [finalResidues](../../../../../ComputerScience/AlgorithmsInComputerScience/PseudoAnosovOrbitEquivNamespaced.lean/declarations/finalresidues.md) | 156 | `declaration-track:19d5a1b4157616928a1560063e6d56ad86cdf27db8ef3ca8fea84250f39f603c` |
| 10 | `def` | [finalWitness](../../../../../ComputerScience/AlgorithmsInComputerScience/PseudoAnosovOrbitEquivNamespaced.lean/declarations/finalwitness.md) | 168 | `declaration-track:7a83a2115d843e89b326493729ec280b0b47c11a7fd65a3a1dda262ee268a35b` |
| 11 | `theorem` | [finalWitness_hasResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/PseudoAnosovOrbitEquivNamespaced.lean/declarations/finalwitness-hasresidue.md) | 171 | `result-track:ffe61ff2c31b275d2516791b00c4142209870bd0151b5191fdc4946f3a276830` |
| 12 | `theorem` | [finalResidue_count](../../../../../ComputerScience/AlgorithmsInComputerScience/PseudoAnosovOrbitEquivNamespaced.lean/declarations/finalresidue-count.md) | 175 | `result-track:28799fa94cbe909123b68ffbdfa2c48f28a435600b579f03c3e3c050631e661e` |
| 13 | `def` | [surveyTarget](../../../../../ComputerScience/AlgorithmsInComputerScience/PseudoAnosovOrbitEquivNamespaced.lean/declarations/surveytarget.md) | 179 | `declaration-track:d82eb247e4edcc01cad9c3b79e6898db8bdb7b5b4d202b40e03ea3e3afd64190` |
| 14 | `theorem` | [surveyTarget_checked_hasResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/PseudoAnosovOrbitEquivNamespaced.lean/declarations/surveytarget-checked-hasresidue.md) | 186 | `result-track:9aa0040d715dd7fa6f1720000b77d193ad907f9167d9b505cd1f366cd55cd87f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6d3bf3d92ca1dcbd962afe4530cde8cfacd7d7a8540db7f8df4221408881f9da -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PseudoAnosovOrbitEquiv/Variant4e91560ddb287018254c8d274a0023b48eeff2e696570feb605e2f0fe9ccab9f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PseudoAnosovOrbitEquiv/Variant4e91560ddb287018254c8d274a0023b48eeff2e696570feb605e2f0fe9ccab9f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
