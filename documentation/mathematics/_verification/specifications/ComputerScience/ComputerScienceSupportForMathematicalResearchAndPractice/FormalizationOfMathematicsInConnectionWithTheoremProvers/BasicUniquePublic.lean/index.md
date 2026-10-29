# Verification target: Basic Unique Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16c851553b352aba81178700ff13e21d66907d90",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variant346d5f7779c4ff1865627161e51e6797270556efc90789272406de98dc640fb1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicUniquePublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicUniquePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16c851553b352aba81178700ff13e21d66907d90`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variant346d5f7779c4ff1865627161e51e6797270556efc90789272406de98dc640fb1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variant346d5f7779c4ff1865627161e51e6797270556efc90789272406de98dc640fb1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Unique](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicUniquePublic.lean/declarations/unique.md) | 55 | `declaration-track:3f0991ba3e77a2abd9846abe3c6d9ed65713cc8b779393c61700fcf896aa7f5e` |
| 2 | `theorem` | [unique_iff_existsUnique](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicUniquePublic.lean/declarations/unique-iff-existsunique.md) | 61 | `result-track:6cf3469dafaf7c87b5565a20c50de2130167f7779b6df89b1d6177d60c05ffcb` |
| 3 | `theorem` | [unique_subtype_iff_existsUnique](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicUniquePublic.lean/declarations/unique-subtype-iff-existsunique.md) | 65 | `result-track:5e0c4e708a69ec8c2be6869ab29bba2e41b9607ca7e91989825849ef39b2b739` |
| 4 | `abbrev` | [uniqueOfSubsingleton](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicUniquePublic.lean/declarations/uniqueofsubsingleton.md) | 78 | `declaration-track:83c540d2d39bdca7a6ba5009139269de0c3fb1d4f6f193e81e513ff7591aac6d` |
| 5 | `instance` | [PUnit.instUnique](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicUniquePublic.lean/declarations/punit-instunique.md) | 82 | `declaration-track:959fffdc4b5e8f3246346fd54f2d3648ec75e3b48b65b235306e33de4da447bf` |
| 6 | `theorem` | [PUnit.default_eq_unit](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicUniquePublic.lean/declarations/punit-default-eq-unit.md) | 87 | `result-track:55eb1932e1ef0a4121aa3cb2d26d6a0704a636d2865ce0354c0dea930b56a8ff` |
| 7 | `def` | [uniqueProp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicUniquePublic.lean/declarations/uniqueprop.md) | 92 | `declaration-track:701482e98a6319b515b15df92c6d1c08a13e448319853f43382d4ec9797f111b` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicUniquePublic.lean/declarations/instance-source-edition-3.md) | 96 | `declaration-track:6b96f8b981801c908013e56101dd320a13f5ef8d8250e35cd4f0fa596fb2b587` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicUniquePublic.lean/declarations/instance-source-edition-4.md) | 106 | `declaration-track:d10d6e00486231232f8df506410832b1d3bd20418925a068ad10f66db5893fcd` |
| 10 | `theorem` | [eq_default](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicUniquePublic.lean/declarations/eq-default.md) | 109 | `result-track:b8a75e28fdf42100922ea3421cbbaf73b6f57955a75fa32b593733ba50bf4c16` |
| 11 | `theorem` | [default_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicUniquePublic.lean/declarations/default-eq.md) | 112 | `result-track:7db662ed0650e1d23b7b4b2c44f9fad76718bac854577fdbfc0029a8f2efd555` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicUniquePublic.lean/declarations/instance-source-edition-2.md) | 116 | `declaration-track:1c71d6a57bc38bf28e47e620730155a85bbb1177c4e251179d2c2bcedb5b4c0c` |
| 13 | `theorem` | [forall_iff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicUniquePublic.lean/declarations/forall-iff.md) | 119 | `result-track:c29a9b798940d6935a3c9dd80220f3eaaa4471d6bcca8d1362cb1aa778a09a2b` |
| 14 | `theorem` | [exists_iff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicUniquePublic.lean/declarations/exists-iff.md) | 122 | `result-track:dd7e0aa3f8bbd7977e82cf73587c7ecbb5b93eefa407a8271364d9c188fb8988` |
| 15 | `theorem` | [subsingleton_unique'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicUniquePublic.lean/declarations/subsingleton-unique-source-edition-2.md) | 130 | `result-track:ed466333bdce0ed6cf3c95f000a0910afdce66e957942b4b87dcd7d119d162af` |
| 16 | `instance` | [subsingleton_unique](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicUniquePublic.lean/declarations/subsingleton-unique.md) | 133 | `declaration-track:8ad9d008a7fa892120a029eb0fe402f1008461b4bc948e82449a9f0c6ce0cffc` |
| 17 | `abbrev` | [mk'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicUniquePublic.lean/declarations/mk.md) | 138 | `declaration-track:1f9dc5b0a1aa429b8e732f488d0a8d45a38eb75965fe9056332b7be60b00c752` |
| 18 | `theorem` | [nonempty_unique](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicUniquePublic.lean/declarations/nonempty-unique.md) | 143 | `result-track:1f115bf40ec0993c1a419ce1f60576f02fdb68569743a490b8536aee0753a393` |
| 19 | `theorem` | [unique_iff_subsingleton_and_nonempty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicUniquePublic.lean/declarations/unique-iff-subsingleton-and-nonempty.md) | 147 | `result-track:01cebe2e147f3632106dc887e61d635a133827b5e56d5859305496ee2b2a3b42` |
| 20 | `theorem` | [Pi.default_def](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicUniquePublic.lean/declarations/pi-default-def.md) | 155 | `result-track:ab9d9b2b5d528428bea4ac2afb5956c918e80fa85338071082e8284a12a6cf4b` |
| 21 | `theorem` | [Pi.default_apply](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicUniquePublic.lean/declarations/pi-default-apply.md) | 159 | `result-track:20067fbf1b259ad9179772f25d81b67a756b59b08b14bf6a567a00adb829c82d` |
| 22 | `instance` | [Pi.unique](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicUniquePublic.lean/declarations/pi-unique.md) | 163 | `declaration-track:f071ebcccf9e9ad8f64e0128b6db15804ba0d18d8ae31a2300f8113f629ac6c1` |
| 23 | `instance` | [Pi.uniqueOfIsEmpty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicUniquePublic.lean/declarations/pi-uniqueofisempty.md) | 167 | `declaration-track:80ececbd45ca9d89e24a4f8c52a02d547031e6c350737615e66512fbfc236643` |
| 24 | `theorem` | [eq_const_of_subsingleton](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicUniquePublic.lean/declarations/eq-const-of-subsingleton.md) | 171 | `result-track:3e4cd87f137f33c8a18c312008b588d2fa5355a2c0a2782fd3c678d35a735d60` |
| 25 | `theorem` | [eq_const_of_unique](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicUniquePublic.lean/declarations/eq-const-of-unique.md) | 175 | `result-track:307d540ee2da85b434f9c8c840d4f7ffa2293ad1e04e567619e4fc1697b93e0d` |
| 26 | `theorem` | [heq_const_of_unique](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicUniquePublic.lean/declarations/heq-const-of-unique.md) | 178 | `result-track:7faeb44cd9991ec7e37f9b1ee8b8da096689d27f0cec937d3443e88c7f4c29b6` |
| 27 | `theorem` | [Injective.subsingleton](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicUniquePublic.lean/declarations/injective-subsingleton.md) | 188 | `result-track:247a77df9c0255bc98edfe7546bedaa016609903e148098e9cda32ec11aa45e9` |
| 28 | `theorem` | [Surjective.subsingleton](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicUniquePublic.lean/declarations/surjective-subsingleton.md) | 193 | `result-track:c8ea47ae63ec1cd5a28f07c180d81bddb50f95217a9047aaa6c1cc236ed70d9e` |
| 29 | `def` | [Surjective.unique](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicUniquePublic.lean/declarations/surjective-unique.md) | 199 | `declaration-track:733b6dc0acb2e2bc6807640d136faa73af5daa9279b1fdeb4d4af5bbc9b0e1af` |
| 30 | `def` | [Injective.unique](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicUniquePublic.lean/declarations/injective-unique.md) | 205 | `declaration-track:751e79ad19725866a1bf852600738f9faa9b680f95f89052366fe7de100e7f5a` |
| 31 | `def` | [Surjective.uniqueOfSurjectiveConst](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicUniquePublic.lean/declarations/surjective-uniqueofsurjectiveconst.md) | 210 | `declaration-track:2077f4c3a8e808108bdf96c4f8bafe08f18d7c020eaadcde5f979e9ce251f996` |
| 32 | `def` | [uniqueElim](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicUniquePublic.lean/declarations/uniqueelim.md) | 221 | `declaration-track:8aeef618e3fa4a25c77a681faba2b115085ccdb8225c0253a291175f0cfc1956` |
| 33 | `theorem` | [uniqueElim_default](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicUniquePublic.lean/declarations/uniqueelim-default.md) | 226 | `result-track:e08e523c50b8d2df5cd7275c84b67efabb9394649a5cbe762e97a3ed2a4603fb` |
| 34 | `theorem` | [uniqueElim_const](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicUniquePublic.lean/declarations/uniqueelim-const.md) | 230 | `result-track:aa3da63a29b9febd67bf02f74d16774ee18dd25ca5119e8066a358f21a6bae78` |
| 35 | `theorem` | [Unique.bijective](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicUniquePublic.lean/declarations/unique-bijective.md) | 238 | `result-track:c38b1a37a84fb627614f6adf96359c2b5414060537eaabe3e2c8afb957a34610` |
| 36 | `theorem` | [subsingleton_iff_isEmpty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicUniquePublic.lean/declarations/subsingleton-iff-isempty.md) | 245 | `result-track:01be60f68eca75c83f792dd38943389090adf330384a43a0ff2c91fe6765c86c` |
| 37 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicUniquePublic.lean/declarations/instance.md) | 250 | `declaration-track:0163b6d88be3a103f7983374bf4d1454f81a98a2e9d3cb3061abf572ab3ece17` |
| 38 | `instance` | [Unique.subtypeEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicUniquePublic.lean/declarations/unique-subtypeeq.md) | 257 | `declaration-track:47f18b4c8fd35f2eed35e94a07b1e5b2d4accc3dede2a346390436f689eedf1b` |
| 39 | `instance` | [Unique.subtypeEq'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicUniquePublic.lean/declarations/unique-subtypeeq-source-edition-2.md) | 261 | `declaration-track:75eb5241c3f93d5dac54f01513f9cc8f8e33bdabd6cc9a93d2358adcfb4f37ce` |
| 40 | `instance` | [Fin.instUnique](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicUniquePublic.lean/declarations/fin-instunique.md) | 267 | `declaration-track:2f984ec0a441927b58049b480207c7424f2b07801382a13645c19aaf6a838029` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=459679c32aca22ac7def07aadda956e8d3f9130af9346be17fbfbf3b3b213dab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variant346d5f7779c4ff1865627161e51e6797270556efc90789272406de98dc640fb1.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variant346d5f7779c4ff1865627161e51e6797270556efc90789272406de98dc640fb1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
