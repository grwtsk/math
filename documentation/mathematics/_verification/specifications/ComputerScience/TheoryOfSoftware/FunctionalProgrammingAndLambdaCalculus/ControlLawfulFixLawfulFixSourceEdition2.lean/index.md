# Verification target: Control Lawful Fix Lawful Fix Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61526f2907da1d15cd2db91d06731a691e1750b9",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LawfulFix/Variant5a0d4ab47941d487fbbc00babace7e0757e4ba7efd64417767ed1a04cbe13fed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlLawfulFixLawfulFixSourceEdition2.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlLawfulFixLawfulFixSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61526f2907da1d15cd2db91d06731a691e1750b9`.

Source path: `GRWTSK/Topology/GeneralTopology/LawfulFix/Variant5a0d4ab47941d487fbbc00babace7e0757e4ba7efd64417767ed1a04cbe13fed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LawfulFix/Variant5a0d4ab47941d487fbbc00babace7e0757e4ba7efd64417767ed1a04cbe13fed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Stream.Init` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Fix` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.OmegaCompletePartialOrder` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LawfulFix](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlLawfulFixLawfulFixSourceEdition2.lean/declarations/lawfulfix-source-edition-2.md) | 40 | `declaration-track:5952574c4a3946d5c9f99c51b9975407faaf8edb372273d82699b722c1747f6c` |
| 2 | `theorem` | [LawfulFix.fix_eq'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlLawfulFixLawfulFixSourceEdition2.lean/declarations/lawfulfix-fix-eq.md) | 44 | `result-track:14a14c0a1225f91e6b817f5cce0c6a5958b79ac593be241b5fb70ea4824c11f1` |
| 3 | `theorem` | [approx_mono'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlLawfulFixLawfulFixSourceEdition2.lean/declarations/approx-mono-source-edition-2.md) | 57 | `result-track:f5a4b709d517e82c3353b8b9f624783510b49b0d2b299c4dcbc5dbf544ec1dd0` |
| 4 | `theorem` | [approx_mono](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlLawfulFixLawfulFixSourceEdition2.lean/declarations/approx-mono.md) | 63 | `result-track:4e31eccd0393476563430b3b7955193919dc3f1ab348c6f7cbd8b8a6b474d153` |
| 5 | `theorem` | [mem_iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlLawfulFixLawfulFixSourceEdition2.lean/declarations/mem-iff.md) | 71 | `result-track:1fe7a05595e0f7396ae669258268e203a154bfcc58eaaae78232e4e93f8b2986` |
| 6 | `theorem` | [approx_le_fix](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlLawfulFixLawfulFixSourceEdition2.lean/declarations/approx-le-fix.md) | 94 | `result-track:feea439e0d4fb2d397f1a1331f93aea20c641b68827be4a39a68402ba79b6964` |
| 7 | `theorem` | [exists_fix_le_approx](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlLawfulFixLawfulFixSourceEdition2.lean/declarations/exists-fix-le-approx.md) | 99 | `result-track:5fe399942ae069b727b5ac9a38f7db63b5d170040c63b8128e0c11e5d44fd9a8` |
| 8 | `def` | [approxChain](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlLawfulFixLawfulFixSourceEdition2.lean/declarations/approxchain.md) | 116 | `declaration-track:9b9656877cc8a4c2f10363bee3215a46b1e98eaeed128807fbfc428edc3f288b` |
| 9 | `theorem` | [le_f_of_mem_approx](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlLawfulFixLawfulFixSourceEdition2.lean/declarations/le-f-of-mem-approx.md) | 120 | `result-track:ab24ac1008126c3e9f789d7bd25f60b54ee3c6e0a22b5205c3a4319b49503142` |
| 10 | `theorem` | [approx_mem_approxChain](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlLawfulFixLawfulFixSourceEdition2.lean/declarations/approx-mem-approxchain.md) | 126 | `result-track:caac2234ca5024b15c57224e6a80c99ab18e53e9a3999671a8a6a5f33ce079db` |
| 11 | `theorem` | [fix_eq_ωSup](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlLawfulFixLawfulFixSourceEdition2.lean/declarations/fix-eq-sup.md) | 146 | `result-track:a63e2d615a7749d10e6cfb9111cca63bfb9345851f56a3ae17ceea7f48370d32` |
| 12 | `theorem` | [fix_le](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlLawfulFixLawfulFixSourceEdition2.lean/declarations/fix-le.md) | 163 | `result-track:a52fea31d7090ad823e5d5edef9bc8a7708fb3bba94f08d1100025a723f0e550` |
| 13 | `theorem` | [fix_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlLawfulFixLawfulFixSourceEdition2.lean/declarations/fix-eq.md) | 175 | `result-track:ec678548d3368e63a3f70304004f7ffdd2977ef991415654f8cad4e84f13f33d` |
| 14 | `def` | [toUnitMono](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlLawfulFixLawfulFixSourceEdition2.lean/declarations/tounitmono.md) | 195 | `declaration-track:e2bf526c93238e5726550c49937060dadb54d2396b2983be0e735cd70f8cf757` |
| 15 | `theorem` | [to_unit_cont](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlLawfulFixLawfulFixSourceEdition2.lean/declarations/to-unit-cont.md) | 200 | `result-track:d6b49e656bdbc2788c83e0df19348423bd323b46587837a7bc068352ab40b743` |
| 16 | `instance` | [lawfulFix](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlLawfulFixLawfulFixSourceEdition2.lean/declarations/lawfulfix-source-edition-3.md) | 207 | `declaration-track:7f7e4c4aba2dac7958ee1c672c28f32cd1809e727072c58f3450cd9860dd3ded` |
| 17 | `instance` | [lawfulFix](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlLawfulFixLawfulFixSourceEdition2.lean/declarations/lawfulfix.md) | 218 | `declaration-track:299340a9641aba9e373383bef491d78916baf95f6ae09e1a09389850c7b4dce0` |
| 18 | `def` | [monotoneCurry](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlLawfulFixLawfulFixSourceEdition2.lean/declarations/monotonecurry.md) | 230 | `declaration-track:4154c3e2b2652810a909d1332d9262514f87b016db482feafca924291cd6a20d` |
| 19 | `def` | [monotoneUncurry](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlLawfulFixLawfulFixSourceEdition2.lean/declarations/monotoneuncurry.md) | 238 | `declaration-track:e49ec3b15a4cd856cd56f239940135a001240142c086b301f34c7f2e82678b6a` |
| 20 | `theorem` | [continuous_curry](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlLawfulFixLawfulFixSourceEdition2.lean/declarations/continuous-curry.md) | 248 | `result-track:abbf44bc39f6b1148d9c8265cf685b4c1ae9dcd0d7d1289e3f40de8233f720f6` |
| 21 | `theorem` | [continuous_uncurry](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlLawfulFixLawfulFixSourceEdition2.lean/declarations/continuous-uncurry.md) | 255 | `result-track:99fc3561a687070c024ac858d3086df4d329fe5e24fb57b3dd9a0b0f33e7d137` |
| 22 | `instance` | [hasFix](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlLawfulFixLawfulFixSourceEdition2.lean/declarations/hasfix.md) | 266 | `declaration-track:6f00264f2e36a4536b99d8ea03f7d646f3ac0b3b9b3d7eaeec3df5856ff4100d` |
| 23 | `theorem` | [uncurry_curry_continuous](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlLawfulFixLawfulFixSourceEdition2.lean/declarations/uncurry-curry-continuous.md) | 278 | `result-track:4441341f76700f157f1649d696ab4ff26aa131f968254e43bbf19b2215a1185d` |
| 24 | `instance` | [Pi.lawfulFix'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ControlLawfulFixLawfulFixSourceEdition2.lean/declarations/pi-lawfulfix.md) | 285 | `declaration-track:3f0d381796a3a8f6643cae8b227cb9b4ee2c30fa6ee52d487e762a8823aff654` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9149343b0928ed3ec5f4fb34f82f97efd63fc0ca5dd40ed2acff6624bafb0986 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LawfulFix/Variant5a0d4ab47941d487fbbc00babace7e0757e4ba7efd64417767ed1a04cbe13fed.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/LawfulFix/Variant5a0d4ab47941d487fbbc00babace7e0757e4ba7efd64417767ed1a04cbe13fed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
