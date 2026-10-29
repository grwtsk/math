# Verification target: Behavioral Equivalence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1eca0b6ec7b456443ad355f095c666db294d2a00",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BehavioralEquivalence/Variant73b9ff3f30809a343b73f484e134309aa568e143b35e9eeffb1e239100a6666b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/BehavioralEquivalence.lean/index.md) · [Full source](../../../../Combinatorics/BehavioralEquivalence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1eca0b6ec7b456443ad355f095c666db294d2a00`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BehavioralEquivalence/Variant73b9ff3f30809a343b73f484e134309aa568e143b35e9eeffb1e239100a6666b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BehavioralEquivalence/Variant73b9ff3f30809a343b73f484e134309aa568e143b35e9eeffb1e239100a6666b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.MobiusOntology.RobustObservation` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuationProfile](../../../../Combinatorics/BehavioralEquivalence.lean/declarations/continuationprofile.md) | 15 | `declaration-track:1c7d0f16e5e859d62d4e000c6447e59556649eda606271b1faacc233e3156444` |
| 2 | `def` | [BehaviorallyEquivalent](../../../../Combinatorics/BehavioralEquivalence.lean/declarations/behaviorallyequivalent.md) | 20 | `declaration-track:7d348865719d24efa53e384a4e580ef37970113c37ab8b2b9267463254cb6d31` |
| 3 | `theorem` | [behaviorallyEquivalent_equivalence](../../../../Combinatorics/BehavioralEquivalence.lean/declarations/behaviorallyequivalent-equivalence.md) | 29 | `result-track:832285e30dfcd7193dc2bc60b21b162e85bbde406346e105142e36aa139904f2` |
| 4 | `def` | [behavioralSetoid](../../../../Combinatorics/BehavioralEquivalence.lean/declarations/behavioralsetoid.md) | 42 | `declaration-track:754b8edc8a91bebed1a234c1ce50cf28df794a9794ea4371626ee5c4eb8eae08` |
| 5 | `structure` | [BehaviorTransitionCongruence](../../../../Combinatorics/BehavioralEquivalence.lean/declarations/behaviortransitioncongruence.md) | 50 | `declaration-track:7969e95a64b9552067e3f2c227e14c6e51f4d1398591d1a036ade3d7d73eb0bb` |
| 6 | `structure` | [BehaviorTwistInvariance](../../../../Combinatorics/BehavioralEquivalence.lean/declarations/behaviortwistinvariance.md) | 63 | `declaration-track:3997d8015fb73d24c447970dc273dfbeffb61b5374c4003dcdb9696410198a6d` |
| 7 | `theorem` | [behavior_transition_congruence](../../../../Combinatorics/BehavioralEquivalence.lean/declarations/behavior-transition-congruence.md) | 73 | `result-track:df73742f6976c748887d37549ca8cf205fb55751048c439be1df76e80e090fcc` |
| 8 | `theorem` | [behavior_twist_invariant](../../../../Combinatorics/BehavioralEquivalence.lean/declarations/behavior-twist-invariant.md) | 88 | `result-track:3014e78d129fcdbf4be422ca527cfd02295d0315971e3a6591a6f1465ea8bb2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e4137fe25fcf93c731244eb73ccee67bffe4ae6914c51180c17d5c442db58b2b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/BehavioralEquivalence/Variant73b9ff3f30809a343b73f484e134309aa568e143b35e9eeffb1e239100a6666b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/BehavioralEquivalence/Variant73b9ff3f30809a343b73f484e134309aa568e143b35e9eeffb1e239100a6666b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
