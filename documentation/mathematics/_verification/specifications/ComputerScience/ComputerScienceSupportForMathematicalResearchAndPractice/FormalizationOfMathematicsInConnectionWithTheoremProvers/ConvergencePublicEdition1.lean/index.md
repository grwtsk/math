# Verification target: Convergence Public Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c2358fde374166ec62f19f199a1f9303f4c17d6",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convergence/Variant04d2f45f3e31fa7364e04273b3091196b7409a83e1e402682433e16a78464999.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConvergencePublicEdition1.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConvergencePublicEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c2358fde374166ec62f19f199a1f9303f4c17d6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convergence/Variant04d2f45f3e31fa7364e04273b3091196b7409a83e1e402682433e16a78464999.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convergence/Variant04d2f45f3e31fa7364e04273b3091196b7409a83e1e402682433e16a78464999.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GlobalRegisters](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConvergencePublicEdition1.lean/declarations/globalregisters.md) | 27 | `declaration-track:23b606749f82cb3ae48e52ee4c5418fbb592a73261b9aa5ece1653b9f3dfceea` |
| 2 | `structure` | [DeliveryEvent](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConvergencePublicEdition1.lean/declarations/deliveryevent.md) | 31 | `declaration-track:84b4a5b58f5b78977650a4e2aa213fa72e5f3e7887aada833e155f8e94c80791` |
| 3 | `def` | [applyEvent](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConvergencePublicEdition1.lean/declarations/applyevent.md) | 38 | `declaration-track:18664f4042cb1990779b0e2fcce5d1b2a3de7f7317dd1649e40e49b61bf8020d` |
| 4 | `structure` | [Execution](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConvergencePublicEdition1.lean/declarations/execution.md) | 48 | `declaration-track:e58742a50c9e201890a9afdfcc1a404f345a86b5e3405f86833f594b36e28aff` |
| 5 | `def` | [UniqueMaximalAdmitted](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConvergencePublicEdition1.lean/declarations/uniquemaximaladmitted.md) | 61 | `declaration-track:f65420175a8f24e15f93c25a72d30c6b83f93360b5c6f2b9539fb32ef1bb5b23` |
| 6 | `theorem` | [latestAdmitted_unique](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConvergencePublicEdition1.lean/declarations/latestadmitted-unique.md) | 73 | `result-track:941f39125167d86b624cb796500afcc3d72690a53bc98d54feae4025d238759c` |
| 7 | `def` | [InitialRegistersAdmitted](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConvergencePublicEdition1.lean/declarations/initialregistersadmitted.md) | 89 | `declaration-track:3d11baacd8bea46342f84b5d973744afd1dae5f6451819893a0a88a4f566b344` |
| 8 | `def` | [EveryDeliveryAdmitted](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConvergencePublicEdition1.lean/declarations/everydeliveryadmitted.md) | 95 | `declaration-track:5d191467d0a137dc577d7a326e4e2b861026f9031ff3085d5d8430e163da7b78` |
| 9 | `def` | [EventuallyDeliversLatest](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConvergencePublicEdition1.lean/declarations/eventuallydeliverslatest.md) | 102 | `declaration-track:b4300eb724a3d60965f44389717f7f94681eb0daf55a3369bdc5b16486e16916` |
| 10 | `def` | [QuiescentAboveLatest](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConvergencePublicEdition1.lean/declarations/quiescentabovelatest.md) | 117 | `declaration-track:fd162da1fb9d0a668671a69295f2b58c7c01da076cabe71996de3061aabaf556` |
| 11 | `def` | [DeliveriesPreserveLatestRevision](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConvergencePublicEdition1.lean/declarations/deliveriespreservelatestrevision.md) | 127 | `declaration-track:e31a56ca0a439aebe3aa7776f67195f476364b92cdd8cf539005c22c295b5f84` |
| 12 | `def` | [MaximalDeliveriesPreservePayload](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConvergencePublicEdition1.lean/declarations/maximaldeliveriespreservepayload.md) | 136 | `declaration-track:530426660e8d7870774c9c9af173f1ed9c83150cbefee2ffc95b67ee234538d5` |
| 13 | `def` | [NoAcceptedEqualRevisionConflict](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConvergencePublicEdition1.lean/declarations/noacceptedequalrevisionconflict.md) | 147 | `declaration-track:959483f8a57eaf9f181081b56dc2bd020326a8f9d82d44da3460f18231aa7636` |
| 14 | `def` | [DeterministicMerge](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConvergencePublicEdition1.lean/declarations/deterministicmerge.md) | 158 | `declaration-track:ba2365a89090da2736285a9d11d38a0b42f72cce5a5f0ae1e6d71570dfa660e3` |
| 15 | `theorem` | [fixedMerge_is_deterministic](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConvergencePublicEdition1.lean/declarations/fixedmerge-is-deterministic.md) | 166 | `result-track:30f29d3a4e8f2d3c31d2987f983581efdf8061b1b8e968c51ec289cf93893580` |
| 16 | `def` | [RevisionBounded](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConvergencePublicEdition1.lean/declarations/revisionbounded.md) | 172 | `declaration-track:ef31035d1ad9065d25d3493529d98ce90a824af1ace38586557c5a465e1755b6` |
| 17 | `theorem` | [revisionedXYZ_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConvergencePublicEdition1.lean/declarations/revisionedxyz-eq.md) | 178 | `result-track:61751ec83541d18cc48d825f3c5b1f702e3c62753778144eb94ed931e59d2410` |
| 18 | `theorem` | [apply_preserves_revisionBounded](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConvergencePublicEdition1.lean/declarations/apply-preserves-revisionbounded.md) | 186 | `result-track:065443d19a46ba8dbbdaf32d8aa199c20a5cea3566d4871f704ace40985f8c7e` |
| 19 | `theorem` | [execution_revisions_bounded](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConvergencePublicEdition1.lean/declarations/execution-revisions-bounded.md) | 219 | `result-track:69d1ea702a7d97607ec026e4eae967f35e1e398e0979f2ad83955f7a012fd9a0` |
| 20 | `theorem` | [apply_latest_of_bounded_and_compatible](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConvergencePublicEdition1.lean/declarations/apply-latest-of-bounded-and-compatible.md) | 250 | `result-track:cb99cd832672c67f69ddbca7c61064bf2f040c202b3280dd19de578e945cf371` |
| 21 | `theorem` | [delivered_latest_is_installed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConvergencePublicEdition1.lean/declarations/delivered-latest-is-installed.md) | 278 | `result-track:792ef47d52942bc598dce4598dc5b034b314e4abe187a74389ec3f492bab70a9` |
| 22 | `theorem` | [installed_latest_stays_installed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConvergencePublicEdition1.lean/declarations/installed-latest-stays-installed.md) | 296 | `result-track:d48841a752c138d0a32364b1e99255f690e49f2fd72adf9850d9ca147d65ec78` |
| 23 | `theorem` | [finite_delivery_times_have_upper_bound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConvergencePublicEdition1.lean/declarations/finite-delivery-times-have-upper-bound.md) | 328 | `result-track:52a52676d0dc3a6599f1a96eb034435d88cd5cfba9b8be0426d66b690a51bfc5` |
| 24 | `theorem` | [eventual_convergence_to_latestAdmitted](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConvergencePublicEdition1.lean/declarations/eventual-convergence-to-latestadmitted.md) | 362 | `result-track:1e744f9f35ac68d707744b5f89ce7d4d18beeba3c008990baa12742aceeaa9b2` |
| 25 | `def` | [RoutePayloadPreserving](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConvergencePublicEdition1.lean/declarations/routepayloadpreserving.md) | 431 | `declaration-track:3b2a885403c257fc6109ac6789f772414ce15f893ddec906fbbd877c0713f535` |
| 26 | `def` | [RoutePathIndependent](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConvergencePublicEdition1.lean/declarations/routepathindependent.md) | 436 | `declaration-track:a7542fc4970f96e966e9bb781f2a74d49138a767b37a3023e6adeb74e78773f4` |
| 27 | `theorem` | [payload_preserving_routes_are_path_independent](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConvergencePublicEdition1.lean/declarations/payload-preserving-routes-are-path-independent.md) | 442 | `result-track:7df36e2cd0f7636840c9581b6f6582113aa87e38cbdd8d478691dd379764d022` |
| 28 | `theorem` | [edge_transforming_routes_require_confluence](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConvergencePublicEdition1.lean/declarations/edge-transforming-routes-require-confluence.md) | 454 | `result-track:6d40d36b4f2f6ff695d952e5c6adacd10017241fc70aba977d2293c16e5ef250` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=071210d80d630e188a5e239a278bb550bab2878d12e1fa7c4baa1deb4f7b90c6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convergence/Variant04d2f45f3e31fa7364e04273b3091196b7409a83e1e402682433e16a78464999.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convergence/Variant04d2f45f3e31fa7364e04273b3091196b7409a83e1e402682433e16a78464999.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
