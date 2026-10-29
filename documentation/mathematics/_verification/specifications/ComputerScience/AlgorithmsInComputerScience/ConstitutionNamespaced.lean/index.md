# Verification target: Constitution Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25041121a92873e13aff9e62dd689397586f2807",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Constitution/Variant9cbd94dcf2d3bfd069296f8c7647670be3cabc441d2294192c5f2aa932c884be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25041121a92873e13aff9e62dd689397586f2807`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Constitution/Variant9cbd94dcf2d3bfd069296f8c7647670be3cabc441d2294192c5f2aa932c884be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Constitution/Variant9cbd94dcf2d3bfd069296f8c7647670be3cabc441d2294192c5f2aa932c884be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CordTheory.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [capRfcIdentifier](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/caprfcidentifier.md) | 24 | `declaration-track:f1778dd58e7218bcafd657062e4a777961b882955b048c968c158b669fe2ef90` |
| 2 | `def` | [capRfcVersion](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/caprfcversion.md) | 25 | `declaration-track:f72782e63471ecd870537bd171189d3afba505ef66512080a6ee0bb0571bf3e7` |
| 3 | `inductive` | [CapConformanceProfile](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/capconformanceprofile.md) | 27 | `declaration-track:762c52f247f24b2c91afc50509bc2722cf44a47767e01079c4b7d427eec46c63` |
| 4 | `inductive` | [CapTestOutcome](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/captestoutcome.md) | 38 | `declaration-track:6cf4ca66a292d370b3f0887ec0ed4bd95f8a6019b83bed42fb8644c5709188fe` |
| 5 | `def` | [SatisfiesMandatory](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/satisfiesmandatory.md) | 49 | `declaration-track:f41c560dead26ba8b5cf8378378ad9429bbee03e2b184a8b483f3499ea68a55b` |
| 6 | `theorem` | [pass_satisfies](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/pass-satisfies.md) | 53 | `result-track:b7d7d04e9c82c9862778fb0a3f10b12de4843d64a0eaeedcf46de0e30c25e4aa` |
| 7 | `theorem` | [fail_does_not_satisfy](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/fail-does-not-satisfy.md) | 56 | `result-track:f1e1bb549063f8dd185dc9ac6646f61390ba614be8cf710ff34fe5f7892f6831` |
| 8 | `theorem` | [notApplicable_does_not_satisfy](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/notapplicable-does-not-satisfy.md) | 60 | `result-track:2c11d55f9831f1fe5b3b0d82666e465bb5ed09837281dbc40b91c24d8c1446a9` |
| 9 | `theorem` | [blocked_does_not_satisfy](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/blocked-does-not-satisfy.md) | 64 | `result-track:09cac8ec1fca50a10675dbc579f445bc3006b56cbe95129e42999425901bc052` |
| 10 | `theorem` | [indeterminate_does_not_satisfy](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/indeterminate-does-not-satisfy.md) | 68 | `result-track:2793be6fd8b6e41e8d5429a777d1751a0fa3e3be90d61c7fa4a345a8a73f15fc` |
| 11 | `inductive` | [CapRequirementStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/caprequirementstatus.md) | 74 | `declaration-track:bb2239fefdd6eb63328daba3c6e78b3316aec1120c5a67d9d8f3f9ab2c684f23` |
| 12 | `def` | [ClosesApplicable](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/closesapplicable.md) | 86 | `declaration-track:bbbba354c1448a311a35bb882f35b1fe72db8838cdb34f52b9cf139e3e08ca61` |
| 13 | `theorem` | [closes_iff_satisfied](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/closes-iff-satisfied.md) | 90 | `result-track:ec3ce5e0b7b88c74c4281dac1bf20281efb4b8616a17226499312419078f047c` |
| 14 | `theorem` | [openProofObligation_does_not_close](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/openproofobligation-does-not-close.md) | 94 | `result-track:74252c9a770cacc883a775acceb3f330e1703bf42eda2cab433463d25b145791` |
| 15 | `structure` | [CapRequirementResult](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/caprequirementresult.md) | 100 | `declaration-track:506bf4c5c5c29692d95987b3e61976e780be83c10497b20c615eeb3f2d4296d3` |
| 16 | `def` | [Honest](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/honest.md) | 111 | `declaration-track:5bd1c2c775905b2e0f765f9f1c437105605c902547f6923f262a70b8450e5952` |
| 17 | `structure` | [CapTestResult](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/captestresult.md) | 119 | `declaration-track:9779cb5c54046f0a7ce35f7c40f90961533fd29c3c2b2b3d7a7ad02562a54d8e` |
| 18 | `def` | [Honest](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/honest-source-edition-2.md) | 129 | `declaration-track:a490f6469f8c856df7f9bc32719ad1d7664274bcccae05f6d8df563a48e2894c` |
| 19 | `theorem` | [mandatory_blocked_is_not_honest_pass](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/mandatory-blocked-is-not-honest-pass.md) | 136 | `result-track:4ee92b94058cfaea027564658cd6fffdb06541789c7205005c6cfe8970e252eb` |
| 20 | `structure` | [CapConformanceFrontier](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/capconformancefrontier.md) | 148 | `declaration-track:56d1e5bcdfd409ac9ddae97ff4cc909d7a8a1fe654d3c50084a228ba6cbf08c6` |
| 21 | `def` | [Empty](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/empty.md) | 158 | `declaration-track:785d291c898d1337f2eac0b76ff6023b7d5dab4e0adb5b116038f31d6289f2f2` |
| 22 | `structure` | [CapConformanceClaim](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/capconformanceclaim.md) | 167 | `declaration-track:7c7736694dec1f646fea5dd73ffe6611dbec6a5770aa918b242e4d034a0a812a` |
| 23 | `def` | [SystemReady](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/systemready.md) | 179 | `declaration-track:4f378abff265546378cd4486983c0247b1147392d62b1eaabef307825d647853` |
| 24 | `theorem` | [system_ready_frontier_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/system-ready-frontier-empty.md) | 188 | `result-track:8da059cd97673ff105649922b7dcff81fc42d98201dbb5af3626b32e08eb6c41` |
| 25 | `theorem` | [system_ready_has_no_open_proof_obligation](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/system-ready-has-no-open-proof-obligation.md) | 193 | `result-track:d91fced749e93bb82c7e3b814f0c547bc2955ce4683cc37bbe732d7cb0315249` |
| 26 | `inductive` | [ConstitutionalOperationStage](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/constitutionaloperationstage.md) | 200 | `declaration-track:2aa5ed17a2c089aa09d97336aa0a39c5f7d1adaef20ac73ad3ae9535a8a7f6f1` |
| 27 | `def` | [rank](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/rank.md) | 214 | `declaration-track:b121deb7a6397105a0d43a6d5c5b3728ab346a07fcbbb20539d0fa21592e864d` |
| 28 | `inductive` | [Immediate](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/immediate.md) | 227 | `declaration-track:81e54ff1db78343f665b77c7b081e32833bf75ff873703f6b7b95d109152c40f` |
| 29 | `theorem` | [immediate_advances_one](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/immediate-advances-one.md) | 238 | `result-track:05ef580449c87c5db0499911b54d921c046a8dfc6d4f273013e6ee63dd3983fc` |
| 30 | `def` | [MayPerformObjectEffect](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/mayperformobjecteffect.md) | 243 | `declaration-track:18ac2f44e98fd417488927976c9066a1ff037518fe28356dd9b0cd6fcf5980bc` |
| 31 | `theorem` | [validate_is_nonmutating](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/validate-is-nonmutating.md) | 248 | `result-track:192f4dfff3945285c0918bbfb474c3723960f426e5f0842351e820ec57498108` |
| 32 | `theorem` | [project_is_proposal_only](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/project-is-proposal-only.md) | 252 | `result-track:ad0f0581dd1747d4f6eda95fd80e97ad3755ab45a261c4e5d3af5ce377b00091` |
| 33 | `theorem` | [observe_is_nonmutating](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/observe-is-nonmutating.md) | 256 | `result-track:c56b8b736c8c65787efee12a2aa2a981674a6a3408669211d03946d648d58c04` |
| 34 | `structure` | [CapReflectiveAct](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/capreflectiveact.md) | 264 | `declaration-track:db138f1a9acc2081f16459f4f1e8548a9b002fa0b84f5f218c5061f68c50f920` |
| 35 | `theorem` | [reflection_is_nonmutating](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/reflection-is-nonmutating.md) | 273 | `result-track:04b8d07c3bb2c2ff9b20f732e44f0e9006ac6f536e0b59294cd4a3a3426f9582` |
| 36 | `inductive` | [CapEpistemicQualification](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/capepistemicqualification.md) | 281 | `declaration-track:5b965dd65ee8337ae3faf7ce550d563c2aa2fdb85ea44f0f5402fa879afa3952` |
| 37 | `def` | [rank](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/rank-source-edition-2.md) | 291 | `declaration-track:cb70ee24a68e114e4af030d497378b2636381dc2f93e01b0081902eea57d2b68` |
| 38 | `structure` | [CapNonEvidentiaryTransformation](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/capnonevidentiarytransformation.md) | 300 | `declaration-track:fe573ec74058e485ad86f408e1d3330a7cf44dbae91db957a5c73bd4134a583d` |
| 39 | `theorem` | [qualification_does_not_silently_strengthen](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/qualification-does-not-silently-strengthen.md) | 308 | `result-track:1082ca00e44c7ed4b9151c9bbc19a92e2c622f6605836529b6c8574dff73cc1f` |
| 40 | `structure` | [CapQualifiedOntologyRecord](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/capqualifiedontologyrecord.md) | 319 | `declaration-track:9d9a0da419453b5bcd675a4f9ec26c70116f09e316b0e18164deb3d630b74a2f` |
| 41 | `theorem` | [admitted_location_preserves_normative_candidate](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/admitted-location-preserves-normative-candidate.md) | 324 | `result-track:1db3ef083ec27d5bca6f425f42a9fc1e6818c8aa26c7b2106dfaff3bd2d19f4b` |
| 42 | `structure` | [CapHistoricalComparison](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/caphistoricalcomparison.md) | 331 | `declaration-track:469bd5491bef881cbbaf394cb567094cf3b303e0229070db1a4ba8329a57df65` |
| 43 | `def` | [Constitutional](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/constitutional.md) | 340 | `declaration-track:454125db62011d8171417248d9318cec2d749dbbceee2228fead047aa84b02f2` |
| 44 | `theorem` | [no_mutation_authority](../../../../../ComputerScience/AlgorithmsInComputerScience/ConstitutionNamespaced.lean/declarations/no-mutation-authority.md) | 347 | `result-track:0d84ebb816c96a6b03380f344da6e394091f2accf2bd1ec4af571672bf3300d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8c3a5e5161517cee95b5d0c9a5536255307119505e08b12ab2f375de186cfd58 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Constitution/Variant9cbd94dcf2d3bfd069296f8c7647670be3cabc441d2294192c5f2aa932c884be.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Constitution/Variant9cbd94dcf2d3bfd069296f8c7647670be3cabc441d2294192c5f2aa932c884be.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
