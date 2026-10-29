# Verification target: Pattern Namespaced Public Proof Shape

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9248aa1a532aa71126bc285db833222db73dd0d4",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pattern/Varianta3c66c9e0408203831c58d2e93a4e42948126ec3173d4f19b3118ab54b13ee63.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/PatternNamespacedPublicProofShape.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/PatternNamespacedPublicProofShape.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9248aa1a532aa71126bc285db833222db73dd0d4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pattern/Varianta3c66c9e0408203831c58d2e93a4e42948126ec3173d4f19b3118ab54b13ee63.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pattern/Varianta3c66c9e0408203831c58d2e93a4e42948126ec3173d4f19b3118ab54b13ee63.lean.json)

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
| 1 | `inductive` | [ProofShape](../../../../../ComputerScience/AlgorithmsInComputerScience/PatternNamespacedPublicProofShape.lean/declarations/proofshape.md) | 22 | `declaration-track:881f523836945bfe088da087eb8c38aef93dbf26212b376a6d974d43b00eec4e` |
| 2 | `structure` | [PatternCard](../../../../../ComputerScience/AlgorithmsInComputerScience/PatternNamespacedPublicProofShape.lean/declarations/patterncard.md) | 36 | `declaration-track:860b267054b1dc0fed35816b812fa14989fc60edb8fa6b3cd3648ab8dddf3ee6` |
| 3 | `def` | [PatternCard.Valid](../../../../../ComputerScience/AlgorithmsInComputerScience/PatternNamespacedPublicProofShape.lean/declarations/patterncard-valid.md) | 60 | `declaration-track:b350a41329e85db8c78e30770c1d153dde3c117cb81e04afeeb29868015d23bf` |
| 4 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/PatternNamespacedPublicProofShape.lean/declarations/instance.md) | 69 | `declaration-track:e1bb667f5563bf02e6a54bbbc989a067216d7a7e01af2356756451ba03eeb9af` |
| 5 | `def` | [verifyPatternCard](../../../../../ComputerScience/AlgorithmsInComputerScience/PatternNamespacedPublicProofShape.lean/declarations/verifypatterncard.md) | 73 | `declaration-track:465c15016f927e51509eb49ec93ebb2f2a3bdce917aff2d2b0a8108a452610aa` |
| 6 | `theorem` | [verifyPatternCard_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/PatternNamespacedPublicProofShape.lean/declarations/verifypatterncard-sound.md) | 77 | `result-track:2985181d401a753d1512de0d4316db093908e5e8e4f2c15e9e6cfda251a4ae9f` |
| 7 | `structure` | [PatternRetrievalScore](../../../../../ComputerScience/AlgorithmsInComputerScience/PatternNamespacedPublicProofShape.lean/declarations/patternretrievalscore.md) | 83 | `declaration-track:eea67a9ea1d0d85df0c49faf6068cb2cf0c83e62f47e262cdfd3f3ce9827e409` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e8f4ef097ff66d7eec6f948bad7efe60e432bf0a190963495134ac092c4fa7da -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pattern/Varianta3c66c9e0408203831c58d2e93a4e42948126ec3173d4f19b3118ab54b13ee63.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pattern/Varianta3c66c9e0408203831c58d2e93a4e42948126ec3173d4f19b3118ab54b13ee63.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
