# Verification target: GRWTSK.Topology.GeneralTopology.ULift.Variant944957a44ed4c76504ce9be13df21d4297aed94fc6166c070839a4a00854e3cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ff68353edc80a641ccade7acb839f4b942446bb",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ULift/Variant944957a44ed4c76504ce9be13df21d4297aed94fc6166c070839a4a00854e3cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ULift/Variant944957a44ed4c76504ce9be13df21d4297aed94fc6166c070839a4a00854e3cc.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ULift/Variant944957a44ed4c76504ce9be13df21d4297aed94fc6166c070839a4a00854e3cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ff68353edc80a641ccade7acb839f4b942446bb`.

Source path: `GRWTSK/Topology/GeneralTopology/ULift/Variant944957a44ed4c76504ce9be13df21d4297aed94fc6166c070839a4a00854e3cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ULift/Variant944957a44ed4c76504ce9be13df21d4297aed94fc6166c070839a4a00854e3cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [uliftFunctor](../../../../../mathematics/Topology/GeneralTopology/ULift/Variant944957a44ed4c76504ce9be13df21d4297aed94fc6166c070839a4a00854e3cc.lean/declarations/uliftfunctor--c6b92173bd6dd1a0c3abcfbc.md) | 33 | `declaration-track:c6b92173bd6dd1a0c3abcfbcbd217646df6b5826e1fe10e6d1e318b72918749c` |
| 2 | `def` | [uliftFunctorObjHomeo](../../../../../mathematics/Topology/GeneralTopology/ULift/Variant944957a44ed4c76504ce9be13df21d4297aed94fc6166c070839a4a00854e3cc.lean/declarations/uliftfunctorobjhomeo--e87d2a39d5fc61af43343632.md) | 38 | `declaration-track:e87d2a39d5fc61af4334363295b1a4e18da7d426b06f3d55d286f12214e8ad7d` |
| 3 | `lemma` | [uliftFunctorObjHomeo_naturality_apply](../../../../../mathematics/Topology/GeneralTopology/ULift/Variant944957a44ed4c76504ce9be13df21d4297aed94fc6166c070839a4a00854e3cc.lean/declarations/uliftfunctorobjhomeo-naturality-apply--394e31aca59431a8c1a142c5.md) | 42 | `result-track:394e31aca59431a8c1a142c57d4e1073c1427564044ad9c409f29187ee02dc90` |
| 4 | `lemma` | [uliftFunctorObjHomeo_symm_naturality_apply](../../../../../mathematics/Topology/GeneralTopology/ULift/Variant944957a44ed4c76504ce9be13df21d4297aed94fc6166c070839a4a00854e3cc.lean/declarations/uliftfunctorobjhomeo-symm-naturality-apply--36367001cd6930fc1194f86b.md) | 47 | `result-track:36367001cd6930fc1194f86beaa0f0f9d8845623cfba399f0fc2b4a118a82715` |
| 5 | `def` | [uliftFunctorCompForgetIso](../../../../../mathematics/Topology/GeneralTopology/ULift/Variant944957a44ed4c76504ce9be13df21d4297aed94fc6166c070839a4a00854e3cc.lean/declarations/uliftfunctorcompforgetiso--4cbb0614a39443d4bb76b1fa.md) | 56 | `declaration-track:4cbb0614a39443d4bb76b1fae9a1e8a085266017cd4f2dcb6d181406fff4d8bd` |
| 6 | `def` | [uliftFunctorFullyFaithful](../../../../../mathematics/Topology/GeneralTopology/ULift/Variant944957a44ed4c76504ce9be13df21d4297aed94fc6166c070839a4a00854e3cc.lean/declarations/uliftfunctorfullyfaithful--59e22fdffda0b600ab423d7e.md) | 61 | `declaration-track:59e22fdffda0b600ab423d7ef603109d8aa49b44a8269fdf10f96062939a1c91` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ULift/Variant944957a44ed4c76504ce9be13df21d4297aed94fc6166c070839a4a00854e3cc.lean/declarations/instance--bc73ea21ba5e3886be7ecc84.md) | 64 | `declaration-track:bc73ea21ba5e3886be7ecc84f1c90a80dd5f94953b670332e57f61ba0a27d911` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ULift/Variant944957a44ed4c76504ce9be13df21d4297aed94fc6166c070839a4a00854e3cc.lean/declarations/instance--75126b823efd5253f9831ea7.md) | 67 | `declaration-track:75126b823efd5253f9831ea71cd93fca859986c8078ed0e267046f5631858137` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ULift/Variant944957a44ed4c76504ce9be13df21d4297aed94fc6166c070839a4a00854e3cc.lean/declarations/instance--65b05fcfd41f5c5159fbc09a.md) | 73 | `declaration-track:65b05fcfd41f5c5159fbc09aa4e67464cc15211a4c679bdb22b4062896c60afa` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ULift/Variant944957a44ed4c76504ce9be13df21d4297aed94fc6166c070839a4a00854e3cc.lean/declarations/instance--5243af374d63c5fcdaf41e01.md) | 91 | `declaration-track:5243af374d63c5fcdaf41e013d257cf146baf5f4a66512ee01a949eb81e93d05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
