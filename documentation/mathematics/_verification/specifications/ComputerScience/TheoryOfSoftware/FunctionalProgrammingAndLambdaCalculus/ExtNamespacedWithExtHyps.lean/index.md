# Verification target: Ext Namespaced With Ext Hyps

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd0947f895b6b079da872c1277683d16c6a0c9b4",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant47e35ef43205190e3244f62a9988b1ae73bedc84884cd6a3b7947bff9c0c4f7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtNamespacedWithExtHyps.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtNamespacedWithExtHyps.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd0947f895b6b079da872c1277683d16c6a0c9b4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant47e35ef43205190e3244f62a9988b1ae73bedc84884cd6a3b7947bff9c0c4f7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant47e35ef43205190e3244f62a9988b1ae73bedc84884cd6a3b7947bff9c0c4f7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Tactic.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Std.Tactic.RCases` — import line 12; external provider; requires a separately pinned dependency.
- `Std.Tactic.Ext.Attr` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [withExtHyps](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtNamespacedWithExtHyps.lean/declarations/withexthyps.md) | 27 | `declaration-track:a38a5f7658e4cb81e212de76128fac9fdf50725975f64ccc118db046877d76e2` |
| 2 | `elab` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtNamespacedWithExtHyps.lean/declarations/elab-source-edition-2.md) | 59 | `declaration-track:75c8634893c68f17dfc5e21281853894abb6c2ebb46b6790cfac1c979f045395` |
| 3 | `def` | [mkIff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtNamespacedWithExtHyps.lean/declarations/mkiff.md) | 66 | `declaration-track:5ca332614f65fc192866a241dafd8dbe277bb36ce51e392378aad12189e7ce78` |
| 4 | `def` | [mkAndN](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtNamespacedWithExtHyps.lean/declarations/mkandn.md) | 69 | `declaration-track:07a10c65e30573561a75f8fee2999ec89a35457232e6b96efd4315bb45618968` |
| 5 | `elab` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtNamespacedWithExtHyps.lean/declarations/elab.md) | 78 | `declaration-track:158e218737892c7a6da2901f1c34f0bb8665f414b6d1eccf32d4359585ca47a1` |
| 6 | `macro_rules` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtNamespacedWithExtHyps.lean/declarations/macro-rules.md) | 83 | `declaration-track:5ddf6109672cb4cc385ad9fb2d52c4cb7bce9d45efdac97092871d910d621ac9` |
| 7 | `theorem` | [$extIffName](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtNamespacedWithExtHyps.lean/declarations/extiffname.md) | 94 | `result-track:9eca7d22e11a37565309546df216a4c39c207e7b56be583ce1bb2b9229444d8f` |
| 8 | `def` | [applyExtLemma](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtNamespacedWithExtHyps.lean/declarations/applyextlemma.md) | 100 | `declaration-track:1960e79f976666de588fb6921a32fadc2f4eb8aeb4c12943dd3156e92848d96b` |
| 9 | `elab` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtNamespacedWithExtHyps.lean/declarations/elab-source-edition-3.md) | 124 | `declaration-track:eed96133da7e6a6592bc56a5f8ff28934c96f1ba0bbe8c885aa0e7f435dfa9ca` |
| 10 | `def` | [tryIntros](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtNamespacedWithExtHyps.lean/declarations/tryintros.md) | 130 | `declaration-track:69000b97897e7a1a67923f5f4bc2e6efc868da4f3415c0e592a9bba86e50e8e6` |
| 11 | `def` | [withExt1](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtNamespacedWithExtHyps.lean/declarations/withext1.md) | 146 | `declaration-track:4757d467b941cff978a7d8010f2208930fd15f1e90d24efcada6b3d11047a9c4` |
| 12 | `def` | [withExtN](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtNamespacedWithExtHyps.lean/declarations/withextn.md) | 157 | `declaration-track:aa8cd8c1a98b9039287ca0c173341805c9da44951c6aa92d9844b8abec4563e5` |
| 13 | `def` | [extCore](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtNamespacedWithExtHyps.lean/declarations/extcore.md) | 173 | `declaration-track:06704f6e9a022e9fd1107780f2d8d4849abf61e05e8b13ecf331a4c3a9450c4b` |
| 14 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtNamespacedWithExtHyps.lean/declarations/syntax.md) | 185 | `declaration-track:76ef94f9dda627bd050022c4a7bbe61aa0b2b8eba5f6ea5ae322ed8b4d1e66d1` |
| 15 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtNamespacedWithExtHyps.lean/declarations/elab-rules.md) | 186 | `declaration-track:5d418aa040492c42d218fa2338119d6369ddeb52e3918117bab5cd5ec34516a4` |
| 16 | `macro` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtNamespacedWithExtHyps.lean/declarations/macro.md) | 201 | `declaration-track:341ea5c074ba386078b32c68e48cd87d509e1dfcb1af3111e363e07645e5cd3b` |
| 17 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtNamespacedWithExtHyps.lean/declarations/syntax-source-edition-2.md) | 207 | `declaration-track:d59b51048279bd0e0f550c3d3003d6a8633b562cbc7892c80f78cad5845ecf7e` |
| 18 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtNamespacedWithExtHyps.lean/declarations/syntax-source-edition-3.md) | 209 | `declaration-track:fbb4badf51be16ce39ae40f58413d3d3cfd6096f895962ebe868ae18649173f8` |
| 19 | `theorem` | [Prod.ext](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtNamespacedWithExtHyps.lean/declarations/prod-ext.md) | 215 | `result-track:2ca96f10d5690e13b91431e36e973668da54394fc94d48faddd6f961e98b7e23` |
| 20 | `theorem` | [PProd.ext](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtNamespacedWithExtHyps.lean/declarations/pprod-ext.md) | 218 | `result-track:200deb51802e2876014d22bbc44aa5a10ed405481cdfd23252cdbbcc63e97244` |
| 21 | `theorem` | [Sigma.ext](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtNamespacedWithExtHyps.lean/declarations/sigma-ext.md) | 221 | `result-track:bd583ced0d164351de3e4055bbe62ad6df57d2ab9dc036147f01f6ea0fec88a7` |
| 22 | `theorem` | [PSigma.ext](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtNamespacedWithExtHyps.lean/declarations/psigma-ext.md) | 224 | `result-track:2281da3aba5a614eb86b3bfcff499ee56c131bad5ea49067ccf09ac6c2b534f8` |
| 23 | `theorem` | [PUnit.ext](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtNamespacedWithExtHyps.lean/declarations/punit-ext.md) | 227 | `result-track:4b947f6e8eb64875926faebbceb46cc3b48e820838ee9107476074808351f246` |
| 24 | `theorem` | [Unit.ext](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ExtNamespacedWithExtHyps.lean/declarations/unit-ext.md) | 228 | `result-track:f9db313b3da646c19d5bfd24fbb7b06b0f432201b1b2abd4e43c7374963b29ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=429b9271985152ed0e7261849772a3cb4d2308b59ed4692e8374e6860fa1b726 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant47e35ef43205190e3244f62a9988b1ae73bedc84884cd6a3b7947bff9c0c4f7b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant47e35ef43205190e3244f62a9988b1ae73bedc84884cd6a3b7947bff9c0c4f7b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
