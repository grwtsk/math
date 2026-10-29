# Verification target: Local Predicate Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "243541d6420c86b4346c81579a8f7eb0607c1cea",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocalPredicate/Variantbb29ff7184f85615a8e38691140b1f8603c8e17472d32d4192859386e5537183.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/LocalPredicatePublic.lean/index.md) · [Full source](../../../../GeneralTopology/LocalPredicatePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `243541d6420c86b4346c81579a8f7eb0607c1cea`.

Source path: `GRWTSK/Topology/GeneralTopology/LocalPredicate/Variantbb29ff7184f85615a8e38691140b1f8603c8e17472d32d4192859386e5537183.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocalPredicate/Variantbb29ff7184f85615a8e38691140b1f8603c8e17472d32d4192859386e5537183.lean.json)

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
| 1 | `structure` | [PrelocalPredicate](../../../../GeneralTopology/LocalPredicatePublic.lean/declarations/prelocalpredicate.md) | 64 | `declaration-track:045c689679917ee6459ce10dcdf918337a3b7959acfcea4c1f26b33b9952c4e9` |
| 2 | `def` | [continuousPrelocal](../../../../GeneralTopology/LocalPredicatePublic.lean/declarations/continuousprelocal.md) | 75 | `declaration-track:c6d481f513a67a2fee9b11b915f23dc3acca2705b7f669ecc0ec2901624ef3a3` |
| 3 | `instance` | [inhabitedPrelocalPredicate](../../../../GeneralTopology/LocalPredicatePublic.lean/declarations/inhabitedprelocalpredicate.md) | 80 | `declaration-track:6d47ebf3ffcad1fbf0d3e17bb2fbe8f8e2adc1f2e954599572a622d13928cd09` |
| 4 | `structure` | [LocalPredicate](../../../../GeneralTopology/LocalPredicatePublic.lean/declarations/localpredicate.md) | 95 | `declaration-track:62b87a87f983fd1143ed91fbda9c9d8fe1acda9d9aa631d2df36ea081c655824` |
| 5 | `def` | [continuousLocal](../../../../GeneralTopology/LocalPredicatePublic.lean/declarations/continuouslocal.md) | 106 | `declaration-track:dea857c6944bd338771d31c62420ce6a249909ad1772304e945696fdc9780fc9` |
| 6 | `instance` | [inhabitedLocalPredicate](../../../../GeneralTopology/LocalPredicatePublic.lean/declarations/inhabitedlocalpredicate.md) | 119 | `declaration-track:2577ffbc34b27e7df61574a71e3716af54052b532e3af40b4d6b3f1d065b30d9` |
| 7 | `def` | [PrelocalPredicate.and](../../../../GeneralTopology/LocalPredicatePublic.lean/declarations/prelocalpredicate-and.md) | 126 | `declaration-track:f0c06c62238d19a6120355d776f7b6e074f12eb61e608e35a4859865ba251298` |
| 8 | `def` | [LocalPredicate.and](../../../../GeneralTopology/LocalPredicatePublic.lean/declarations/localpredicate-and.md) | 131 | `declaration-track:579d8b278d47f142db2df916efc6f2e630f2e1bf02089e33ee7681ab08b10f10` |
| 9 | `def` | [isSection](../../../../GeneralTopology/LocalPredicatePublic.lean/declarations/issection.md) | 139 | `declaration-track:30ee6a2374ab98f8c8411df570d162ae7945b0c1dc65b501787e0b89aa427ffd` |
| 10 | `def` | [PrelocalPredicate.sheafify](../../../../GeneralTopology/LocalPredicatePublic.lean/declarations/prelocalpredicate-sheafify.md) | 147 | `declaration-track:f1d4a4ad6ce3881463e5afa1f46a9367cc2bdc30f9b689e7c0b3604513f6abc7` |
| 11 | `theorem` | [sheafifyOf](../../../../GeneralTopology/LocalPredicatePublic.lean/declarations/sheafifyof.md) | 162 | `result-track:72c9adbf1cba0394fc867ac0813235238e44f79ee7f0dd354ff690a8f944b6b3` |
| 12 | `theorem` | [sheafify_inductionOn](../../../../GeneralTopology/LocalPredicatePublic.lean/declarations/sheafify-inductionon.md) | 169 | `result-track:2a6314f751671ab168dc9fa677366759b91f0c502c7abbe8c35cf14ec576180a` |
| 13 | `theorem` | [sheafify_inductionOn'](../../../../GeneralTopology/LocalPredicatePublic.lean/declarations/sheafify-inductionon-source-edition-3.md) | 183 | `result-track:37154d2db688d684a0576734e9a4f1511aebdcf33d991bafb706afc2e9442951` |
| 14 | `theorem` | [sheafify_inductionOn₂](../../../../GeneralTopology/LocalPredicatePublic.lean/declarations/sheafify-inductionon-source-edition-4.md) | 194 | `result-track:c735560c0b1b203263c1be75cec4073d0bfc4fdaa3aae7576cf7284c647d2a6e` |
| 15 | `theorem` | [sheafify_inductionOn₂'](../../../../GeneralTopology/LocalPredicatePublic.lean/declarations/sheafify-inductionon-source-edition-2.md) | 212 | `result-track:3361ca2a5a873abcff364ff105d1e6e2befea956eaed95c4d608436ef6095822` |
| 16 | `def` | [subpresheafToTypes](../../../../GeneralTopology/LocalPredicatePublic.lean/declarations/subpresheaftotypes.md) | 228 | `declaration-track:3f68b57020a1c5096daac8fa1b6eb57cd25276250e0ee5b3fa5fd9e4914e27e7` |
| 17 | `def` | [subtype](../../../../GeneralTopology/LocalPredicatePublic.lean/declarations/subtype.md) | 239 | `declaration-track:3a6958286aff8107e919e002caa32caf173a34895011bc3def8f8ae7add97462` |
| 18 | `theorem` | [isSheaf](../../../../GeneralTopology/LocalPredicatePublic.lean/declarations/issheaf.md) | 245 | `result-track:7d274f599335e0230885060fb825323d90fe9ad6dd068bdad07c36275148b751` |
| 19 | `def` | [subsheafToTypes](../../../../GeneralTopology/LocalPredicatePublic.lean/declarations/subsheaftotypes.md) | 283 | `declaration-track:8b2d848571cb5d8a4686b814020170a7c6c52c35bb054d92fb9dce9ed89f562a` |
| 20 | `def` | [LocalPredicate.cocone](../../../../GeneralTopology/LocalPredicatePublic.lean/declarations/localpredicate-cocone.md) | 287 | `declaration-track:ae6a8a761c5c7eac75dd0ce9de6627e57009f37321b0e55791cce380cfd2774a` |
| 21 | `def` | [stalkToFiber](../../../../GeneralTopology/LocalPredicatePublic.lean/declarations/stalktofiber.md) | 294 | `declaration-track:d178d10c248ff026979c9b24b553c5c891a15f092b5bda74ed76bd53c60b8eea` |
| 22 | `lemma` | [stalkToFiber_ι](../../../../GeneralTopology/LocalPredicatePublic.lean/declarations/stalktofiber-source-edition-2.md) | 300 | `result-track:de480a1530b89fc5f778d50df48ea7b2adb075ac2e60f80ad15afee719371912` |
| 23 | `theorem` | [stalkToFiber_germ](../../../../GeneralTopology/LocalPredicatePublic.lean/declarations/stalktofiber-germ.md) | 307 | `result-track:5d3fc9d28081c2214cd41ffd01fbc2fb283dcd4dd3ea330050eadb7317c42542` |
| 24 | `theorem` | [stalkToFiber_surjective](../../../../GeneralTopology/LocalPredicatePublic.lean/declarations/stalktofiber-surjective.md) | 315 | `result-track:034a6eaa10a531524b348fdee88c7ecf288fd601a548ad88ebf614a08902f1b9` |
| 25 | `theorem` | [stalkToFiber_injective](../../../../GeneralTopology/LocalPredicatePublic.lean/declarations/stalktofiber-injective.md) | 327 | `result-track:44b519c02254086ad27a53097c9ed105b447a1fbe97a4e60b1aa38d9baefc8c1` |
| 26 | `def` | [subpresheafContinuousPrelocalIsoPresheafToTop](../../../../GeneralTopology/LocalPredicatePublic.lean/declarations/subpresheafcontinuousprelocalisopresheaftotop.md) | 363 | `declaration-track:f5c429b3055373a903191e16de9f0fc5449d9081f659096a88f571ca3d02c179` |
| 27 | `def` | [sheafToTop](../../../../GeneralTopology/LocalPredicatePublic.lean/declarations/sheaftotop.md) | 371 | `declaration-track:b46e9545aade482ccb0ec91d907f1070d71f8939829f6047e77cb03e637a8247` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f105fc34330e5a0fc3363c6d777b5031170381b8ecdfcbf32ef60826a966fceb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LocalPredicate/Variantbb29ff7184f85615a8e38691140b1f8603c8e17472d32d4192859386e5537183.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/LocalPredicate/Variantbb29ff7184f85615a8e38691140b1f8603c8e17472d32d4192859386e5537183.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
