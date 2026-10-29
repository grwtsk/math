# Verification target: Module

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d15f818aa9f4a5e159709c4f5d2d14c0b7548f6",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantcca9606dd7369c9cc3fa3782a27320e97cfba79a29021595bf883ebbeb225532.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d15f818aa9f4a5e159709c4f5d2d14c0b7548f6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantcca9606dd7369c9cc3fa3782a27320e97cfba79a29021595bf883ebbeb225532.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantcca9606dd7369c9cc3fa3782a27320e97cfba79a29021595bf883ebbeb225532.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Tower` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.GroupWithZero.Action` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AtomM` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [NF](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/nf.md) | 45 | `declaration-track:ca1215ca44b98fdf43f51f3ff30047447b9a923b36d200ec5433d20e2252ef35` |
| 2 | `def` | [cons](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/cons.md) | 53 | `declaration-track:683374c9decf549d5a150fd3d1c01fe2c56f5f94a55ae0c7d9f061957863ec46` |
| 3 | `def` | [eval](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/eval.md) | 60 | `declaration-track:7732afdbee6ad1f6368e2f3b148108e48fe6886a2dcaa858d2c66859781df04f` |
| 4 | `theorem` | [eval_cons](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/eval-cons.md) | 62 | `result-track:60921f2d920bea602442a9b8697ac580cd7b4ad6487dfd69bb2953cb0c6b7c8a` |
| 5 | `theorem` | [atom_eq_eval](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/atom-eq-eval.md) | 68 | `result-track:cfb38dca3c71d268964d297e592836f30d84cae24fbc624c61c4e82ba9843323` |
| 6 | `theorem` | [zero_eq_eval](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/zero-eq-eval.md) | 71 | `result-track:3e23a3116c5ba96a4cd84f9c846294c23c4330e02fb63d8013498e4a3529e64d` |
| 7 | `theorem` | [add_eq_eval₁](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/add-eq-eval-source-edition-2.md) | 73 | `result-track:9cc673beb03836fde61637ede6e5fd79f2799c4bbd9f6c99f922b8dc7952bf85` |
| 8 | `theorem` | [add_eq_eval₂](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/add-eq-eval.md) | 78 | `result-track:9ab076eb6010d3d10652af1886d5d5389e86d4e5f9b77a4468c5285e621be755` |
| 9 | `theorem` | [add_eq_eval₃](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/add-eq-eval-source-edition-3.md) | 87 | `result-track:a9a49f088f2d877e0e83461060607b43209d6ae9fb4c1d9f8ca514fa1a42dace` |
| 10 | `theorem` | [add_eq_eval](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/add-eq-eval-source-edition-4.md) | 96 | `result-track:bcd64be01d8ac39a20d235e035117ed8996ca51d0282412f4428f35a155700e8` |
| 11 | `theorem` | [sub_eq_eval₁](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/sub-eq-eval-source-edition-2.md) | 103 | `result-track:28e3886dc22b430b21384a35710e2ce16db22830e29b6ee9f5a810d23b7c0213` |
| 12 | `theorem` | [sub_eq_eval₂](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/sub-eq-eval-source-edition-3.md) | 108 | `result-track:7787eacb627908995e9012193705d155cbab2d5156c1eed5988f86786244e98c` |
| 13 | `theorem` | [sub_eq_eval₃](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/sub-eq-eval-source-edition-4.md) | 117 | `result-track:eb0c917a756a517641331cf662589ee712c5ec736c2d64a5f7f8f5fe46c605af` |
| 14 | `theorem` | [sub_eq_eval](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/sub-eq-eval.md) | 124 | `result-track:19065cc167d1e9566bf52219417f6d9d3834a5f4d7abb1e81f279d7e802931c4` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/instance.md) | 133 | `declaration-track:2365695acb8e7b94195023a6af70686bb5def6d9ebcc6fbb6b61c3a88e853b21` |
| 16 | `theorem` | [eval_neg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/eval-neg.md) | 136 | `result-track:80e3e5a1031db522ecc71b4ffd84e86f098164342f0cb1bf8a8ca6c36c231791` |
| 17 | `theorem` | [zero_sub_eq_eval](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/zero-sub-eq-eval.md) | 142 | `result-track:fb502cdfe3c9ae6f921796fed3529974d3decd247226e0350a9454c3ef027f15` |
| 18 | `theorem` | [neg_eq_eval](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/neg-eq-eval.md) | 146 | `result-track:f31f728ca9fde8a3159ae1fef0e5a8157e5f3c1bf8522cc4d37b7a9fdfc6aeea` |
| 19 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/instance-source-edition-2.md) | 151 | `declaration-track:260277c2187da05e61978f96f80762f486e4e19632c8f76c79f014b2649b0162` |
| 20 | `theorem` | [smul_apply](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/smul-apply.md) | 154 | `result-track:6d45a577ae3a152ef6cf60179494d22e7d661fbac42050ce80035a5b1b351ae4` |
| 21 | `theorem` | [eval_smul](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/eval-smul.md) | 157 | `result-track:3ea2c2c42e819cd64708688abb0ed9bb3184a4f393dec4b99dd7628de939ce39` |
| 22 | `theorem` | [smul_eq_eval](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/smul-eq-eval.md) | 165 | `result-track:d7e3f404690df0855967624868dd46e6faca41795fd2102c40dada44400f1ce2` |
| 23 | `theorem` | [eq_cons_cons](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/eq-cons-cons.md) | 172 | `result-track:b6c41f7746655e406553fbd56a93618881c97a1a18d548a27309683dad6e5e57` |
| 24 | `theorem` | [eq_cons_const](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/eq-cons-const.md) | 178 | `result-track:aaa562e180a0ca67237ca4b163474fb4d19599bf79f634fed885574cb1c0ff81` |
| 25 | `theorem` | [eq_const_cons](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/eq-const-cons.md) | 184 | `result-track:7443a5db721e2bf29d5d4ffa44e953dfef074dcf64759535d844a4524a9a7ff1` |
| 26 | `theorem` | [eq_of_eval_eq_eval](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/eq-of-eval-eq-eval.md) | 190 | `result-track:522548f0a2c76341726af1544f4646c0a4003c614eaa51bab998e42db8eb513b` |
| 27 | `def` | [algebraMap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/algebramap.md) | 202 | `declaration-track:907469b5f9269819b3177fbaa8f646b4e07f4228d9f662cf3337818f3d7d1934` |
| 28 | `theorem` | [eval_algebraMap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/eval-algebramap.md) | 205 | `result-track:c74fb75b1ccd717476b3b2cd11be910a348efc36144b5ee68ec3470a7ade3f30` |
| 29 | `abbrev` | [qNF](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/qnf.md) | 232 | `declaration-track:12606373a76d7d85347810eb0c4dccb01db845aa7489db1df95bc8fd699679e5` |
| 30 | `def` | [toNF](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/tonf.md) | 241 | `declaration-track:c45ff432991e0aaba6915ab24168f99ae4700696d50e08b1d267a6c8b6e404df` |
| 31 | `def` | [onScalar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/onscalar.md) | 249 | `declaration-track:7c3cecc6b759568b891730e1ee5b6762c05e70c438b8bd26136b2185c8159a4f` |
| 32 | `def` | [add](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/add.md) | 265 | `declaration-track:a361ef1c3ef60fe23343c87b8c37ace0d0bf43b53fe562071d3e22dd2bf195b1` |
| 33 | `def` | [mkAddProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/mkaddproof.md) | 280 | `declaration-track:830957896b0306a8c59c3df68d37a4676588d6b9d53cb9b68d957b2c356b0162` |
| 34 | `def` | [sub](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/sub.md) | 310 | `declaration-track:a8a3c1bc626db912db892d6b4c88e7ec39fd522789e49f7167780f03b66b95a5` |
| 35 | `def` | [mkSubProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/mksubproof.md) | 325 | `declaration-track:2a8963e1ef0a43605f8dea4e369996fd8efe3a766edd18bd13fa865ebb4b3871` |
| 36 | `def` | [matchRings](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/matchrings.md) | 355 | `declaration-track:d0a3943a4023d04f688e6654fe89c01c087870f7e3e6bee63387ed73c3bf28da` |
| 37 | `def` | [parse](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/parse.md) | 410 | `declaration-track:f7e88fb0936fbd40cc5bbb4b91eb61d5a788ddca4591b7d7da7e952d38a30587` |
| 38 | `def` | [reduceCoefficientwise](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/reducecoefficientwise.md) | 477 | `declaration-track:3d2b711f71467f195ce125b3ac115c9fce7c8092f64d63cca8563684e9b36613` |
| 39 | `def` | [matchScalarsAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/matchscalarsaux.md) | 519 | `declaration-track:07b787e20b33e266be6c8f090334b10a53716925801369345b67ac8c1b44f840` |
| 40 | `def` | [algebraMapThms](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/algebramapthms.md) | 561 | `declaration-track:5b3f113503fbc429e0e5d83d75e768a1a80a06d76d896b1bb5af69a972570217` |
| 41 | `def` | [postprocess](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/postprocess.md) | 568 | `declaration-track:070cbef7c26d2eeb039090ec69900d53041148096b698926eaf3631913fe18a1` |
| 42 | `def` | [matchScalars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/matchscalars.md) | 584 | `declaration-track:3334748b214b2a52d53f2241ad9bb7fa87c3d642a9d46e4cdcb6c959abcb2586` |
| 43 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/elab-source-edition-2.md) | 620 | `declaration-track:7d6cc2a756f9698f2cd3ef6c5d8185839179f42fd7a750846d8ded9ac6b354db` |
| 44 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/Module.lean/declarations/elab.md) | 650 | `declaration-track:44d19fb2fec7655a62adb0049577c5129bb66839484b9ee0e9a7e02cf1b3da66` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=35a74f3882d28cb01774fb1a91dc0e11972a3b41a39fe24f75e173a4ce274d06 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantcca9606dd7369c9cc3fa3782a27320e97cfba79a29021595bf883ebbeb225532.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Module/Variantcca9606dd7369c9cc3fa3782a27320e97cfba79a29021595bf883ebbeb225532.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
