# Verification target: Classes Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17f59656d770c37de50ce2f81febee565025c34b",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Classes/Variant44cb1daf78c7d299d30b01819f1f2d562969cb8d6b967c60647ce5e5ff85f1d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/ClassesNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/ClassesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17f59656d770c37de50ce2f81febee565025c34b`.

Source path: `GRWTSK/Analysis/Classes/Variant44cb1daf78c7d299d30b01819f1f2d562969cb8d6b967c60647ce5e5ff85f1d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Classes/Variant44cb1daf78c7d299d30b01819f1f2d562969cb8d6b967c60647ce5e5ff85f1d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.NonUnitalSubalgebra` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NonUnitalCStarAlgebra](../../../../FunctionalAnalysis/ClassesNamespaced.lean/declarations/nonunitalcstaralgebra.md) | 32 | `declaration-track:60618db7f7996dc3c4c1c2950d21bb832690bcd7b3fd9ec0764e1f9ab33ba79e` |
| 2 | `class` | [NonUnitalCommCStarAlgebra](../../../../FunctionalAnalysis/ClassesNamespaced.lean/declarations/nonunitalcommcstaralgebra.md) | 36 | `declaration-track:06a7962946589a91f946955d4ea0cc8eb5120941e93ac4481e0057173a45d145` |
| 3 | `class` | [CStarAlgebra](../../../../FunctionalAnalysis/ClassesNamespaced.lean/declarations/cstaralgebra.md) | 40 | `declaration-track:068ca9ed4569e97c10b2d2afa9ed446d601a2ca60c989e5ac23d9a339ee7d081` |
| 4 | `class` | [CommCStarAlgebra](../../../../FunctionalAnalysis/ClassesNamespaced.lean/declarations/commcstaralgebra.md) | 44 | `declaration-track:e6df4da08b26d932c03fb7da6827cd9323d469ebf827951f052df94d91383559` |
| 5 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ClassesNamespaced.lean/declarations/instance-source-edition-2.md) | 47 | `declaration-track:1db2f9bf8da2df1c3cf22fd924a722a4ae984246114596254a82b09091d59f95` |
| 6 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ClassesNamespaced.lean/declarations/instance-source-edition-12.md) | 51 | `declaration-track:c5bba76dc14b951b860d2e5fdc57f1cde111892e7f53b34cea084f8d7e16df0f` |
| 7 | `instance` | [StarSubalgebra.cstarAlgebra](../../../../FunctionalAnalysis/ClassesNamespaced.lean/declarations/starsubalgebra-cstaralgebra.md) | 54 | `declaration-track:f3abe7c06df28931cd93a210bc16907c1a4b0d7716b0e006c80ccd3be07226b2` |
| 8 | `instance` | [StarSubalgebra.commCStarAlgebra](../../../../FunctionalAnalysis/ClassesNamespaced.lean/declarations/starsubalgebra-commcstaralgebra.md) | 60 | `declaration-track:196028f7b6fd56712f917873477f4c4013ad4fbab42cbc6843edbaae3e47104b` |
| 9 | `instance` | [NonUnitalStarSubalgebra.nonUnitalCStarAlgebra](../../../../FunctionalAnalysis/ClassesNamespaced.lean/declarations/nonunitalstarsubalgebra-nonunitalcstaralgebra.md) | 67 | `declaration-track:0325bc6e0ecfb12730513bf950f28a512efbbb9954d6c5d6f348b4ce535f9e0f` |
| 10 | `instance` | [NonUnitalStarSubalgebra.nonUnitalCommCStarAlgebra](../../../../FunctionalAnalysis/ClassesNamespaced.lean/declarations/nonunitalstarsubalgebra-nonunitalcommcstaralgebra.md) | 73 | `declaration-track:36fb59ae097bd34b74db66e5a6eda204db18adb297230160963438aaffc009ff` |
| 11 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ClassesNamespaced.lean/declarations/instance-source-edition-8.md) | 81 | `declaration-track:9f8c7974ee9239fedd3dde3633292fe5b3fe2aab131113f8ebbb132c1d2a06d1` |
| 12 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ClassesNamespaced.lean/declarations/instance.md) | 90 | `declaration-track:080d8d00b47cc0a96fa1e37a7db3d0de5ff41e3478257e7da7b802b102f7b4e3` |
| 13 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ClassesNamespaced.lean/declarations/instance-source-edition-6.md) | 93 | `declaration-track:8951270f1e560d9a4dde9adce69905ddde33af4a8584769be276146bf646001f` |
| 14 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ClassesNamespaced.lean/declarations/instance-source-edition-9.md) | 97 | `declaration-track:a5ae82378f745abee5b49236878467db96aba9271b44a374f925ee9170b66f42` |
| 15 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ClassesNamespaced.lean/declarations/instance-source-edition-11.md) | 100 | `declaration-track:bd2b841722d19209e0b74d4ba11f99ee2ccce4a4b14f66feecda03e31f237072` |
| 16 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ClassesNamespaced.lean/declarations/instance-source-edition-5.md) | 110 | `declaration-track:8544fda4f8554040f96d2d2144da1009bcb03b56821e6456f4f3685cbd4182c1` |
| 17 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ClassesNamespaced.lean/declarations/instance-source-edition-14.md) | 113 | `declaration-track:e720162d3fdc028f2231b5101391dd9de57f3e7a0c3b9860902f39a89abf30c3` |
| 18 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ClassesNamespaced.lean/declarations/instance-source-edition-3.md) | 118 | `declaration-track:4f763a548fa641db54ed9d200015bcfa4acf43a838abc42eb373fdbf6b8aad26` |
| 19 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ClassesNamespaced.lean/declarations/instance-source-edition-4.md) | 121 | `declaration-track:7ead3fd81902ce55a99db90ec1e342c76a74d44639f6697b68059efc05077486` |
| 20 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ClassesNamespaced.lean/declarations/instance-source-edition-10.md) | 131 | `declaration-track:b2a40faee4ac90875ecde3a8c6a0833af0dd9b84abcc0f220a35e0bc68b58c6f` |
| 21 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ClassesNamespaced.lean/declarations/instance-source-edition-7.md) | 134 | `declaration-track:969e14d9a70b51b316e2c6644f9ed808a10c72833f8de136236ecc903358f11e` |
| 22 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ClassesNamespaced.lean/declarations/instance-source-edition-13.md) | 137 | `declaration-track:cb4c3ac488218ebd5aeb1199dfac92a65735e2d1e6ad93bcf3898627a6bbfe58` |
| 23 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ClassesNamespaced.lean/declarations/instance-source-edition-15.md) | 140 | `declaration-track:fb43e9782caf3df3431bd8e7823d2254e3fe08dda10deb9a05f75e7f3c1d6462` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2c919bc92084b44f971ae1bd00af84cabc898e6dafc3e66b0eee44941a4f7f3b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Classes/Variant44cb1daf78c7d299d30b01819f1f2d562969cb8d6b967c60647ce5e5ff85f1d5.lean","GRWTSK/_verification/specifications/Analysis/Classes/Variant44cb1daf78c7d299d30b01819f1f2d562969cb8d6b967c60647ce5e5ff85f1d5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
