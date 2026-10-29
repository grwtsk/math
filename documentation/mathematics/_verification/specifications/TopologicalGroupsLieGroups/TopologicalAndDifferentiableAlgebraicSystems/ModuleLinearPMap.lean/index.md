# Verification target: Module Linear PMap

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c578e7d10f8c38dec235e6f3af75aebbbd030e50",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LinearPMap/Varianta1014fe8549cce7aefbf60540398d50a818dcaf83f935733772c17460bf9000d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMap.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMap.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c578e7d10f8c38dec235e6f3af75aebbbd030e50`.

Source path: `GRWTSK/Topology/GeneralTopology/LinearPMap/Varianta1014fe8549cce7aefbf60540398d50a818dcaf83f935733772c17460bf9000d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LinearPMap/Varianta1014fe8549cce7aefbf60540398d50a818dcaf83f935733772c17460bf9000d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.LinearPMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsClosed](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMap.lean/declarations/isclosed.md) | 57 | `declaration-track:38daf7ba2ae135cb5b66f93156ece980999b0142498f3117288b4e5df1e51983` |
| 2 | `def` | [IsClosable](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMap.lean/declarations/isclosable.md) | 64 | `declaration-track:a0a35645a673f88e691c5ea3a05cb77972aad7a123833ca6cffd56a6bb9ea804` |
| 3 | `theorem` | [IsClosed.isClosable](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMap.lean/declarations/isclosed-isclosable.md) | 68 | `result-track:6a3dfecb8cb566e19ac1b33a1c92658dcda94c291b1a800a83fd2ef3fb945f39` |
| 4 | `theorem` | [IsClosable.leIsClosable](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMap.lean/declarations/isclosable-leisclosable.md) | 72 | `result-track:a0f2eb0588a4fbe13878dc592a03089a67f744035011149157435491555a2172` |
| 5 | `theorem` | [IsClosable.existsUnique](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMap.lean/declarations/isclosable-existsunique.md) | 83 | `result-track:f228e82fb0739bbaf132ce626138f7a4370d7e29e504d727f796c0e986b52840` |
| 6 | `def` | [closure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMap.lean/declarations/closure.md) | 91 | `declaration-track:b33158febc11c4b728b396e8f43d15652eddf2128e5a48d09c7dc42783584733` |
| 7 | `theorem` | [closure_def](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMap.lean/declarations/closure-def-source-edition-2.md) | 94 | `result-track:fd75ad56973564f67f94c5abb82c51dda5a62e13bb1f18fa5a5fb52153a1d3c3` |
| 8 | `theorem` | [closure_def'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMap.lean/declarations/closure-def.md) | 97 | `result-track:de80291d7fba8325beee913307ce0ead2b420d100b4bfe79830aa3b9df6d3e9e` |
| 9 | `theorem` | [IsClosable.graph_closure_eq_closure_graph](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMap.lean/declarations/isclosable-graph-closure-eq-closure-graph.md) | 101 | `result-track:c26918fb2699138f1446672f6200c6dee0d95fd6105e87b140c827c3a7b5cf25` |
| 10 | `theorem` | [le_closure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMap.lean/declarations/le-closure.md) | 107 | `result-track:0c8d111f2a423c3bdd488e852b488dc23517ac92ad46c8592afde7b157d1535b` |
| 11 | `theorem` | [IsClosable.closure_mono](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMap.lean/declarations/isclosable-closure-mono.md) | 114 | `result-track:5bac45d67a783b527319c5e0f734c3ee3dc948ef3dd83927afca215a7cbcbde1` |
| 12 | `theorem` | [IsClosable.closure_isClosed](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMap.lean/declarations/isclosable-closure-isclosed.md) | 122 | `result-track:b100434a232307cd28b9643af693e22af6ff0786929e981c43a55fa167240524` |
| 13 | `theorem` | [IsClosable.closureIsClosable](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMap.lean/declarations/isclosable-closureisclosable.md) | 127 | `result-track:fe711503dc29866177cd495bef7cd656a83f46330a68817787f0fefe9fb10723` |
| 14 | `theorem` | [isClosable_iff_exists_closed_extension](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMap.lean/declarations/isclosable-iff-exists-closed-extension.md) | 130 | `result-track:26f665e07c1178f02e204dfc4a4c5f8623e69050e7e6f13d773ef384110b8cfb` |
| 15 | `structure` | [HasCore](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMap.lean/declarations/hascore.md) | 139 | `declaration-track:1c43fec2faf3c409abefd2b6f432c9c6361d9856457893b961773b52f0224abc` |
| 16 | `theorem` | [hasCore_def](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMap.lean/declarations/hascore-def.md) | 143 | `result-track:e7ca40c4a6f601072ebdc3013c647b5929da80d84a8e430108f0b1913aef3449` |
| 17 | `theorem` | [closureHasCore](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMap.lean/declarations/closurehascore.md) | 150 | `result-track:24cd2be63e4af62640f79318e0840c684de54c6d96a1bb0deda2e6384b2d5b96` |
| 18 | `theorem` | [closure_inverse_graph](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMap.lean/declarations/closure-inverse-graph.md) | 170 | `result-track:b356c3063118225ccd3ad101c486fb1083752d44a64662f397002058450027a5` |
| 19 | `theorem` | [inverse_isClosable_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMap.lean/declarations/inverse-isclosable-iff.md) | 187 | `result-track:c25bfb0340a913f0a75873b5d1a78bde1c8a1b6760457f689df0262de6f8c7c1` |
| 20 | `theorem` | [inverse_closure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMap.lean/declarations/inverse-closure.md) | 208 | `result-track:ec973659c5763962986e189a6eb06232ed20ea04453cd43610a73e2347cf9613` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a14e2db459626bb31bac229a2a6a9e8f80011726882d7fa3e229d2720adb10f3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LinearPMap/Varianta1014fe8549cce7aefbf60540398d50a818dcaf83f935733772c17460bf9000d.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/LinearPMap/Varianta1014fe8549cce7aefbf60540398d50a818dcaf83f935733772c17460bf9000d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
