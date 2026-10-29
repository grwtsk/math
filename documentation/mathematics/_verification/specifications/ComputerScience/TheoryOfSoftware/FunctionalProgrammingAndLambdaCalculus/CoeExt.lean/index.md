# Verification target: Coe Ext

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e0e464f72cb7e363c30db920754b08aedc54da4",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoeExt/Variante3f24f1ff3e208a8767a500c0d3a22dd035847408eba977de3ad308dcd77ce9f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CoeExt.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CoeExt.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e0e464f72cb7e363c30db920754b08aedc54da4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoeExt/Variante3f24f1ff3e208a8767a500c0d3a22dd035847408eba977de3ad308dcd77ce9f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoeExt/Variante3f24f1ff3e208a8767a500c0d3a22dd035847408eba977de3ad308dcd77ce9f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.PrettyPrinter.Delaborator.Builtins` — import line 6; external provider; requires a separately pinned dependency.
- `Std.Lean.Delaborator` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [CoeFnType](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CoeExt.lean/declarations/coefntype.md) | 46 | `declaration-track:f4cdab20e81581c3ad15ea9184a7e771c0f4f1d43e2d3646d38c77767d5be189` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CoeExt.lean/declarations/instance.md) | 55 | `declaration-track:01cb616ccf01c2b97ee71a419dc119fa651bf8b6e03774770bb4a33483e615a3` |
| 3 | `structure` | [CoeFnInfo](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CoeExt.lean/declarations/coefninfo.md) | 63 | `declaration-track:52015e1ca78dab534e492dbe1ede8ed5b784e62f16e40640abec38d5447b8038` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CoeExt.lean/declarations/instance-source-edition-2.md) | 72 | `declaration-track:48cc874b295a563c6e165b0c61147760a4d8e9319c7a94b114eb9571fbfc4e06` |
| 5 | `initialize` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CoeExt.lean/declarations/initialize-source-edition-2.md) | 77 | `declaration-track:c12a290e1797fd39e9783e921d8f29d38cae9787c5311a0362e75aada55dd2ae` |
| 6 | `def` | [getCoeFnInfo?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CoeExt.lean/declarations/getcoefninfo.md) | 84 | `declaration-track:b97c636ffe30326457ea9eb693e5196143a2829abbcb36fde5c75dabae67ec5a` |
| 7 | `def` | [coeDelaborator](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CoeExt.lean/declarations/coedelaborator.md) | 94 | `declaration-track:40680790c776dcded71ae5bbc4318803e375ef04c383b1bfe10903b36d6a4287` |
| 8 | `def` | [addCoeDelaborator](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CoeExt.lean/declarations/addcoedelaborator.md) | 107 | `declaration-track:67b81fb8791838b0dca49fdb35e03fe9a0c47a1a3021737ed3365d55eb13cb1d` |
| 9 | `def` | [registerCoercion](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CoeExt.lean/declarations/registercoercion.md) | 121 | `declaration-track:1b072a5bb13ccda52819ded7da9e9d9aa3b916d47cb0f725e5eef53d4e2db280` |
| 10 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CoeExt.lean/declarations/syntax.md) | 135 | `declaration-track:ea23f1a5f885e2e03ca08dc333232f609328a77c51239387aed06eba0513e20b` |
| 11 | `initialize` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CoeExt.lean/declarations/initialize.md) | 137 | `declaration-track:21effa7b8d92252819f444891fe690e7247c361ecad6c84b89f80a008357280e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7575b062587fc827528717db11975ae7943841c967b81f3324c140aa6405df0d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoeExt/Variante3f24f1ff3e208a8767a500c0d3a22dd035847408eba977de3ad308dcd77ce9f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoeExt/Variante3f24f1ff3e208a8767a500c0d3a22dd035847408eba977de3ad308dcd77ce9f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
