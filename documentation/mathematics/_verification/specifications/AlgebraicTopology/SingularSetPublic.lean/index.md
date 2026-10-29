# Verification target: Singular Set Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e9d0ee1332aa93ff5d2f412563d33ad90a7002b",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SingularSet/Variant1c563c89478a027b50e1d0999b270ee03eb9ee3a75716fa26ed300520c8289aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/SingularSetPublic.lean/index.md) · [Full source](../../../../AlgebraicTopology/SingularSetPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e9d0ee1332aa93ff5d2f412563d33ad90a7002b`.

Source path: `GRWTSK/Topology/GeneralTopology/SingularSet/Variant1c563c89478a027b50e1d0999b270ee03eb9ee3a75716fa26ed300520c8289aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SingularSet/Variant1c563c89478a027b50e1d0999b270ee03eb9ee3a75716fa26ed300520c8289aa.lean.json)

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
| 1 | `def` | [TopCat.toSSet](../../../../AlgebraicTopology/SingularSetPublic.lean/declarations/topcat-tosset.md) | 52 | `declaration-track:ef6883b3e9d9ed13ead65efa16c7644d8ffce9cd555dcbce88709a540324e310` |
| 2 | `def` | [TopCat.toSSetObjEquiv](../../../../AlgebraicTopology/SingularSetPublic.lean/declarations/topcat-tossetobjequiv.md) | 58 | `declaration-track:6cd292b424b09ab8bfd50dbb939fd08252877d01663b43b1b4250ef4230c3573` |
| 3 | `def` | [SSet.toTop](../../../../AlgebraicTopology/SingularSetPublic.lean/declarations/sset-totop.md) | 67 | `declaration-track:5eebe790d93228cd70143a45b341971aa764fc4ceb3cd3ef709af2fb4871910c` |
| 4 | `def` | [sSetTopAdj](../../../../AlgebraicTopology/SingularSetPublic.lean/declarations/ssettopadj.md) | 75 | `declaration-track:8e84a337175726a78520b2ea70105ab268a97b0e711584846fa1047815152de8` |
| 5 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SingularSetPublic.lean/declarations/instance.md) | 80 | `declaration-track:f01021205bcf0a0b1b5af0b8ec181df84fe056ecee4dc50ed2a1697e43b67929` |
| 6 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SingularSetPublic.lean/declarations/instance-source-edition-2.md) | 81 | `declaration-track:f21ed151cca4cf38b50349759f4826810206e90ef1a08246e05e893913bb3e60` |
| 7 | `def` | [SSet.toTopSimplex](../../../../AlgebraicTopology/SingularSetPublic.lean/declarations/sset-totopsimplex.md) | 85 | `declaration-track:f5c6c1966bb043d26cc5bec020890bb849934e3170e03c4f80c1b4b5ceca164e` |
| 8 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SingularSetPublic.lean/declarations/instance-source-edition-3.md) | 89 | `declaration-track:fad2d4dd5f2bc31140b227549314a67ac0de9583c87664552139ceb7161364bd` |
| 9 | `lemma` | [sSetTopAdj_unit_app_app_down](../../../../AlgebraicTopology/SingularSetPublic.lean/declarations/ssettopadj-unit-app-app-down.md) | 93 | `result-track:cc044b063530ba0c451a252101aa4249fa606dd310a26e0bd9eea9262026346c` |
| 10 | `def` | [TopCat.toSSetIsoConst](../../../../AlgebraicTopology/SingularSetPublic.lean/declarations/topcat-tossetisoconst.md) | 99 | `declaration-track:dee10e1a041f837a9681934b2c9b690aee2cc272d4341225dfa36ed11d645c07` |
| 11 | `def` | [SSet.stdSimplexToTop](../../../../AlgebraicTopology/SingularSetPublic.lean/declarations/sset-stdsimplextotop.md) | 109 | `declaration-track:363853df0e8f42c31c56d1c960dbce75684bb755d5f3063c121c8cca3e55f19d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0a4c6955c104eb310249694e8d4033e3f2650cd2d6eb424d91cc1d9de3b9c029 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/SingularSet/Variant1c563c89478a027b50e1d0999b270ee03eb9ee3a75716fa26ed300520c8289aa.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/SingularSet/Variant1c563c89478a027b50e1d0999b270ee03eb9ee3a75716fa26ed300520c8289aa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
