# Verification target: Simp Namespaced Simp Theorem Info

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11e59be52fb4cdb57d15dfdb5fdae6dd82842be0",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant885427ef13a71e52417f5cf8e2c423d005933879bca707d6db97fc45feb61e1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpNamespacedSimpTheoremInfo.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpNamespacedSimpTheoremInfo.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11e59be52fb4cdb57d15dfdb5fdae6dd82842be0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant885427ef13a71e52417f5cf8e2c423d005933879bca707d6db97fc45feb61e1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant885427ef13a71e52417f5cf8e2c423d005933879bca707d6db97fc45feb61e1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Simp.Main` — import line 11; external provider; requires a separately pinned dependency.
- `Std.Tactic.Lint.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Std.Tactic.OpenPrivate` — import line 13; external provider; requires a separately pinned dependency.
- `Std.Util.LibraryNote` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SimpTheoremInfo](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpNamespacedSimpTheoremInfo.lean/declarations/simptheoreminfo.md) | 33 | `declaration-track:af6302af1da46dd3f341705772d9f3291c392bb0c929fabf8ef0a00435e1b9c4` |
| 2 | `def` | [isConditionalHyps](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpNamespacedSimpTheoremInfo.lean/declarations/isconditionalhyps.md) | 44 | `declaration-track:7690e75627b10be25b3137c907509ca21fcdaa9c3e4ae14466f8d1e5d734b275` |
| 3 | `def` | [withSimpTheoremInfos](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpNamespacedSimpTheoremInfo.lean/declarations/withsimptheoreminfos.md) | 57 | `declaration-track:43090209ffbb03da1044663d2ac6ac8ab477a90cd793d705aa078d7d3362c936` |
| 4 | `def` | [isSimpEq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpNamespacedSimpTheoremInfo.lean/declarations/issimpeq.md) | 68 | `declaration-track:01e58ed0875899efc443022e0f2131730e7840550f01fedc9a7e9187726c3f3e` |
| 5 | `def` | [checkAllSimpTheoremInfos](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpNamespacedSimpTheoremInfo.lean/declarations/checkallsimptheoreminfos.md) | 75 | `declaration-track:27ccdce3c0f8f1a4bfe275cce70af927ae4924dca2978859388c8377b89e8679` |
| 6 | `def` | [isSimpTheorem](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpNamespacedSimpTheoremInfo.lean/declarations/issimptheorem.md) | 84 | `declaration-track:b3f739b14d3a7f600b6a56a97e25c488ac059ac1021bf0755ad6a35e7df2a31a` |
| 7 | `def` | [Simp Namespaced Simp Theorem Info](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpNamespacedSimpTheoremInfo.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-simpt.md) | 89 | `declaration-track:ce90db592cd23c4ad5a72d7e980a0d7cb560680a80cda4b0cb3342cb9855c8ef` |
| 8 | `def` | [decorateError](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpNamespacedSimpTheoremInfo.lean/declarations/decorateerror.md) | 100 | `declaration-track:975e19cf29f6fd327af9089a5e046fa9e9788b852c8a86724e6d71cc4a310cf1` |
| 9 | `def` | [formatLemmas](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpNamespacedSimpTheoremInfo.lean/declarations/formatlemmas.md) | 104 | `declaration-track:e6931194fa40ef16f207643f55c4f9d730307f5c75f1c62ab1f909af4acfe338` |
| 10 | `def` | [simpNF](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpNamespacedSimpTheoremInfo.lean/declarations/simpnf.md) | 114 | `declaration-track:30a481fd228bae9f61b4cfc8e5233b14622bdbd45d7b50596d43b276404753a9` |
| 11 | `def` | [simpVarHead](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpNamespacedSimpTheoremInfo.lean/declarations/simpvarhead.md) | 205 | `declaration-track:71735f60fec47627af4647f3478bc5f09b34220118620874c29581d6ebd5cd16` |
| 12 | `def` | [Expr.eqOrIff?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpNamespacedSimpTheoremInfo.lean/declarations/expr-eqoriff.md) | 218 | `declaration-track:4271e8614be702832835eafc4550447de85c933ea50baede9f7187753d2e1ea4` |
| 13 | `def` | [simpComm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/SimpNamespacedSimpTheoremInfo.lean/declarations/simpcomm.md) | 225 | `declaration-track:c3c1cd642f951ea75ae805f1b67a8d33ad17f853c70e072427daa7cdb79c37ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=969c77620ad965386d39b78aa5a1c78f7f96d778dd04939c0991cfad86b8764f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant885427ef13a71e52417f5cf8e2c423d005933879bca707d6db97fc45feb61e1e.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant885427ef13a71e52417f5cf8e2c423d005933879bca707d6db97fc45feb61e1e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
