# Verification target: Export Namespaced Lean

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8172ff8af17f74f5200353af4c9fd8f4bcdfd0b3",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Export/Variantceb263203a2e44a1eb9a1f14defe30b9b516592d7f2aae2ff40598c0c354acfa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ExportNamespacedLean.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ExportNamespacedLean.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8172ff8af17f74f5200353af4c9fd8f4bcdfd0b3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Export/Variantceb263203a2e44a1eb9a1f14defe30b9b516592d7f2aae2ff40598c0c354acfa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Export/Variantceb263203a2e44a1eb9a1f14defe30b9b516592d7f2aae2ff40598c0c354acfa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 6; external provider; requires a separately pinned dependency.
- `Std.Data.HashMap.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Lean.BinderInfo.toJson](../../../../../ComputerScience/AlgorithmsInComputerScience/ExportNamespacedLean.lean/declarations/lean-binderinfo-tojson.md) | 15 | `declaration-track:32f45f97c649de3b0328f5163642f0b66b68eafcd8586397702c73844479490e` |
| 2 | `def` | [Lean.ReducibilityHints.toJson](../../../../../ComputerScience/AlgorithmsInComputerScience/ExportNamespacedLean.lean/declarations/lean-reducibilityhints-tojson.md) | 21 | `declaration-track:a1bfab520d199d8ba3c3bfff648732864b04dabab9b06d95bcdbb0a17a513753` |
| 3 | `def` | [Lean.QuotKind.toJson](../../../../../ComputerScience/AlgorithmsInComputerScience/ExportNamespacedLean.lean/declarations/lean-quotkind-tojson.md) | 26 | `declaration-track:76e65ef5be4b1372a1174cb2b2df2dab3404422209c02338fcd6a300d09ac05e` |
| 4 | `def` | [Lean.DefinitionSafety.toJson](../../../../../ComputerScience/AlgorithmsInComputerScience/ExportNamespacedLean.lean/declarations/lean-definitionsafety-tojson.md) | 32 | `declaration-track:0aca551b2e8e6f780bc58fe2280da1f50c488ecf2222fca2b60fe248b70114c2` |
| 5 | `def` | [Lean.KVMap.toJson](../../../../../ComputerScience/AlgorithmsInComputerScience/ExportNamespacedLean.lean/declarations/lean-kvmap-tojson.md) | 37 | `declaration-track:48be422cc9663d42ed49e268f5f2ca06a79cd774a92425523de788bc06d7ed23` |
| 6 | `structure` | [Context](../../../../../ComputerScience/AlgorithmsInComputerScience/ExportNamespacedLean.lean/declarations/context.md) | 40 | `declaration-track:c25463b835a9fbf17950361ab2c750ab1860aed26d2a411ddec851abf88f6478` |
| 7 | `structure` | [State](../../../../../ComputerScience/AlgorithmsInComputerScience/ExportNamespacedLean.lean/declarations/state.md) | 43 | `declaration-track:a5758f224bd570ccb8fab8e56371b042c2601825900eb67b1884af829302b027` |
| 8 | `abbrev` | [M](../../../../../ComputerScience/AlgorithmsInComputerScience/ExportNamespacedLean.lean/declarations/m.md) | 56 | `declaration-track:2deafbc6722a77b0d303ac3c238fc5cf343f0a913052b78d8ba6f4adc58d7c58` |
| 9 | `def` | [M.run](../../../../../ComputerScience/AlgorithmsInComputerScience/ExportNamespacedLean.lean/declarations/m-run.md) | 58 | `declaration-track:9b140a57e7b9836b674be506b1fa8938eca5c1078c4a311cae0cae20c785c8dd` |
| 10 | `def` | [initState](../../../../../ComputerScience/AlgorithmsInComputerScience/ExportNamespacedLean.lean/declarations/initstate.md) | 70 | `declaration-track:f44e0cc7a54a646b7257c3c077eaccc20c9e5a76c3411361553bdd7c561fa256` |
| 11 | `def` | [getIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/ExportNamespacedLean.lean/declarations/getidx.md) | 92 | `declaration-track:dc8328e6bbb9bd06a953dff23c9482bad1ab3971e0b4d9ddb7ff4f6d272821d0` |
| 12 | `def` | [dumpName](../../../../../ComputerScience/AlgorithmsInComputerScience/ExportNamespacedLean.lean/declarations/dumpname.md) | 103 | `declaration-track:c855963370f2b803923937153e044499893d606d1b3d2350bea92f9a44b5256d` |
| 13 | `def` | [dumpLevel](../../../../../ComputerScience/AlgorithmsInComputerScience/ExportNamespacedLean.lean/declarations/dumplevel.md) | 121 | `declaration-track:1dc44970cac8b65a32a4d799aac2461a9e2108b6013af4aabd41677501e0fb3b` |
| 14 | `def` | [dumpUparams](../../../../../ComputerScience/AlgorithmsInComputerScience/ExportNamespacedLean.lean/declarations/dumpuparams.md) | 129 | `declaration-track:dc092b373c241cb05adba616759483446787b9a9b0c8252751a4c0e2433ead48` |
| 15 | `def` | [dumpNames](../../../../../ComputerScience/AlgorithmsInComputerScience/ExportNamespacedLean.lean/declarations/dumpnames.md) | 134 | `declaration-track:55c8153117ddecda079aa9862b60a4a81b8823897331996c05a1605aa4d6bf48` |
| 16 | `def` | [removeMData](../../../../../ComputerScience/AlgorithmsInComputerScience/ExportNamespacedLean.lean/declarations/removemdata.md) | 138 | `declaration-track:cb616dba05b5980e2629fa1e9c884bee8129de4318419a7fd718e793df5d820b` |
| 17 | `def` | [dumpExprAux](../../../../../ComputerScience/AlgorithmsInComputerScience/ExportNamespacedLean.lean/declarations/dumpexpraux.md) | 165 | `declaration-track:d19d3fc515c6f9ba0d10399ebcb531c5151f012519f0b0d3163147b7da44dff3` |
| 18 | `def` | [dumpExpr](../../../../../ComputerScience/AlgorithmsInComputerScience/ExportNamespacedLean.lean/declarations/dumpexpr.md) | 237 | `declaration-track:4ec1ca24ca3603321e6d97296eb2c01ba0d8f420cec4ef655496080fc4bd73e7` |
| 19 | `def` | [dumpConstant](../../../../../ComputerScience/AlgorithmsInComputerScience/ExportNamespacedLean.lean/declarations/dumpconstant.md) | 243 | `declaration-track:d2d6f26ab308df8975c7352633ed541c20a0a1f16c95e69bef9e3c84bbbf8fc1` |
| 20 | `def` | [exportMetadata](../../../../../ComputerScience/AlgorithmsInComputerScience/ExportNamespacedLean.lean/declarations/exportmetadata.md) | 424 | `declaration-track:38b0b46b9fc69343f8c619956bc91c2bdb113f3dca8a5c44dca861f85cefbff2` |
| 21 | `def` | [dumpMetadata](../../../../../ComputerScience/AlgorithmsInComputerScience/ExportNamespacedLean.lean/declarations/dumpmetadata.md) | 445 | `declaration-track:b41faa6379aba9bf47c6f6f4ba5baeb8ce1aa7900074d458376d3fe88fbd54fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f7d1cfa12b021fe982fab98eb38a265c2908ecd14142d3e976fc3b8633415296 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Export/Variantceb263203a2e44a1eb9a1f14defe30b9b516592d7f2aae2ff40598c0c354acfa.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Export/Variantceb263203a2e44a1eb9a1f14defe30b9b516592d7f2aae2ff40598c0c354acfa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
