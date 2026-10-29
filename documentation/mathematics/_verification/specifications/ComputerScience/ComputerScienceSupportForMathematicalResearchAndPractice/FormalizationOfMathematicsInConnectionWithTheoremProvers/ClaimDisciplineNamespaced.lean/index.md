# Verification target: Claim Discipline Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94ce3beba4d8fa9b018a17933ac98faec3d2c743",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant5d5417ff67750aa0af375710dc533e7b14d9cd83542a74643a77e753e083419f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClaimDisciplineNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClaimDisciplineNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94ce3beba4d8fa9b018a17933ac98faec3d2c743`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant5d5417ff67750aa0af375710dc533e7b14d9cd83542a74643a77e753e083419f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant5d5417ff67750aa0af375710dc533e7b14d9cd83542a74643a77e753e083419f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CordTheory.Surgery` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AdmissibilityRecord](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClaimDisciplineNamespaced.lean/declarations/admissibilityrecord.md) | 21 | `declaration-track:981cb438f053e8857b4013263bd6b47a1ea686df38cdb8765fde390e9b78feec` |
| 2 | `def` | [FullyEstablished](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClaimDisciplineNamespaced.lean/declarations/fullyestablished.md) | 35 | `declaration-track:fdde28759906dd0c62d092a316ee7f2a31cde7f23e520aa4517a9f19cc4125a1` |
| 3 | `theorem` | [fullyEstablished_authorized](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClaimDisciplineNamespaced.lean/declarations/fullyestablished-authorized.md) | 43 | `result-track:875db8519b48f59b883e0e6999a4e90a599334d82ae2f896a10cd15c0692dac9` |
| 4 | `theorem` | [fullyEstablished_safe](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClaimDisciplineNamespaced.lean/declarations/fullyestablished-safe.md) | 46 | `result-track:7e6391958f17571d13dae3677e6b0dc1e233f9d65c51141b2f229d69fb324ee7` |
| 5 | `theorem` | [fullyEstablished_correct](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClaimDisciplineNamespaced.lean/declarations/fullyestablished-correct.md) | 49 | `result-track:a7e51897ca9321538f73a2aaee8732d11dc9dd37a619b0300b2ade549d991d3f` |
| 6 | `theorem` | [fullyEstablished_useful](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClaimDisciplineNamespaced.lean/declarations/fullyestablished-useful.md) | 52 | `result-track:30e58ef600725c89e953e50bf68eaa1cae638ccea77e59b542ad40ab0f33f881` |
| 7 | `theorem` | [fullyEstablished_ethically_acceptable](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClaimDisciplineNamespaced.lean/declarations/fullyestablished-ethically-acceptable.md) | 55 | `result-track:09a11791a8897d9d45dd03ddbff42e89b799085e2999747e285bf8ddd2bb7063` |
| 8 | `theorem` | [reachability_does_not_entail_authorization](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClaimDisciplineNamespaced.lean/declarations/reachability-does-not-entail-authorization.md) | 60 | `result-track:00376d0d9ec283668cc9d5562810c8b44c4d50f510b1fbdbe24e1590bbfbd0e2` |
| 9 | `theorem` | [reachability_does_not_entail_full_admissibility](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClaimDisciplineNamespaced.lean/declarations/reachability-does-not-entail-full-admissibility.md) | 79 | `result-track:4530a89b1b41ece0dc316d6b9b2782d11c4dbca5b8a0987eaee1bbe415685f00` |
| 10 | `inductive` | [CandidateAdmissionStatus](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClaimDisciplineNamespaced.lean/declarations/candidateadmissionstatus.md) | 99 | `declaration-track:29e06f5bebd20045c6497df7055acb8ce07b493bf4ec08fa7f1491320706b451` |
| 11 | `structure` | [CandidateTermObservation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClaimDisciplineNamespaced.lean/declarations/candidatetermobservation.md) | 107 | `declaration-track:be0c1c09e8015c2decd3d5a3223db920ca916c1f65039331f8f3896c8733d67b` |
| 12 | `def` | [IsMerelyObserved](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClaimDisciplineNamespaced.lean/declarations/ismerelyobserved.md) | 123 | `declaration-track:d510913c40c33dff6fe48ab8aeea984c4d1ac500dc26301e1a88f0fe26cf7300` |
| 13 | `theorem` | [observed_not_admitted](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClaimDisciplineNamespaced.lean/declarations/observed-not-admitted.md) | 126 | `result-track:2a29c15fdd8b4e81d1f10846b6c10e3ee950782f3af057e7204f456c7a7d24a9` |
| 14 | `structure` | [VectorCandidateObservation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClaimDisciplineNamespaced.lean/declarations/vectorcandidateobservation.md) | 133 | `declaration-track:8ed1ab83ab4d4a8ab30a27276b6773bc8a432be4534c21e81b9a5e257e791a47` |
| 15 | `def` | [SemanticallyAdmitted](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClaimDisciplineNamespaced.lean/declarations/semanticallyadmitted.md) | 153 | `declaration-track:91d0c375c91eebc9c1e2d023d40b53198e7ebb9311f667fd3826bdc6bb66d3c7` |
| 16 | `theorem` | [proximity_does_not_entail_semantic_admission](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClaimDisciplineNamespaced.lean/declarations/proximity-does-not-entail-semantic-admission.md) | 160 | `result-track:b7e448e0ac709afb4c981fe6ada23863490035be578b0c841ab888c360615c0c` |
| 17 | `structure` | [TextOccurrenceObservation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClaimDisciplineNamespaced.lean/declarations/textoccurrenceobservation.md) | 189 | `declaration-track:03b62cafcd0208829f1b3615f585f0dd5e32fdbdb9a67141982cbedee57f645d` |
| 18 | `theorem` | [occurrence_does_not_entail_term_declaration](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClaimDisciplineNamespaced.lean/declarations/occurrence-does-not-entail-term-declaration.md) | 206 | `result-track:263ed77e68e85ca534af7d99678e69200845cafddd17e6a76d4c6cd26cfd67b4` |
| 19 | `structure` | [ValidationEvidenceRecord](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClaimDisciplineNamespaced.lean/declarations/validationevidencerecord.md) | 229 | `declaration-track:a367da922bf85b94ba8d741d01b69d179a8531548172490b85af11a21c1eb488` |
| 20 | `def` | [EstablishesProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClaimDisciplineNamespaced.lean/declarations/establishesproof.md) | 246 | `declaration-track:78e4d1777157bea462e46d47fa86f8fd9707dde2817050fe4ab63fb81a24f7e6` |
| 21 | `theorem` | [establishesProof_result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClaimDisciplineNamespaced.lean/declarations/establishesproof-result.md) | 251 | `result-track:348c6a0c3cd248470653e95b74be276df752ca957bdbef0661109dc41fa3e534` |
| 22 | `theorem` | [establishesProof_complete](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClaimDisciplineNamespaced.lean/declarations/establishesproof-complete.md) | 254 | `result-track:ee59711381ef4d973e278ba0a35480a019b032472db731cae46733d42efd77ef` |
| 23 | `theorem` | [establishesProof_has_certificate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClaimDisciplineNamespaced.lean/declarations/establishesproof-has-certificate.md) | 257 | `result-track:6dddb58dcd37ef3481f28180e1466cebe1996fa1646629ad6f7ab4b81d8510be` |
| 24 | `theorem` | [certified_complete_validation_establishes_proof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClaimDisciplineNamespaced.lean/declarations/certified-complete-validation-establishes-proof.md) | 260 | `result-track:b122603e414027bc3f927468e47a1f1efab5134bd22a9a4ac0cf02e63410a95d` |
| 25 | `theorem` | [validation_pass_does_not_entail_proof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClaimDisciplineNamespaced.lean/declarations/validation-pass-does-not-entail-proof.md) | 268 | `result-track:af1ad8dbfa34ff9e4ba1b921e6b618d434d4c8b3d80142f0ae9dbe50e0e84631` |
| 26 | `structure` | [ReceiptScopeRecord](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClaimDisciplineNamespaced.lean/declarations/receiptscoperecord.md) | 291 | `declaration-track:cc36366d4310f305c6f6af3d97d6a0254174639ad21b07aa968951bec15f2a8e` |
| 27 | `def` | [TruthQualified](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClaimDisciplineNamespaced.lean/declarations/truthqualified.md) | 307 | `declaration-track:447f0cbef2dee43f608bcb7421b64c1bab4b1b4cf57ec9eccf158db9e7431660` |
| 28 | `theorem` | [truthQualified_has_receipt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClaimDisciplineNamespaced.lean/declarations/truthqualified-has-receipt.md) | 310 | `result-track:da376597cb923ecc043beed0f600e98baf25f001de40e30c55083f9a3972ee7b` |
| 29 | `theorem` | [truthQualified_has_truth_status](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClaimDisciplineNamespaced.lean/declarations/truthqualified-has-truth-status.md) | 313 | `result-track:975bfd6ab1bdf36c73bbf7ceb82412d0a839ce8f1cb8042d0c754daaa4341c3d` |
| 30 | `theorem` | [receipt_does_not_entail_truth](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ClaimDisciplineNamespaced.lean/declarations/receipt-does-not-entail-truth.md) | 317 | `result-track:9160d57e88cf16a4598efec36fd39d2c1c397e8e28f3c3c241927ff8b0eb02ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dfc71b72bf4468829529bc615505ddc981365e565715dea681b8c4f619be3f38 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant5d5417ff67750aa0af375710dc533e7b14d9cd83542a74643a77e753e083419f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClaimDiscipline/Variant5d5417ff67750aa0af375710dc533e7b14d9cd83542a74643a77e753e083419f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
