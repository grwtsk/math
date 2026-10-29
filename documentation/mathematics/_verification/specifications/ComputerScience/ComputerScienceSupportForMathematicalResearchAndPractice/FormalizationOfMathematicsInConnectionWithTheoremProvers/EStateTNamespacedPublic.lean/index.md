# Verification target: EState TNamespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf173ce44427d3cb97532a55645876d2a113609f",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateT/Variantc6832d0995ee23e5b87803968b4189dc6795363ddbb199fc4342e2db9f2c48fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf173ce44427d3cb97532a55645876d2a113609f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateT/Variantc6832d0995ee23e5b87803968b4189dc6795363ddbb199fc4342e2db9f2c48fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateT/Variantc6832d0995ee23e5b87803968b4189dc6795363ddbb199fc4342e2db9f2c48fd.lean.json)

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
| 1 | `inductive` | [EResult](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/eresult.md) | 27 | `declaration-track:f383224264cf97b6de76b819c68cdd5da9eb6b814441359f572a92dbec55f5ab` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 35 | `declaration-track:4d2d00e800c8205c50ddf9364cd918f7567634642a22675d8007c5dc7760fdd2` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/instance.md) | 38 | `declaration-track:1a81776e1d0629e703335527f744179c5cb0f794db0800e4158f82441982bfb7` |
| 4 | `def` | [state](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/state.md) | 42 | `declaration-track:9c7333f483493b88e0cd59c555ee71f6afa4c13912c69131e5633be4fe26b4f7` |
| 5 | `def` | [modifyState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/modifystate.md) | 46 | `declaration-track:3fef3adffd48ca35ce2c5361fa643ee72f2c5b8e89768aa122917b8ebd4944b6` |
| 6 | `def` | [setState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/setstate.md) | 50 | `declaration-track:ec29806c8867b2f59513e470c81e738f3a7fd561e74d63f5d12a8232d1e3d41d` |
| 7 | `def` | [toProd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/toprod-source-edition-2.md) | 54 | `declaration-track:b981cb82246c68faafd81d0b7cb3dad819d28408b33b28458e24b049e2d20633` |
| 8 | `def` | [toProd?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/toprod.md) | 59 | `declaration-track:71b924d44d4a4f36a86c2bec3333fe26cce283a72e3c8429f42a4e1fb76086a1` |
| 9 | `def` | [result?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/result.md) | 64 | `declaration-track:9dc15e1dc49ec2c8ffca8d4d9c4195da1dd964845044fe29cb471642cbed5a21` |
| 10 | `def` | [error?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/error.md) | 69 | `declaration-track:db3f4d56685149707f09cfe1cf3caf6cf4f51ec3a82acbc4b46b0ec9fec33499` |
| 11 | `def` | [toExcept](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/toexcept.md) | 74 | `declaration-track:449b6d4275b210023f0cd586a23e568676eaf0cebdec9321315d1f32e6589cda` |
| 12 | `def` | [map](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/map-source-edition-2.md) | 79 | `declaration-track:2c561bacf2c5d7f171efe6f1b88ec00fe56089bcb867abb060241ab64be8d732` |
| 13 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 83 | `declaration-track:ad78dfb50e2f314ccc64da60448bcdd6f7c7abbed483b08e76efb92a716428ee` |
| 14 | `def` | [toEStateMResult](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/toestatemresult.md) | 86 | `declaration-track:7c862713d05b2509c26cdcdfee7e124c3eed9f2d863a7f392da8866bf8125eb6` |
| 15 | `def` | [ofEStateMResult](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/ofestatemresult.md) | 90 | `declaration-track:8ba0de0832e917a00e6c48cb9faf06e72ba386a60e106db1167266692bc9425d` |
| 16 | `def` | [EStateT](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/estatet.md) | 100 | `declaration-track:3f7b7e9c0a1b863950126f5bcbd57bded70be107d293deba6583218714e919ea` |
| 17 | `def` | [mk](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/mk.md) | 108 | `declaration-track:c195e8dbddad10b92eb7938c19208af4cdee7484ab1a16822a7ff61b6b9e718a` |
| 18 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 111 | `declaration-track:e6461580c2f6b0d2ef6abb087a51eceb74618389b5e39eed47f22ae94b140249` |
| 19 | `def` | [run](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/run.md) | 116 | `declaration-track:27d3afe0ccd6a2f002ea5aad76f7a2a1698fc15b7109e21a1dcdc1a2dfe33743` |
| 20 | `def` | [run'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/run-source-edition-4.md) | 124 | `declaration-track:a6dde9c542d2697204519e8b53f02ad2ce69c8a2b5bd4e4abd8f1aaa60baffd5` |
| 21 | `def` | [toStateT](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/tostatet-source-edition-2.md) | 128 | `declaration-track:f421546c30c02a6233486e38ab0f26086ebcb64eeef67039493576a2a67effdd` |
| 22 | `def` | [toStateT?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/tostatet.md) | 132 | `declaration-track:04061567a8628f25a71a85e4d5c26fe2f978b2d31b74c8b0cbfd7454ca0a26fc` |
| 23 | `def` | [run?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/run-source-edition-2.md) | 140 | `declaration-track:284a18bd6111a0615d1e0b0b1e503c132b08bc84385c8f7f8c2c513e73431d6e` |
| 24 | `def` | [run?'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/run-source-edition-3.md) | 148 | `declaration-track:4ffb25609f4d1af2780b88d41734976ea5a50f08b0f5e0e81dfeca2f826d5b85` |
| 25 | `def` | [catchExceptions](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/catchexceptions.md) | 151 | `declaration-track:798cd69bcfce0502afbf3c6385a67d36e407b6b572139cd368aa259f11b37a6f` |
| 26 | `def` | [lift](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/lift.md) | 160 | `declaration-track:659d308eb0e122052cac45ea4f45b9a1ec95bda0b0d7ac9db1d74a5fe7909c6d` |
| 27 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 163 | `declaration-track:2fa622d2e2e2286f6f12f7d456eca056c75fd876a0b38ab31c02e5534e15ece1` |
| 28 | `def` | [pure](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/pure.md) | 167 | `declaration-track:047d6bb563bbcc07d7ac391b5d5b369e8ce87b9657ac50004d754fb059e5e3af` |
| 29 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 170 | `declaration-track:3b1503ba27361a56ff654e8c60808c50ddf6c278e588f2f24305427d28bc361e` |
| 30 | `def` | [map](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/map.md) | 175 | `declaration-track:26aa6001dd405db5f397c77bac3e9ad010e5ec7139f0170de6dd5ec7d28be5d6` |
| 31 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 180 | `declaration-track:74ac02a4c08decd7f7636bdec0e74a3cde6f4bc003db68e7ac3c505c6f8ae5e9` |
| 32 | `def` | [bind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/bind.md) | 185 | `declaration-track:5d1ab783d153e07b5f5f8d902108c1a17bd9ca5c401cd1f7e9811c520516c87f` |
| 33 | `def` | [seqRight](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/seqright.md) | 192 | `declaration-track:9e98718bc7851857e9a80068427f03a8c73f2585ff2ba620a9ba95ef2ef621c4` |
| 34 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 198 | `declaration-track:e66028bb3ec8c1773c64785b07452bcbd8db3dbd6ee8bf75a793961da059f158` |
| 35 | `def` | [set](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/set.md) | 204 | `declaration-track:c528a61a7a4f2b4a51219d5ec926c1f8fd1ca2e05eff18f193d8fa6cf4f0e878` |
| 36 | `def` | [get](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/get.md) | 209 | `declaration-track:a93e8ffccc505aae0ef41d37b40287550bd79f554dd8589e732ea4b88c9057ab` |
| 37 | `def` | [modifyGet](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/modifyget.md) | 214 | `declaration-track:92e7e6861c2022c93b579d93d0385a56131e7931d88a2d6275ce7bc4ad8133fc` |
| 38 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 217 | `declaration-track:e14b3c1dee63e904c447b3b99a411a5ef0b2b1f8f5f76e1c17e1035b54963e16` |
| 39 | `def` | [throw](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/throw.md) | 224 | `declaration-track:076f9d718a9d4d9946b0e2ee334476e8acbe27cff5fa77d509d4f82982e92170` |
| 40 | `def` | [tryCatch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/trycatch.md) | 228 | `declaration-track:5bade610139d947ec911bff93ead1316d0682754585d83d002b31fedb82dd2f2` |
| 41 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 233 | `declaration-track:bd1a8b9e61b80a6892d325d8848ff59a328c5d2722a4935b0ad8dee396035438` |
| 42 | `def` | [orElse](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/orelse.md) | 238 | `declaration-track:68c70b303787966a604eacc254d48e3baba9e793170ba3f56e04743d92f038b5` |
| 43 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 243 | `declaration-track:1b0fa550d7e46b5451e7769e2f756ebb7d29d955a81174acaf2433aaca3f5195` |
| 44 | `def` | [adaptExcept](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/adaptexcept.md) | 248 | `declaration-track:bd6094d71763ca7b2df3311412a3109b7612c39cb8ae25bb2ba2c1eb94e9bbbb` |
| 45 | `def` | [tryFinally'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/tryfinally.md) | 254 | `declaration-track:ff01c16732714e86d5c810eedfd406b0a596a69b980d5e3d89dff6c629d2c180` |
| 46 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 267 | `declaration-track:e7eb170e957e06a971df8c3c225d1be314356c24880b7f3ae63c6e9c6f2e9df2` |
| 47 | `def` | [ofEStateM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/ofestatem.md) | 271 | `declaration-track:026a9dba7b0127c39d380b49bc1ca7763e7a8a201d6a6119c8c0845e3ea1c679` |
| 48 | `def` | [toEStateM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EStateTNamespacedPublic.lean/declarations/toestatem.md) | 275 | `declaration-track:268f5eda729b58bd6755f852ec5aedbc4192a1b71f0c86a6bb099cdc36536fa3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=846367b97c488f553f6070d7e5382f6587d6c76c6b2f6d1a3c431950f97c4994 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateT/Variantc6832d0995ee23e5b87803968b4189dc6795363ddbb199fc4342e2db9f2c48fd.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateT/Variantc6832d0995ee23e5b87803968b4189dc6795363ddbb199fc4342e2db9f2c48fd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
