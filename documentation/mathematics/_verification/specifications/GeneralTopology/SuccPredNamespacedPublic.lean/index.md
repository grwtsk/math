# Verification target: Succ Pred Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3d3a051d9455a3f25507254dc72644d911dc3c8",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SuccPred/Variant6d154ae05e7f472ee02bb654709250f188a4254720544ead6dc96146be6321e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SuccPredNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/SuccPredNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3d3a051d9455a3f25507254dc72644d911dc3c8`.

Source path: `GRWTSK/Topology/GeneralTopology/SuccPred/Variant6d154ae05e7f472ee02bb654709250f188a4254720544ead6dc96146be6321e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SuccPred/Variant6d154ae05e7f472ee02bb654709250f188a4254720544ead6dc96146be6321e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isOpen_singleton_of_not_isSuccPrelimit](../../../../GeneralTopology/SuccPredNamespacedPublic.lean/declarations/isopen-singleton-of-not-issuccprelimit.md) | 39 | `result-track:e706e0a5abff6f47e01827b763cafeae694226ecb96f0922925eb82749c37748` |
| 2 | `theorem` | [isOpen_singleton_iff](../../../../GeneralTopology/SuccPredNamespacedPublic.lean/declarations/isopen-singleton-iff.md) | 51 | `result-track:21521a0494c9b66b2c04b61ef6cd90e4a21271ac46e9c619b804cfafc0c241f2` |
| 3 | `theorem` | [nhds_eq_pure](../../../../GeneralTopology/SuccPredNamespacedPublic.lean/declarations/nhds-eq-pure.md) | 66 | `result-track:0a5c60e5ef8bb1e42256f8b33b4b4f08ab03fc86bc2c8dfdcca6e4d3a14f74a3` |
| 4 | `theorem` | [nhds_of_isMin](../../../../GeneralTopology/SuccPredNamespacedPublic.lean/declarations/nhds-of-ismin.md) | 70 | `result-track:b67b3e66f66c039522b68f7900467b2d3762b8757134c81438f662a9b16219d1` |
| 5 | `theorem` | [nhds_bot](../../../../GeneralTopology/SuccPredNamespacedPublic.lean/declarations/nhds-bot.md) | 75 | `result-track:2914efd04a10b5bdde6abe7f83be1046eb8f2acc0d89f928a41f2a2de832013a` |
| 6 | `theorem` | [isOpen_iff](../../../../GeneralTopology/SuccPredNamespacedPublic.lean/declarations/isopen-iff.md) | 79 | `result-track:9a84d2bfca9eb703b4e650bb89e7a0b33d304dbf4647145a69618c69c0390620` |
| 7 | `theorem` | [accPt_principal](../../../../GeneralTopology/SuccPredNamespacedPublic.lean/declarations/accpt-principal.md) | 88 | `result-track:b633f29f1f572503dec23d68ed8c535a3e97eaebc0479569efd532a2d94c46af` |
| 8 | `theorem` | [Succ Pred Namespaced Public](../../../../GeneralTopology/SuccPredNamespacedPublic.lean/declarations/root-grwtsk-topology-generaltopology-isopensingletonofnotissuccprelimit.md) | 98 | `result-track:8579033d865fea993ceb6c0c23d828cec5eb80f0f45986c3852cd5deea5f6374` |
| 9 | `theorem` | [Succ Pred Namespaced Public](../../../../GeneralTopology/SuccPredNamespacedPublic.lean/declarations/root-grwtsk-topology-generaltopology-isopensingletonofnotissuccprelimit-source-edition-2.md) | 102 | `result-track:e4d6bff38781170a13fb2d11fd9f468b887adf53b21005d27cbc76e63e4ba88e` |
| 10 | `theorem` | [isSuccLimit_of_mem_frontier](../../../../GeneralTopology/SuccPredNamespacedPublic.lean/declarations/issucclimit-of-mem-frontier.md) | 108 | `result-track:e089da71c7a614c2e79449b8214d0a6e9c1176f5d6cfe281fd2084ebe82fb175` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=79ca9c91a7c2e32ccccc36e63b24669ab71fae6eede3262c28f8a02170125136 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/SuccPred/Variant6d154ae05e7f472ee02bb654709250f188a4254720544ead6dc96146be6321e8.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/SuccPred/Variant6d154ae05e7f472ee02bb654709250f188a4254720544ead6dc96146be6321e8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
