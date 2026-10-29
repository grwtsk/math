# Verification target: Basic Basic Namespaced Is None Iff Eq None

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5bf0c7328f39fb9321d4c0881f0379a57f9bab3",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant805bf2454b8d9dfd03fe11cbd9ab05c4d5e1ee59e06cf2c41e4d8bd4319b0513.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedIsNoneIffEqNone.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedIsNoneIffEqNone.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5bf0c7328f39fb9321d4c0881f0379a57f9bab3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant805bf2454b8d9dfd03fe11cbd9ab05c4d5e1ee59e06cf2c41e4d8bd4319b0513.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant805bf2454b8d9dfd03fe11cbd9ab05c4d5e1ee59e06cf2c41e4d8bd4319b0513.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Classes.SetNotation` — import line 11; external provider; requires a separately pinned dependency.
- `Std.Classes.LawfulMonad` — import line 12; external provider; requires a separately pinned dependency.
- `Std.Tactic.NoMatch` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [elim](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedIsNoneIffEqNone.lean/declarations/elim.md) | 21 | `declaration-track:6f5ca7f87aefd14d4da571fdd672039dd09bf9bb476b6c7539665dce9bf73e82` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedIsNoneIffEqNone.lean/declarations/instance-source-edition-5.md) | 25 | `declaration-track:95c21f06c5da6e573b1420472ea21c681ea56856de5f94e03467c21e13033b70` |
| 3 | `theorem` | [mem_def](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedIsNoneIffEqNone.lean/declarations/mem-def.md) | 27 | `result-track:fdbb150682764b4abdfbd7a30153e36f447a93a7fbdc1f298483bfe3a94cb5c1` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedIsNoneIffEqNone.lean/declarations/instance-source-edition-6.md) | 29 | `declaration-track:9c015706f73b4ca800cb4dc8a30cdb458f40104ffa03266de5d72e230c3331ee` |
| 5 | `theorem` | [isNone_iff_eq_none](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedIsNoneIffEqNone.lean/declarations/isnone-iff-eq-none.md) | 32 | `result-track:3b486f2b3bd11e8a94008c63c6529c26c98e6eedf471268f65b53e6f60264246` |
| 6 | `theorem` | [some_inj](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedIsNoneIffEqNone.lean/declarations/some-inj.md) | 35 | `result-track:23b4cc80640a4ddc44212b8abda7856a7ee7f4f8873573edd00a61b2d5cf6ad0` |
| 7 | `def` | [decidable_eq_none](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedIsNoneIffEqNone.lean/declarations/decidable-eq-none.md) | 42 | `declaration-track:d0b8280ef130a3b8b46a5c1ba180a962a8675b77be6a434bf2d758c20b9a0eac` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedIsNoneIffEqNone.lean/declarations/instance-source-edition-4.md) | 45 | `declaration-track:9441dfb099a54b36dc7508a5b44afdf07bf6f7419664b9bc84ae03f0b16fc61f` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedIsNoneIffEqNone.lean/declarations/instance-source-edition-2.md) | 51 | `declaration-track:68fc2820b561ba034229960136caaa2731b54217335b591f83f184c7d8c8cabc` |
| 10 | `def` | [get](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedIsNoneIffEqNone.lean/declarations/get.md) | 56 | `declaration-track:6cacfcce85044b579098a44da0a5da13774f679cff50eabe9e52c74c50cafc73` |
| 11 | `def` | [guard](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedIsNoneIffEqNone.lean/declarations/guard.md) | 60 | `declaration-track:300e0e853203259c184a8043b4d719127069395b4dd51578dd71fdcf2ab3e6ae` |
| 12 | `def` | [toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedIsNoneIffEqNone.lean/declarations/tolist.md) | 66 | `declaration-track:add07969c179831a1e490588c85145dcc90a76eadbd09380c7a20a54f91b3db6` |
| 13 | `def` | [toArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedIsNoneIffEqNone.lean/declarations/toarray.md) | 73 | `declaration-track:0fec029aad270f3d66a732ded741642f1b44325588b9b869d41ec51c3df40bcb` |
| 14 | `def` | [liftOrGet](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedIsNoneIffEqNone.lean/declarations/liftorget.md) | 81 | `declaration-track:4f11cd05c37153a0d711819518f1dd58271c8a566148d06ec3dc6fb50da8253d` |
| 15 | `inductive` | [Rel](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedIsNoneIffEqNone.lean/declarations/rel.md) | 89 | `declaration-track:ccb951935918ec5e754b42a835912dfca15f9e0633bad675911728b4344aa0b5` |
| 16 | `def` | [pbind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedIsNoneIffEqNone.lean/declarations/pbind.md) | 102 | `declaration-track:440fb64d2195570fc84d6e0fdfa9cbc96bebfef87912e26bdb6cf2cc9db67dd2` |
| 17 | `def` | [pmap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedIsNoneIffEqNone.lean/declarations/pmap.md) | 111 | `declaration-track:ddec289b58d3ce51082c09e2022169cf86ce37eec02b3c8ef8ffae284ddac464` |
| 18 | `def` | [join](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedIsNoneIffEqNone.lean/declarations/join.md) | 117 | `declaration-track:9ace2ebacf3d33444576a17a8b033fbc03fc5871d20c5c82dffeb3b766a5e17e` |
| 19 | `def` | [forM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedIsNoneIffEqNone.lean/declarations/form.md) | 120 | `declaration-track:39f07bfce3b422ef13c0d8dbd923c93109b3bf12741abc4073521a6e4a39b651` |
| 20 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedIsNoneIffEqNone.lean/declarations/instance-source-edition-7.md) | 124 | `declaration-track:a75944691dac343b6274ff695087cd53fc2d55de8150093b6ae0ec2482dea90e` |
| 21 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedIsNoneIffEqNone.lean/declarations/instance.md) | 127 | `declaration-track:29a16e749b0038804366556cc849b46bd1c8e2218cc72266f5c672ebae2088ab` |
| 22 | `def` | [mapA](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedIsNoneIffEqNone.lean/declarations/mapa.md) | 136 | `declaration-track:0e4b0c9c35cb7e13e2843b7ff9438f1b4a45ed37984ae83e8f2f1d090f727bb7` |
| 23 | `def` | [sequence](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedIsNoneIffEqNone.lean/declarations/sequence.md) | 145 | `declaration-track:f1d606d2571f7438c9fcf6176e114fce1d96e6d58d1f0c3c8623fc82f26035c1` |
| 24 | `def` | [elimM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedIsNoneIffEqNone.lean/declarations/elimm.md) | 150 | `declaration-track:baefc7d099f9c051b0a33b818976220fa2eddfdd44e2eb5a0f180cfa8fc69090` |
| 25 | `def` | [getDM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedIsNoneIffEqNone.lean/declarations/getdm.md) | 154 | `declaration-track:b4845ea98d6faa7d11c44bd70775ce958a4583633e76ea5b5e219c122eb57ccf` |
| 26 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedIsNoneIffEqNone.lean/declarations/instance-source-edition-3.md) | 159 | `declaration-track:73c46f3e519f23d6c3403d10f0cab76ab9a5e1279d6bc94b9f6e154e1dca914e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e81736b82d90e31bb0b6d54f915178cdca6cab3cea7ff78c6a551676f309ca96 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant805bf2454b8d9dfd03fe11cbd9ab05c4d5e1ee59e06cf2c41e4d8bd4319b0513.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant805bf2454b8d9dfd03fe11cbd9ab05c4d5e1ee59e06cf2c41e4d8bd4319b0513.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
