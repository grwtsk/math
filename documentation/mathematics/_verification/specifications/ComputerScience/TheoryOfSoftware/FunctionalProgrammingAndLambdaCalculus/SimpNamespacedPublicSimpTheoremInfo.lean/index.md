# Verification target: Simp Namespaced Public Simp Theorem Info

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "958785cbd78c2dd6e71ca6ae9af50cb3888cfd49",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant4b6e51033fe43d776aec3fcdd191d1296d9e0274e9620c448ce1de97abee333e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpNamespacedPublicSimpTheoremInfo.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpNamespacedPublicSimpTheoremInfo.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `958785cbd78c2dd6e71ca6ae9af50cb3888cfd49`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant4b6e51033fe43d776aec3fcdd191d1296d9e0274e9620c448ce1de97abee333e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant4b6e51033fe43d776aec3fcdd191d1296d9e0274e9620c448ce1de97abee333e.lean.json)

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
| 1 | `structure` | [SimpTheoremInfo](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpNamespacedPublicSimpTheoremInfo.lean/declarations/simptheoreminfo.md) | 37 | `declaration-track:1f28d04ebe878158e8ce77abe37b7bfe2a405c8b9cfdc5492a0543c4a24cd4e0` |
| 2 | `def` | [isCondition](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpNamespacedPublicSimpTheoremInfo.lean/declarations/iscondition.md) | 47 | `declaration-track:f615aa752de8365f8aaa8d7aa3b6e169e7be431a8c0477bbb3b085198f191550` |
| 3 | `def` | [withSimpTheoremInfos](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpNamespacedPublicSimpTheoremInfo.lean/declarations/withsimptheoreminfos.md) | 53 | `declaration-track:611f67525cb9f17a4d203664485309870d1f3ce2447c3fc4dc892cbf42b93937` |
| 4 | `register_option` | [linter.simpNF.respectTransparency](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpNamespacedPublicSimpTheoremInfo.lean/declarations/linter-simpnf-respecttransparency.md) | 76 | `declaration-track:1eb78840e808e0ecc715fb8addd1e501e664052fecc82880426ac849d4a71492` |
| 5 | `def` | [isSimpEq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpNamespacedPublicSimpTheoremInfo.lean/declarations/issimpeq.md) | 84 | `declaration-track:47c5fbedaf6732371ace439c6713d4b30925f2b9f36656a4e6baf4ba7f8a528c` |
| 6 | `def` | [checkAllSimpTheoremInfos](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpNamespacedPublicSimpTheoremInfo.lean/declarations/checkallsimptheoreminfos.md) | 98 | `declaration-track:6304f28ac379972fdb5d81845fa88834bae5de081370f1642dd4819f55ed9c69` |
| 7 | `def` | [isSimpTheorem](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpNamespacedPublicSimpTheoremInfo.lean/declarations/issimptheorem.md) | 107 | `declaration-track:8191bef1916b1c803b9caf19234fbd9339d89f855b393ea797045da980f3f0c9` |
| 8 | `def` | [Simp Namespaced Public Simp Theorem Info](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpNamespacedPublicSimpTheoremInfo.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-simpt.md) | 112 | `declaration-track:105c54a2b42c65853c27952c379785bdc4dc5c2f2e72b2a998207efdcb71bb40` |
| 9 | `def` | [decorateError](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpNamespacedPublicSimpTheoremInfo.lean/declarations/decorateerror.md) | 121 | `declaration-track:286906e42a9e2e1d4b89758660396c3124831d341033d0eeb1ea4faba99373d0` |
| 10 | `def` | [formatLemmas](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpNamespacedPublicSimpTheoremInfo.lean/declarations/formatlemmas.md) | 125 | `declaration-track:5300ee14428658653a693de2b2b337dec307b3c13e94fd90c6a2ec0e1aa9964a` |
| 11 | `def` | [simpNF](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpNamespacedPublicSimpTheoremInfo.lean/declarations/simpnf.md) | 137 | `declaration-track:1a177f7094096f0265b9be66c3bf8882b37b530bc81942f73b4db350b5121d48` |
| 12 | `def` | [Expr.eqOrIff?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpNamespacedPublicSimpTheoremInfo.lean/declarations/expr-eqoriff.md) | 281 | `declaration-track:0ceff745a588d37da892c1660b687317eb2d83ede0ad98651ca0728e992bd952` |
| 13 | `def` | [simpComm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpNamespacedPublicSimpTheoremInfo.lean/declarations/simpcomm.md) | 288 | `declaration-track:305d70f1f3b41b512ce3458e55fbc4208601cbd5df2d0eacf38037293aa85bb9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ce43e7d733a6c3a8f3da4f29ed6cf9ec045face63e53614999b6f292ff99c33 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant4b6e51033fe43d776aec3fcdd191d1296d9e0274e9620c448ce1de97abee333e.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant4b6e51033fe43d776aec3fcdd191d1296d9e0274e9620c448ce1de97abee333e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
