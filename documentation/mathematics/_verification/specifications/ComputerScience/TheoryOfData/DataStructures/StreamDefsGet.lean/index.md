# Verification target: Stream Defs Get

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9bb9eb93e030c0d00787e02c516c391b69339e4",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variantc86d35591aa564cb9316a398217411cd9bea566354a8e88d96f0aaba77e1b776.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/StreamDefsGet.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/StreamDefsGet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9bb9eb93e030c0d00787e02c516c391b69339e4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variantc86d35591aa564cb9316a398217411cd9bea566354a8e88d96f0aaba77e1b776.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variantc86d35591aa564cb9316a398217411cd9bea566354a8e88d96f0aaba77e1b776.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Notation` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Stream'](../../../../../../ComputerScience/TheoryOfData/DataStructures/StreamDefsGet.lean/declarations/stream.md) | 20 | `declaration-track:faad31b51dced7b6d3bf88e4093e0ae2a550bc8a4e0f805f0349e850d5792bb5` |
| 2 | `def` | [cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/StreamDefsGet.lean/declarations/cons.md) | 25 | `declaration-track:a5bda43a26df582e378ac6425cde8f966c9e2390020dae71e8d714f963dcf801` |
| 3 | `def` | [get](../../../../../../ComputerScience/TheoryOfData/DataStructures/StreamDefsGet.lean/declarations/get.md) | 32 | `declaration-track:2802478beb77d2504ed3ae021824a2beb5b667903e98657a4cff840cd5fc9b70` |
| 4 | `abbrev` | [head](../../../../../../ComputerScience/TheoryOfData/DataStructures/StreamDefsGet.lean/declarations/head.md) | 35 | `declaration-track:d263e786381fca4bf6b40b6617bd4b129317748c08651f3e59e1ad6ab1adb0ad` |
| 5 | `def` | [tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/StreamDefsGet.lean/declarations/tail.md) | 38 | `declaration-track:3683bfe04fac00166825cba1d5751d06d655e27fb3f9e9c2fa8f74548f9c0e48` |
| 6 | `def` | [drop](../../../../../../ComputerScience/TheoryOfData/DataStructures/StreamDefsGet.lean/declarations/drop.md) | 41 | `declaration-track:77b9940506c27a391f220509bd5d7c475a43b550fb6e2281033fda0636a4f9c6` |
| 7 | `def` | [All](../../../../../../ComputerScience/TheoryOfData/DataStructures/StreamDefsGet.lean/declarations/all.md) | 44 | `declaration-track:82ff6bf0376adb9197f74f158004243929a49799f63be7407126856edeeb9db3` |
| 8 | `def` | [Any](../../../../../../ComputerScience/TheoryOfData/DataStructures/StreamDefsGet.lean/declarations/any.md) | 47 | `declaration-track:50ed33ad36e81e060587fdf8fb9dc644b2ccb76f6696aca55b44a15f3497aefc` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/StreamDefsGet.lean/declarations/instance.md) | 50 | `declaration-track:3110f696546ade8f04afd860453e85231b98250bedb206d062c2943e5568cac0` |
| 10 | `def` | [map](../../../../../../ComputerScience/TheoryOfData/DataStructures/StreamDefsGet.lean/declarations/map.md) | 54 | `declaration-track:1c51216c94e7cd6427fc1591c0be5a23418b8e7701711073187d26b49cb46ef4` |
| 11 | `def` | [zip](../../../../../../ComputerScience/TheoryOfData/DataStructures/StreamDefsGet.lean/declarations/zip.md) | 58 | `declaration-track:bae878c99d6040dd52479aca9c7f3f38fea0954a938b61ed3aec58c6f0fe7406` |
| 12 | `def` | [enum](../../../../../../ComputerScience/TheoryOfData/DataStructures/StreamDefsGet.lean/declarations/enum.md) | 62 | `declaration-track:a7d3cdb2a9ac28a72103943065c12e29f327b4832ac10a322843a57909c381ee` |
| 13 | `def` | [const](../../../../../../ComputerScience/TheoryOfData/DataStructures/StreamDefsGet.lean/declarations/const.md) | 65 | `declaration-track:123b43767af1e1781274699bdae8882a49bb4061c0ce25ffed2c97fe949d8c52` |
| 14 | `def` | [iterate](../../../../../../ComputerScience/TheoryOfData/DataStructures/StreamDefsGet.lean/declarations/iterate.md) | 68 | `declaration-track:51b9a7c3de628254d4c0c0a5f991884eb0478b6de0328e11deb19160ca55e20d` |
| 15 | `def` | [corec](../../../../../../ComputerScience/TheoryOfData/DataStructures/StreamDefsGet.lean/declarations/corec.md) | 72 | `declaration-track:08eff25344f5d83ae946aa8c72aa2e8bd259fb1a07c4cda62ea1f2da4be36ea6` |
| 16 | `def` | [corecOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/StreamDefsGet.lean/declarations/corecon.md) | 74 | `declaration-track:6c4c797c3bfad166fc949cd4f3dac0c50c668f99c5340d4ae71da048c48ad33c` |
| 17 | `def` | [corec'](../../../../../../ComputerScience/TheoryOfData/DataStructures/StreamDefsGet.lean/declarations/corec-source-edition-2.md) | 77 | `declaration-track:6010bf94a8c9a99cf05236468a8fba1c4f92b4317a468f4e95fc8684bed21789` |
| 18 | `def` | [corecState](../../../../../../ComputerScience/TheoryOfData/DataStructures/StreamDefsGet.lean/declarations/corecstate.md) | 81 | `declaration-track:e00b5335a8c87d0dd67149193675a00b8e9b58bb4d86572758c19228657440f9` |
| 19 | `abbrev` | [unfolds](../../../../../../ComputerScience/TheoryOfData/DataStructures/StreamDefsGet.lean/declarations/unfolds.md) | 85 | `declaration-track:5ba028c78cdd14a19d75a590d9cacd1cd83ced088b9590c737c0d0152fb62fde` |
| 20 | `def` | [interleave](../../../../../../ComputerScience/TheoryOfData/DataStructures/StreamDefsGet.lean/declarations/interleave.md) | 89 | `declaration-track:e3912a23c87e1adbf88c48a930a852d89dc0c9f3fd22ede07afc611ba1743ca4` |
| 21 | `def` | [even](../../../../../../ComputerScience/TheoryOfData/DataStructures/StreamDefsGet.lean/declarations/even.md) | 95 | `declaration-track:4178d6981f633f32e416710a8cab0448ff0e39ce90d22e7cbd8b97ce6452c9cc` |
| 22 | `def` | [odd](../../../../../../ComputerScience/TheoryOfData/DataStructures/StreamDefsGet.lean/declarations/odd.md) | 99 | `declaration-track:a0654907343147e50ce393206cf936e88157f03c6f6da76a8e1c920d3ca5517d` |
| 23 | `def` | [appendStream'](../../../../../../ComputerScience/TheoryOfData/DataStructures/StreamDefsGet.lean/declarations/appendstream.md) | 103 | `declaration-track:a012fc2cc87840a69d15258d98a55c445205bc67d11440363466710a85a3a73b` |
| 24 | `def` | [take](../../../../../../ComputerScience/TheoryOfData/DataStructures/StreamDefsGet.lean/declarations/take.md) | 110 | `declaration-track:4708e6e7efefbb551447307c9be1b878007e2ea4beab6711169f5dbf5826e2d1` |
| 25 | `def` | [cycleF](../../../../../../ComputerScience/TheoryOfData/DataStructures/StreamDefsGet.lean/declarations/cyclef.md) | 115 | `declaration-track:f145993f725f441064130c6ef935db934a2bdce3f7af1fc8566974a54ab2749a` |
| 26 | `def` | [cycleG](../../../../../../ComputerScience/TheoryOfData/DataStructures/StreamDefsGet.lean/declarations/cycleg.md) | 119 | `declaration-track:be9cbf86a83e85b0c603064d850a71b8cd4e98d1299a90faf66eff85a7cda35b` |
| 27 | `def` | [cycle](../../../../../../ComputerScience/TheoryOfData/DataStructures/StreamDefsGet.lean/declarations/cycle.md) | 124 | `declaration-track:995c41dc73cfc074b5a2b0d14c7d510ed756f51c089dbe6fc5c0d6f5d421853b` |
| 28 | `def` | [tails](../../../../../../ComputerScience/TheoryOfData/DataStructures/StreamDefsGet.lean/declarations/tails.md) | 129 | `declaration-track:86f292454d498ed20020336679aa14fd949912c111ba676aca7b39be40349e56` |
| 29 | `def` | [initsCore](../../../../../../ComputerScience/TheoryOfData/DataStructures/StreamDefsGet.lean/declarations/initscore.md) | 133 | `declaration-track:1ce2fd441d652395dd7a563dc7ed5328adf296916bda7e526349dc2765e396cf` |
| 30 | `def` | [inits](../../../../../../ComputerScience/TheoryOfData/DataStructures/StreamDefsGet.lean/declarations/inits.md) | 139 | `declaration-track:9be427d807d0a91d721530f9c41c48bf91152a40e2194333a7bc4f64bef7557b` |
| 31 | `def` | [pure](../../../../../../ComputerScience/TheoryOfData/DataStructures/StreamDefsGet.lean/declarations/pure.md) | 143 | `declaration-track:63391f605a3e02a46773af4e8c941ee4c5977c807bc0b3b147a0c16124d1ed6e` |
| 32 | `def` | [apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/StreamDefsGet.lean/declarations/apply.md) | 147 | `declaration-track:5d43e88645b72416750f44a0682b057ca1e67274335ee7b5f736947f2ebc492d` |
| 33 | `def` | [nats](../../../../../../ComputerScience/TheoryOfData/DataStructures/StreamDefsGet.lean/declarations/nats.md) | 152 | `declaration-track:8a47247a39ac0acd0ccc1d88c9ef0ea2e091ca954197e5368321ea6384d85711` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=27e09b4701cd6bdcb8116da807e0a3dd57b145c11ba4d450251ed3ea95078bee -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variantc86d35591aa564cb9316a398217411cd9bea566354a8e88d96f0aaba77e1b776.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variantc86d35591aa564cb9316a398217411cd9bea566354a8e88d96f0aaba77e1b776.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
