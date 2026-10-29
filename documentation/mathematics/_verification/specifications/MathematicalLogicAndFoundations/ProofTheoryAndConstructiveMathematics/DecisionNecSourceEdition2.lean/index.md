# Verification target: Decision Nec Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1c326253f2c129c0e75c60c5a4aba90ac2b4955",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/DecisionNec/Variantd641875f3c834155c73e23bb0feb2ae7c592e0012fcd5a584f859252603bf213.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/DecisionNecSourceEdition2.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/DecisionNecSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1c326253f2c129c0e75c60c5a4aba90ac2b4955`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/DecisionNec/Variantd641875f3c834155c73e23bb0feb2ae7c592e0012fcd5a584f859252603bf213.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/DecisionNec/Variantd641875f3c834155c73e23bb0feb2ae7c592e0012fcd5a584f859252603bf213.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Archive.MiuLanguage.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Count` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.ModEq` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CountEquivOrEquivTwoMulMod3](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/DecisionNecSourceEdition2.lean/declarations/countequivorequivtwomulmod3.md) | 44 | `declaration-track:8df3d6118e7bf456b7c4ee6a1bf6bf829d8ed560d1adfd37e163a7f5be63cb37` |
| 2 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/DecisionNecSourceEdition2.lean/declarations/example.md) | 50 | `declaration-track:1f16dc7ebad4f1cd189b0f7fb817b6433b1d488574b3c2a3e681f53ddec04337` |
| 3 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/DecisionNecSourceEdition2.lean/declarations/example-source-edition-2.md) | 53 | `declaration-track:ea48b09acfb5334e71c9f8b8be6090b445d402bb994b27e7222103662d2fbecf` |
| 4 | `theorem` | [mod3_eq_1_or_mod3_eq_2](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/DecisionNecSourceEdition2.lean/declarations/mod3-eq-1-or-mod3-eq-2.md) | 58 | `result-track:57718fc2d936917009a7fa55ce191dfc29bbab07a6415f57d976ae0f88cc0e56` |
| 5 | `theorem` | [count_equiv_one_or_two_mod3_of_derivable](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/DecisionNecSourceEdition2.lean/declarations/count-equiv-one-or-two-mod3-of-derivable.md) | 70 | `result-track:6f62e80308f68b9f670a01e88d7d8fa10c60bc04d24f889ab31131810ab27f03` |
| 6 | `theorem` | [not_derivable_mu](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/DecisionNecSourceEdition2.lean/declarations/not-derivable-mu.md) | 90 | `result-track:bcfd34ea0d0b24d21473bff60382f3a948b8f251135e3fd51e49fc138f8abf98` |
| 7 | `def` | [Goodm](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/DecisionNecSourceEdition2.lean/declarations/goodm.md) | 105 | `declaration-track:e4fa993b16ec1df95944f4cfd9174ed42591b87c68c1e4e39caab947723c2499` |
| 8 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/DecisionNecSourceEdition2.lean/declarations/instance.md) | 109 | `declaration-track:36ca361b55e7f77073beec6eb455270643ed4291d40abde3c8684913ef57d81a` |
| 9 | `theorem` | [goodmi](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/DecisionNecSourceEdition2.lean/declarations/goodmi.md) | 113 | `result-track:10c76c20c5dbecec382817a0ab18794a1efd466989ffabf35d86d7dd0146b592` |
| 10 | `theorem` | [goodm_of_rule1](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/DecisionNecSourceEdition2.lean/declarations/goodm-of-rule1.md) | 125 | `result-track:be453b3fbc0574f0fe68d40ce1f6ac3eddd02a8eb2607345e2321cacf627f8a6` |
| 11 | `theorem` | [goodm_of_rule2](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/DecisionNecSourceEdition2.lean/declarations/goodm-of-rule2.md) | 141 | `result-track:ba35d044888de57eb587d07f2dd4957ea604678514e1996094fe8575e7d91ca0` |
| 12 | `theorem` | [goodm_of_rule3](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/DecisionNecSourceEdition2.lean/declarations/goodm-of-rule3.md) | 151 | `result-track:4d01522d11a5274a6a7e1a110bd5f8ff8be8c86ac759a4c8ed94284465e8c6e0` |
| 13 | `theorem` | [goodm_of_rule4](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/DecisionNecSourceEdition2.lean/declarations/goodm-of-rule4.md) | 172 | `result-track:dead20127220d5e262f78adf23935fdae183b0d3d926001a651945568158f0de` |
| 14 | `theorem` | [goodm_of_derivable](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/DecisionNecSourceEdition2.lean/declarations/goodm-of-derivable.md) | 190 | `result-track:b1310d3cbccf406daf0d2eb55fdf012590e2bbdb8bb6df8b2ac768b9f7bca6d5` |
| 15 | `def` | [Decstr](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/DecisionNecSourceEdition2.lean/declarations/decstr.md) | 210 | `declaration-track:57ab3c162fc9e4e281e6a12a47b9ba80c4037968815408816d78b6cabc7478d9` |
| 16 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/DecisionNecSourceEdition2.lean/declarations/instance-source-edition-2.md) | 214 | `declaration-track:608d64eb1dbedb272bb984a9459160a8767cbe44eb1bf12ae637300d79acf930` |
| 17 | `theorem` | [decstr_of_der](../../../../../MathematicalLogicAndFoundations/ProofTheoryAndConstructiveMathematics/DecisionNecSourceEdition2.lean/declarations/decstr-of-der.md) | 218 | `result-track:fa6ede295621c8911229a77c5d27c105e85a6bd517b3478df5f252f8b259c629` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=580e195876aeee1ec8d3fccf9b59b76f84cb36353c4d5934c183336d7e85e512 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/DecisionNec/Variantd641875f3c834155c73e23bb0feb2ae7c592e0012fcd5a584f859252603bf213.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/DecisionNec/Variantd641875f3c834155c73e23bb0feb2ae7c592e0012fcd5a584f859252603bf213.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
