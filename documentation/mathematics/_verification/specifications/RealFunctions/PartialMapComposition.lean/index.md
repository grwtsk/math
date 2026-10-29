# Verification target: GRWTSK.Analysis.ErrorBounds.PartialMapComposition

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea337082650adaf7beae43ae8e04413979be4a07",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/PartialMapComposition.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/PartialMapComposition.lean/index.md) · [Full source](../../../../RealFunctions/PartialMapComposition.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea337082650adaf7beae43ae8e04413979be4a07`.

Source path: `GRWTSK/Analysis/ErrorBounds/PartialMapComposition.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/PartialMapComposition.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Function` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Unbundled.Abs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [EndpointIdentity](../../../../RealFunctions/PartialMapComposition.lean/declarations/endpointidentity.md) | 36 | `declaration-track:2e11371926c98182cae79334ecabe9a2c3635bf132ce1e4ecba95f08aa60ec2a` |
| 2 | `structure` | [FrameAddress](../../../../RealFunctions/PartialMapComposition.lean/declarations/frameaddress.md) | 42 | `declaration-track:c84af51bae5a58d0e197ec917c7be132f2b63fc1fe7c0f95cbcd87e6f59f0509` |
| 3 | `structure` | [FiberEndpoint](../../../../RealFunctions/PartialMapComposition.lean/declarations/fiberendpoint.md) | 50 | `declaration-track:39043df9ef40a7971f104f3cf44c541f4122b2bb6f89dca6ba497310a130a0d4` |
| 4 | `structure` | [FramedPort](../../../../RealFunctions/PartialMapComposition.lean/declarations/framedport.md) | 58 | `declaration-track:5a1b7d93cb7af741896eda339160847502a28bf6974f4c93778b1c07de59cd2c` |
| 5 | `theorem` | [defect_bound](../../../../RealFunctions/PartialMapComposition.lean/declarations/defect-bound.md) | 75 | `result-track:50c2cc5aa60735ed11b5c2574753db3d860eb6d6fb7ea5d38138247caf994003` |
| 6 | `def` | [comp](../../../../RealFunctions/PartialMapComposition.lean/declarations/comp.md) | 82 | `declaration-track:a3df9077c263a426902eafc1005e1463c11bc66d877081daf9c7b7d0ad9b209c` |
| 7 | `theorem` | [mem_comp_domain](../../../../RealFunctions/PartialMapComposition.lean/declarations/mem-comp-domain.md) | 100 | `result-track:033ed54a00fe0a6590e631ceb736ec520a0dde41044da4e15403b52b2b3a1700` |
| 8 | `theorem` | [comp_map](../../../../RealFunctions/PartialMapComposition.lean/declarations/comp-map.md) | 104 | `result-track:2f78c84493282d8ef066fe6ddb83da27dcccad22f5a03fe8d4a7e5556f0f2300` |
| 9 | `theorem` | [comp_residual](../../../../RealFunctions/PartialMapComposition.lean/declarations/comp-residual.md) | 109 | `result-track:0638d7194739ee7d9119705b1a89755cbd32c1e2621cc69d408a3e4106b203cf` |
| 10 | `theorem` | [comp_errorBudget](../../../../RealFunctions/PartialMapComposition.lean/declarations/comp-errorbudget.md) | 114 | `result-track:89f76927d11ff0ed36987b5756308c84ac26680f8d9273b5f9c6dbb0a8c9a142` |
| 11 | `theorem` | [composition_observation](../../../../RealFunctions/PartialMapComposition.lean/declarations/composition-observation.md) | 118 | `result-track:b86c0f484d715bbd0383665efc0b5047e7a514efc95c5ab866d41f527dfbc7bc` |
| 12 | `theorem` | [comp_defect_bound](../../../../RealFunctions/PartialMapComposition.lean/declarations/comp-defect-bound.md) | 127 | `result-track:200319d7b3551fbd46c4711faed3af2b5d0b0aeb9241b54921e89bd91d5544df` |
| 13 | `def` | [identity](../../../../RealFunctions/PartialMapComposition.lean/declarations/identity.md) | 134 | `declaration-track:5a5e1fe5a4d8ca61d347659e3cda5e6babf40155e4a36652cb991f94ab19e466` |
| 14 | `theorem` | [identity_domain](../../../../RealFunctions/PartialMapComposition.lean/declarations/identity-domain.md) | 146 | `result-track:155f10a1de3d6aeea8ccd5e8c59e8ee9214a74baf5a8f02f63b491193a1d52bb` |
| 15 | `theorem` | [identity_map](../../../../RealFunctions/PartialMapComposition.lean/declarations/identity-map.md) | 150 | `result-track:4bac63318c88d267e00be4f2e1de79dec939fc494fcc6a2a37bc90a540c24723` |
| 16 | `theorem` | [identity_residual](../../../../RealFunctions/PartialMapComposition.lean/declarations/identity-residual.md) | 154 | `result-track:dd7b825143232d967f08ed092cdc381ddfefa3daba2209142d8ff20b92b43d9d` |
| 17 | `theorem` | [identity_errorBudget](../../../../RealFunctions/PartialMapComposition.lean/declarations/identity-errorbudget.md) | 158 | `result-track:94db341306549a89f72fe532ae80101cf3cdf64ba235970f75ce9a5bf07d4690` |
| 18 | `theorem` | [comp_identity_domain](../../../../RealFunctions/PartialMapComposition.lean/declarations/comp-identity-domain.md) | 162 | `result-track:665f56ad5d1c0795f32d5b6a3e02896294ffac4ec20ce1b2e6bd1d8f7b3c9b62` |
| 19 | `theorem` | [identity_comp_domain](../../../../RealFunctions/PartialMapComposition.lean/declarations/identity-comp-domain.md) | 168 | `result-track:64bcebf3c7915273021252178de8df1cec9292956245b1c6d2c7cd045eaa2cbf` |
| 20 | `theorem` | [comp_identity_map](../../../../RealFunctions/PartialMapComposition.lean/declarations/comp-identity-map.md) | 174 | `result-track:425adfa4b7d77fae76c1137bba7e3a6891d093090110c3b7cf0fe5c729afe5a7` |
| 21 | `theorem` | [identity_comp_map](../../../../RealFunctions/PartialMapComposition.lean/declarations/identity-comp-map.md) | 178 | `result-track:01306b24c3450bafed5f110527209873a7a5ddab7b5398afa2cca2ebfbf98f97` |
| 22 | `theorem` | [comp_identity_residual](../../../../RealFunctions/PartialMapComposition.lean/declarations/comp-identity-residual.md) | 182 | `result-track:efb7f2cd4a64ddff4580f6900bfd78070034873ae03f06d7821e7b2250e03bcf` |
| 23 | `theorem` | [identity_comp_residual](../../../../RealFunctions/PartialMapComposition.lean/declarations/identity-comp-residual.md) | 187 | `result-track:6a5d89825cb1b246b66d00af7d810a7426c759e59555836a6bffba74c25586e2` |
| 24 | `theorem` | [comp_identity_errorBudget](../../../../RealFunctions/PartialMapComposition.lean/declarations/comp-identity-errorbudget.md) | 192 | `result-track:ea2e4c019e0bab077637ea22a8f6289e2ed176a28ec81ae93b95292878f558b2` |
| 25 | `theorem` | [identity_comp_errorBudget](../../../../RealFunctions/PartialMapComposition.lean/declarations/identity-comp-errorbudget.md) | 197 | `result-track:ced073f5c92553861e1fa28c527a2c74ea37c0e96452d667d5bbb1921fae14f1` |
| 26 | `theorem` | [comp_domain_assoc](../../../../RealFunctions/PartialMapComposition.lean/declarations/comp-domain-assoc.md) | 201 | `result-track:bec064345037a59fce1405051666978ae3dc3a09133a1eeb0485e7341ac3f052` |
| 27 | `theorem` | [comp_map_assoc](../../../../RealFunctions/PartialMapComposition.lean/declarations/comp-map-assoc.md) | 207 | `result-track:3548e12f60b85f4bc98d7492dcddbf972a6abf34f111cc3b3c8ddb21b0d1fe8b` |
| 28 | `theorem` | [comp_residual_assoc](../../../../RealFunctions/PartialMapComposition.lean/declarations/comp-residual-assoc.md) | 211 | `result-track:6167b03405dbd5538e95cd6d1c68befa364fd5c5b289d1b23dbd42267a4a8b46` |
| 29 | `theorem` | [comp_errorBudget_assoc](../../../../RealFunctions/PartialMapComposition.lean/declarations/comp-errorbudget-assoc.md) | 216 | `result-track:7ab01dbb3f933c3ea80eb59166aa52af55c511e02916be68af7ee39d40130787` |
| 30 | `theorem` | [observe_eq_of_zero_residual](../../../../RealFunctions/PartialMapComposition.lean/declarations/observe-eq-of-zero-residual.md) | 222 | `result-track:f5b249e65174148148a118cded135529ff9825e6d98d5c886011a85ba199090d` |
| 31 | `theorem` | [residual_eq_zero_of_zero_budget](../../../../RealFunctions/PartialMapComposition.lean/declarations/residual-eq-zero-of-zero-budget.md) | 230 | `result-track:5c4c0bd2390fd6b04897ec04655a560113f77df6596cb515c724e9841efa484e` |
| 32 | `theorem` | [observe_eq_of_zero_budget](../../../../RealFunctions/PartialMapComposition.lean/declarations/observe-eq-of-zero-budget.md) | 239 | `result-track:3271e4827312b26dbe30c8d3abb00cb7da79c55cf9edfbc3cb10ce90f53d41f8` |
| 33 | `structure` | [InvertibleFrameChange](../../../../RealFunctions/PartialMapComposition.lean/declarations/invertibleframechange.md) | 248 | `declaration-track:41bdc62d341922febeb86ea435bf5a0300ae87d9e6f4dcf9eb60e11e16281d2b` |
| 34 | `def` | [toPort](../../../../RealFunctions/PartialMapComposition.lean/declarations/toport.md) | 258 | `declaration-track:1d191b4b9be478a9f34f364915223a8be6b2b3236e63ca0684ced17ff1ed61e2` |
| 35 | `theorem` | [reconstruct](../../../../RealFunctions/PartialMapComposition.lean/declarations/reconstruct.md) | 269 | `result-track:1bb35a8027b2fb882e0fde5f0fb019d6462f797bf2343010ea833c0ec9f33afa` |
| 36 | `structure` | [RankLosingReduction](../../../../RealFunctions/PartialMapComposition.lean/declarations/ranklosingreduction.md) | 277 | `declaration-track:e69a2d0de257c10e620d4ca524a9ad738bc5398f096f185e84d070d6835e49a2` |
| 37 | `def` | [packet](../../../../RealFunctions/PartialMapComposition.lean/declarations/packet.md) | 290 | `declaration-track:0a4a2909a862e8829c689448f25585818ab24a9cee2c05852e21174041d67399` |
| 38 | `theorem` | [reconstruct_packet_exact](../../../../RealFunctions/PartialMapComposition.lean/declarations/reconstruct-packet-exact.md) | 293 | `result-track:6ca85163572be1d9c296c678487bfea34b83f48993d010ac99be2a02b3d23389` |
| 39 | `theorem` | [packet_injective](../../../../RealFunctions/PartialMapComposition.lean/declarations/packet-injective.md) | 299 | `result-track:254eae999d8e8a9da1dcf6a68a95f6d8187b24d5bdc10a77e3d5a42bae49cc25` |
| 40 | `theorem` | [reduce_not_injective](../../../../RealFunctions/PartialMapComposition.lean/declarations/reduce-not-injective.md) | 305 | `result-track:e9a78c8069a2f675bf45c80a9e5d8f4ef521a20c1d2bbf481dab6a7c51d4f830` |
| 41 | `theorem` | [recover_source_observe](../../../../RealFunctions/PartialMapComposition.lean/declarations/recover-source-observe.md) | 313 | `result-track:2fbee8a9b8c543dd04b6e65cfe380ea769012139697de060aedbdf22eb748f6e` |
| 42 | `structure` | [PortGram](../../../../RealFunctions/PartialMapComposition.lean/declarations/portgram.md) | 321 | `declaration-track:87fa19175f2984db103c3bffeeae0f23e447de0207679bf4ae1c7dd3d8f6cde0` |
| 43 | `def` | [GramTransport](../../../../RealFunctions/PartialMapComposition.lean/declarations/gramtransport.md) | 327 | `declaration-track:d56391f13680ac24a23365b0062e1b4ed2d1ba4eb212443feed36a51e3286992` |
| 44 | `def` | [SignedFormTransport](../../../../RealFunctions/PartialMapComposition.lean/declarations/signedformtransport.md) | 334 | `declaration-track:c71d5fbbc0144dcc87bc10e69310c5ebe5f4d286b7bb12f67be5f5510e8d35b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5654012bdf0336c7c1a8685b4ff1ee3bca8825438de1656e96aa02d04b126ae2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ErrorBounds/PartialMapComposition.lean","GRWTSK/_verification/specifications/Analysis/ErrorBounds/PartialMapComposition.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
