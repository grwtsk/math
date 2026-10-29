# Verification target: Linear Combination Eq Of Add Pow

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7c3e6d68305467fb6892acfd1f497917c0979c8",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant83839b3e8746e666e009388d3521d88dd46b0c8e26cfc9cc1dafd4347c480377.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationEqOfAddPow.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationEqOfAddPow.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7c3e6d68305467fb6892acfd1f497917c0979c8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant83839b3e8746e666e009388d3521d88dd46b0c8e26cfc9cc1dafd4347c480377.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant83839b3e8746e666e009388d3521d88dd46b0c8e26cfc9cc1dafd4347c480377.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Ring` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pf_add_c](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationEqOfAddPow.lean/declarations/pf-add-c.md) | 44 | `result-track:a86a2d1b1c7275513d3cd8d3fdc6b8925576e623420608b9db93e10384511f09` |
| 2 | `theorem` | [c_add_pf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationEqOfAddPow.lean/declarations/c-add-pf.md) | 45 | `result-track:86a2d8f02ac6018752267b6553cc0775331577415ab8d676a7a585385f8a567b` |
| 3 | `theorem` | [add_pf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationEqOfAddPow.lean/declarations/add-pf.md) | 46 | `result-track:c82549f505956430675305f9150b9e5d4b2a0908c229c8936e2c5fededd836c0` |
| 4 | `theorem` | [pf_sub_c](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationEqOfAddPow.lean/declarations/pf-sub-c.md) | 47 | `result-track:b2c0afe45b112da16ae9b11ff701d3235487b4e9b680b9e27d20bd32f12d1681` |
| 5 | `theorem` | [c_sub_pf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationEqOfAddPow.lean/declarations/c-sub-pf.md) | 48 | `result-track:814418fbdec602737e3e7410a336432ea0db97e3820903ea8fe7e28f9eecc9b5` |
| 6 | `theorem` | [sub_pf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationEqOfAddPow.lean/declarations/sub-pf.md) | 49 | `result-track:bb784fa3277af86f1cdaeba8ce3920056f14bc22fac82218fa6fb4ae7b60db21` |
| 7 | `theorem` | [neg_pf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationEqOfAddPow.lean/declarations/neg-pf.md) | 50 | `result-track:4b1d0b036fcfc0be8d6ae024ca7fbd1f1e4b17219e3ec72e8aadc0797ded78dc` |
| 8 | `theorem` | [pf_mul_c](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationEqOfAddPow.lean/declarations/pf-mul-c.md) | 51 | `result-track:257c79900f143b4bbdd99fd66b1c3fc5d15dc3e951c5fde5bf44e1589d5459f9` |
| 9 | `theorem` | [c_mul_pf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationEqOfAddPow.lean/declarations/c-mul-pf.md) | 52 | `result-track:5461756a809e7694201ca289d67c22dd81e1cd3a8a3c528a30c82b3783209b6a` |
| 10 | `theorem` | [mul_pf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationEqOfAddPow.lean/declarations/mul-pf.md) | 53 | `result-track:7068c749230c5b696f09ec64620460190bf1ae7c7ca28409fcb45e3e93bf30cc` |
| 11 | `theorem` | [inv_pf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationEqOfAddPow.lean/declarations/inv-pf.md) | 54 | `result-track:921f1783cbbcdac6ad031583d052792fd51e255508d74a1291f2b81cbd217977` |
| 12 | `theorem` | [pf_div_c](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationEqOfAddPow.lean/declarations/pf-div-c.md) | 55 | `result-track:8cb203f6129d7108632f22f9bcd6022c6eb7649e58f3963eb73a67f093e2c35a` |
| 13 | `theorem` | [c_div_pf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationEqOfAddPow.lean/declarations/c-div-pf.md) | 56 | `result-track:ed92c3da90901e2bfdb5233221bc6ef63b75a1a2430c8851d2af3f5b1529eb6d` |
| 14 | `theorem` | [div_pf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationEqOfAddPow.lean/declarations/div-pf.md) | 57 | `result-track:4206253dbf6fa632f4f7dd0b0714b0e94082ad8daff64e5b9131dc686ece7993` |
| 15 | `inductive` | [Expanded](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationEqOfAddPow.lean/declarations/expanded.md) | 60 | `declaration-track:28723bb6560d0237540e2cf63bc181d6b095f1cdaab085a695e3a86beb458dd6` |
| 16 | `def` | [expandLinearCombo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationEqOfAddPow.lean/declarations/expandlinearcombo.md) | 74 | `declaration-track:9768aabab440f8a8d1f44701271cbcd8b67bf28618119a6539793060812b66be` |
| 17 | `theorem` | [eq_trans₃](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationEqOfAddPow.lean/declarations/eq-trans.md) | 124 | `result-track:c9f1549271712da66516872da6204a1345768a2592fc596fe5d938cb00681efa` |
| 18 | `theorem` | [eq_of_add](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationEqOfAddPow.lean/declarations/eq-of-add.md) | 126 | `result-track:2e7c5bce017904338816e848c1b6db82c942fea5cf7d541f801b41eebc570fd8` |
| 19 | `theorem` | [eq_of_add_pow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationEqOfAddPow.lean/declarations/eq-of-add-pow.md) | 129 | `result-track:d1c1da42a06eadeca1a1a0bc141afc665f33963b77f65bb01c09111638982016` |
| 20 | `def` | [elabLinearCombination'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationEqOfAddPow.lean/declarations/elablinearcombination.md) | 134 | `declaration-track:eb362f48932a4307405995fecd9aa9e6309f01db7136c577e5899f50bcc92357` |
| 21 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationEqOfAddPow.lean/declarations/syntax-source-edition-2.md) | 164 | `declaration-track:2987f0eeb5367bff7de56a765288da46a0ecd6e535a31a12ebafb7f2386ae91b` |
| 22 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationEqOfAddPow.lean/declarations/syntax-source-edition-3.md) | 170 | `declaration-track:d3e41c1f2792e92d93ab6f6e73dcc24310ada6e0ab1f08dd79589f04a08e9c27` |
| 23 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationEqOfAddPow.lean/declarations/syntax-source-edition-4.md) | 251 | `declaration-track:e1c95d7a703c44a3de2d1a2a934be6154efa3ade1fb7c026962d1b122ecb8c59` |
| 24 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationEqOfAddPow.lean/declarations/elab-rules.md) | 253 | `declaration-track:342eb09c110ea569fbff867c467eb2351f3746f561a803ac21bcd3c17d4d94b1` |
| 25 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationEqOfAddPow.lean/declarations/syntax.md) | 258 | `declaration-track:26e90037cdd960871ca1a60477d2112f4a31b662a1ab791afaf45e377bbbc74f` |
| 26 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinearCombinationEqOfAddPow.lean/declarations/elab-rules-source-edition-2.md) | 259 | `declaration-track:b4c7647de921469021f6192769af9f38ac0f2c0f52342dc93837f80f5b6904fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a10249cb9a4d9b7226034e200efa37dd9d3b154ad652e7f3e32e080eb17ae124 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant83839b3e8746e666e009388d3521d88dd46b0c8e26cfc9cc1dafd4347c480377.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant83839b3e8746e666e009388d3521d88dd46b0c8e26cfc9cc1dafd4347c480377.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
