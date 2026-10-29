# Verification target: RBArray Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a11deca77ab39660e95772b2f847cd6781979b2",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBArray/Variant1a543959ed20d90794feacd2f307045ff229db72e69b92813816e1d8dcb7e1ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RBArrayNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RBArrayNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a11deca77ab39660e95772b2f847cd6781979b2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBArray/Variant1a543959ed20d90794feacd2f307045ff229db72e69b92813816e1d8dcb7e1ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBArray/Variant1a543959ed20d90794feacd2f307045ff229db72e69b92813816e1d8dcb7e1ce.lean.json)

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
| 1 | `structure` | [RBArray](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RBArrayNamespacedPublic.lean/declarations/rbarray.md) | 27 | `declaration-track:51ddb451016bb36187700ee5ac3474305d8b24af56eee2849c94c738b1b37005` |
| 2 | `def` | [empty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RBArrayNamespacedPublic.lean/declarations/empty.md) | 33 | `declaration-track:5f9d98a2a5ff2d535ece3d0b45545ec793f07f9b516bf9e15475cca6c0be78e2` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RBArrayNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 36 | `declaration-track:8821d7239f09055033f69eee01f1293d63cd6ac247a5123590c813f06a008f9c` |
| 4 | `def` | [mkEmpty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RBArrayNamespacedPublic.lean/declarations/mkempty.md) | 38 | `declaration-track:eff970f9949d4a9c7ec96345c574abb54f3f521d5362f1c19ecbf57e770363c3` |
| 5 | `def` | [find?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RBArrayNamespacedPublic.lean/declarations/find.md) | 41 | `declaration-track:6efde603d19f1fafd4af8f14506897bbdbb94de3b300fa76a947dc931fb8900d` |
| 6 | `def` | [contains](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RBArrayNamespacedPublic.lean/declarations/contains.md) | 44 | `declaration-track:25c4cfc6b0db89b6af76685da58a5486c40d308ca0000a62fb06141975538bf2` |
| 7 | `def` | [insert](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RBArrayNamespacedPublic.lean/declarations/insert.md) | 48 | `declaration-track:d5296af8910bddf898f84efe184e2c47772d19d1dcd91cd9a68e89769bde8153` |
| 8 | `def` | [all](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RBArrayNamespacedPublic.lean/declarations/all.md) | 54 | `declaration-track:43db745c421a0071d449ebbd1119c182cdc55c015bd496039597b8b4b6c9426c` |
| 9 | `def` | [any](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RBArrayNamespacedPublic.lean/declarations/any.md) | 57 | `declaration-track:685aaf7bdf02a76617e758f487355641220bcc779c67217610ca65a696d4bf12` |
| 10 | `def` | [foldl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RBArrayNamespacedPublic.lean/declarations/foldl.md) | 60 | `declaration-track:8606a1175a68df38dd5300317ddf5628aa9ec612d69a8a2a305f04e340711db0` |
| 11 | `def` | [foldlM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RBArrayNamespacedPublic.lean/declarations/foldlm.md) | 63 | `declaration-track:3d57e0a9c7700b9af3216838f9565bc6f23448d241031343a1734bcb177ecfbd` |
| 12 | `def` | [foldr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RBArrayNamespacedPublic.lean/declarations/foldr.md) | 66 | `declaration-track:6904ad8d65ebe486b5fa38ec35be864d9b35b0e6e073304a14eee6134bb9b6d9` |
| 13 | `def` | [foldrM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RBArrayNamespacedPublic.lean/declarations/foldrm.md) | 69 | `declaration-track:adedbf7e018855687106bd2084ca764c2ed57be08f0128f2440830bf7f182928` |
| 14 | `def` | [forM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RBArrayNamespacedPublic.lean/declarations/form.md) | 72 | `declaration-track:7df3be9b06f7176fecbbc27768b4ddad37662239d17558523124611be5b49872` |
| 15 | `def` | [forIn](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RBArrayNamespacedPublic.lean/declarations/forin.md) | 75 | `declaration-track:64af732c9c3b155e109bfc1d1f273f2b659981aee58f904f1fdc7481fb63ceda` |
| 16 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RBArrayNamespacedPublic.lean/declarations/instance.md) | 79 | `declaration-track:51cadae2ead915a9ac9d1b54aec00c884895c7bebb925e3c55de259a8ce7b5ae` |
| 17 | `def` | [mkRBArray](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RBArrayNamespacedPublic.lean/declarations/mkrbarray.md) | 83 | `declaration-track:3be3e15f026884943226e4794386dea2f22467cb5e59d2a3dc5c3aae7104c48b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=263545b71347dba1dd49fca17b0a93feb004288db1985e6d393c095ff483de67 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBArray/Variant1a543959ed20d90794feacd2f307045ff229db72e69b92813816e1d8dcb7e1ce.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBArray/Variant1a543959ed20d90794feacd2f307045ff229db72e69b92813816e1d8dcb7e1ce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
