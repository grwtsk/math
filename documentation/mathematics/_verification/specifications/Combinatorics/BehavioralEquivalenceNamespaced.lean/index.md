# Verification target: Behavioral Equivalence Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a28d4bed23d25733b5469e1aba56637b61f42877",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BehavioralEquivalence/Variantddfdb525aba7dfc773fd36d56107e0bc1337140ca470cc83cb802326b1807437.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/BehavioralEquivalenceNamespaced.lean/index.md) · [Full source](../../../../Combinatorics/BehavioralEquivalenceNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a28d4bed23d25733b5469e1aba56637b61f42877`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BehavioralEquivalence/Variantddfdb525aba7dfc773fd36d56107e0bc1337140ca470cc83cb802326b1807437.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BehavioralEquivalence/Variantddfdb525aba7dfc773fd36d56107e0bc1337140ca470cc83cb802326b1807437.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.MobiusOntology.RobustObservation` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuationProfile](../../../../Combinatorics/BehavioralEquivalenceNamespaced.lean/declarations/continuationprofile.md) | 23 | `declaration-track:58f447a05241323e1338cb7814f6a9c6775fef31990cbce11d1cacb23077e685` |
| 2 | `def` | [BehaviorallyEquivalent](../../../../Combinatorics/BehavioralEquivalenceNamespaced.lean/declarations/behaviorallyequivalent.md) | 28 | `declaration-track:8503c1ebd645a9261c7fc86f24a4ab6d2e8acaed97421db464565e4ac3410c4c` |
| 3 | `theorem` | [behaviorallyEquivalent_equivalence](../../../../Combinatorics/BehavioralEquivalenceNamespaced.lean/declarations/behaviorallyequivalent-equivalence.md) | 37 | `result-track:8563c6be113534e73222550e6a7ee1de66cbec292af5332deea2395afa782fab` |
| 4 | `def` | [behavioralSetoid](../../../../Combinatorics/BehavioralEquivalenceNamespaced.lean/declarations/behavioralsetoid.md) | 50 | `declaration-track:302aebad08e5c5dda6c2509edbcb27d3d71e9c0eb1f2286618e6e388e1912017` |
| 5 | `structure` | [BehaviorTransitionCongruence](../../../../Combinatorics/BehavioralEquivalenceNamespaced.lean/declarations/behaviortransitioncongruence.md) | 58 | `declaration-track:c03d8981fc8711c47fa75e7583b45fe9504d42d4ea49e793df22fc03d6bd923c` |
| 6 | `structure` | [BehaviorTwistInvariance](../../../../Combinatorics/BehavioralEquivalenceNamespaced.lean/declarations/behaviortwistinvariance.md) | 71 | `declaration-track:b40c6ca4f600e65f0ec682b3bebba9b1d96d9da552bcdba912e1442f7f78681d` |
| 7 | `theorem` | [behavior_transition_congruence](../../../../Combinatorics/BehavioralEquivalenceNamespaced.lean/declarations/behavior-transition-congruence.md) | 81 | `result-track:d691d3dec795165db03b1ccde2d8d85fbd8ca8b032cb705b2380e260600a2c6f` |
| 8 | `theorem` | [behavior_twist_invariant](../../../../Combinatorics/BehavioralEquivalenceNamespaced.lean/declarations/behavior-twist-invariant.md) | 96 | `result-track:a916068f12bd948ce314c6ee4ab242e9b1072a435ef6fca0ce6c353f3b7d9633` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e152256ad17e869064a8128f075c4d56252a49b3da022e5545726482de4547b7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/BehavioralEquivalence/Variantddfdb525aba7dfc773fd36d56107e0bc1337140ca470cc83cb802326b1807437.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/BehavioralEquivalence/Variantddfdb525aba7dfc773fd36d56107e0bc1337140ca470cc83cb802326b1807437.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
