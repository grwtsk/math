# Verification target: Tilde Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "676cac9f85635e220480acd39f7281ebe0c16b14",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Tilde/Variant5153479f9eb596642dbb97f7dd500cafc4f1ce857bbf0e5da5873a1694ece2fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespaced.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `676cac9f85635e220480acd39f7281ebe0c16b14`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Tilde/Variant5153479f9eb596642dbb97f7dd500cafc4f1ce857bbf0e5da5873a1694ece2fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Tilde/Variant5153479f9eb596642dbb97f7dd500cafc4f1ce857bbf0e5da5873a1694ece2fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LocalizedModule.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.StructureSheaf` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Modules.Sheaf` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Sheaf` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.FilteredColimits` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.ConcreteCategory.WithAlgebraicStructures` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Localizations](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespaced.lean/declarations/localizations.md) | 56 | `declaration-track:13b64bdf22cc012db18b1c5713a15865445e069a4abb6fe9a25f90cc2d9808f1` |
| 2 | `def` | [isFraction](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespaced.lean/declarations/isfraction.md) | 62 | `declaration-track:98c68d7d0042ea5628615d5d1eac277c53c6283d4d013bcf62e25c6aaa8237a0` |
| 3 | `def` | [isFractionPrelocal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespaced.lean/declarations/isfractionprelocal.md) | 69 | `declaration-track:d619a369143eecd239f0f72383fd729119364085d78ffd80d16abcc89a72f840` |
| 4 | `def` | [isLocallyFraction](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespaced.lean/declarations/islocallyfraction.md) | 79 | `declaration-track:32bed873298e3497bc4140394b03cd7414a6dbf4e6d83557291b50884e79dbd2` |
| 5 | `theorem` | [isLocallyFraction_pred](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespaced.lean/declarations/islocallyfraction-pred.md) | 82 | `result-track:9c8f585376f585810fd806d4122a1225785842fe5c644a2621f1ebcb94a421f5` |
| 6 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespaced.lean/declarations/instance-source-edition-4.md) | 92 | `declaration-track:ba4db417ff7d4cb7bf7318827aeb53e7f82727471e6ff8a6d7c2444eea4dbb33` |
| 7 | `lemma` | [sections_smul_localizations_def](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespaced.lean/declarations/sections-smul-localizations-def.md) | 98 | `result-track:54a98c2e864e629548231d686a25615a03cf28f2200e8fa71ff431eb2f334062` |
| 8 | `def` | [sectionsSubmodule](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespaced.lean/declarations/sectionssubmodule.md) | 107 | `declaration-track:81e6b080ff2dc9161159ab7521cb4f0122bda6884c58a1b955f5b5028e871873` |
| 9 | `def` | [tildeInType](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespaced.lean/declarations/tildeintype.md) | 151 | `declaration-track:3881cae1c274ecf345f992027ccb1de3ef26f34a5b9f71b82002bde75ca9c728` |
| 10 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespaced.lean/declarations/instance-source-edition-3.md) | 154 | `declaration-track:b395e71b17a7181ca77a8006f5cffbdb2fcb89edd91427953322a30af5bfe4da` |
| 11 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespaced.lean/declarations/instance.md) | 158 | `declaration-track:3b262f0ee9835c62636eb1177c481dad275dbb7d499e0936485b0b1f3c286605` |
| 12 | `def` | [tilde](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespaced.lean/declarations/tilde.md) | 165 | `declaration-track:c27ba05edba4b72350b5a16b929996922f60ba36e52bfbc7de215b7053e9c408` |
| 13 | `def` | [tildeInModuleCat](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespaced.lean/declarations/tildeinmodulecat.md) | 182 | `declaration-track:a6f1be8ce89fbfce054023ce8776fbcdf7d8d93d6345ceaf8d9bffa5254568ff` |
| 14 | `theorem` | [res_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespaced.lean/declarations/res-apply.md) | 191 | `result-track:6ef08a83bc0fbc8353bfa1a73d5a3f1274f24745240bd60a9bce1573ed86fb2f` |
| 15 | `lemma` | [smul_section_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespaced.lean/declarations/smul-section-apply.md) | 196 | `result-track:f2ee25a82c714f30e1ead3a3a0acd51ebbfa3c94bf99a235c7187a0641407893` |
| 16 | `lemma` | [smul_stalk_no_nonzero_divisor](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespaced.lean/declarations/smul-stalk-no-nonzero-divisor.md) | 200 | `result-track:643936420847436a77f8bb4b44ebfac7de8eea7ff66c133f23b5e37fea8a86dd` |
| 17 | `def` | [toOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespaced.lean/declarations/toopen.md) | 213 | `declaration-track:8bcadb8e2848370bb37c627544562ddb1595ce65f9515ce7c806f155869b7b0b` |
| 18 | `theorem` | [toOpen_res](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespaced.lean/declarations/toopen-res.md) | 228 | `result-track:5f0df02ab389420a70f201b3fbc58dc6ab86320811d9b0f28e763382bbc40fc8` |
| 19 | `def` | [toStalk](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespaced.lean/declarations/tostalk.md) | 236 | `declaration-track:bd65375321f5b7e546e6df8af482a3c7b069a1dc25fad6427fe379f066d2adbd` |
| 20 | `lemma` | [isUnit_toStalk](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespaced.lean/declarations/isunit-tostalk.md) | 241 | `result-track:f5118f45aec8195c0024094c560b651db2d265c4e8057f1101bd6c6bf75b2b5e` |
| 21 | `def` | [localizationToStalk](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespaced.lean/declarations/localizationtostalk.md) | 267 | `declaration-track:4e4553ece2fdb001773b8b813849db25adefdce9919092f93f9add1ab3b3f65e` |
| 22 | `def` | [openToLocalization](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespaced.lean/declarations/opentolocalization.md) | 276 | `declaration-track:eb9d5c7cafe18eb554cb60bdb30f43b6d0f81a1544f62796cf6d25bd6b6e5795` |
| 23 | `def` | [stalkToFiberLinearMap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespaced.lean/declarations/stalktofiberlinearmap.md) | 293 | `declaration-track:473e8064b4c19e576a479b7aa47f5156ce5ca1632752a4344738b7b24d528bb9` |
| 24 | `theorem` | [germ_comp_stalkToFiberLinearMap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespaced.lean/declarations/germ-comp-stalktofiberlinearmap.md) | 302 | `result-track:33325ca28caa980d94c4b2a00e4bbf19623d824b4cf731c70ada25b9e6fc55b1` |
| 25 | `theorem` | [stalkToFiberLinearMap_germ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespaced.lean/declarations/stalktofiberlinearmap-germ.md) | 308 | `result-track:c2a42838064b98f31e550e416c52f82c908ba0fcb0b6d5efc3b29d99be787804` |
| 26 | `theorem` | [toOpen_germ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespaced.lean/declarations/toopen-germ.md) | 315 | `result-track:bf1a1cd5651bd1076b1bbbc97938f936d75ee8eef3e49d16d32c110af47104c1` |
| 27 | `theorem` | [toStalk_comp_stalkToFiberLinearMap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespaced.lean/declarations/tostalk-comp-stalktofiberlinearmap.md) | 320 | `result-track:b7f068a916a1958acbfc4e24db6f7c635022ad1fc558186290fec4013c456067` |
| 28 | `theorem` | [stalkToFiberLinearMap_toStalk](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespaced.lean/declarations/stalktofiberlinearmap-tostalk.md) | 325 | `result-track:784100d9d821cbf9ba65eea077bae90243b5765393f45e1f8dacc278eac65195` |
| 29 | `def` | [const](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespaced.lean/declarations/const.md) | 335 | `declaration-track:4df0532f0e3c5af40284edf46aa2dec654256cb615d0314553c106e4dbc30120` |
| 30 | `theorem` | [const_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespaced.lean/declarations/const-apply.md) | 344 | `result-track:51227876a709d114c500a654d080c16401af3a96b80de77a1342cf4de2806116` |
| 31 | `theorem` | [exists_const](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespaced.lean/declarations/exists-const.md) | 349 | `result-track:af0913a6b6973dd7bb4a63084b303ef908dcd87c49bba640a8051d3b0e64b3c9` |
| 32 | `theorem` | [res_const](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespaced.lean/declarations/res-const.md) | 365 | `result-track:9f55d612e7997995c4d57844af523ff0ddc2aea3264f31adde099a85fc987385` |
| 33 | `theorem` | [localizationToStalk_mk](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespaced.lean/declarations/localizationtostalk-mk.md) | 370 | `result-track:0e7c14a2987d296334b5bfcbe0f595b0bf5d35f13213841c4ea7da665d2888d1` |
| 34 | `def` | [stalkIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespaced.lean/declarations/stalkiso.md) | 396 | `declaration-track:865b88ca7106b12b3e707031da27effeb89b20a9e79c2b5b4f47efe751e0a2e0` |
| 35 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespaced.lean/declarations/instance-source-edition-2.md) | 418 | `declaration-track:6f33a8a7dd5bb71c210af4db826c48f31e99e4bdf671eb1ba8fbf1619dcd04ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=96f112a38ebf7f9ea9998b2df8a3bfa740e4cdba5b3d6968ff3e9d0cf4acc398 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Tilde/Variant5153479f9eb596642dbb97f7dd500cafc4f1ce857bbf0e5da5873a1694ece2fe.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Tilde/Variant5153479f9eb596642dbb97f7dd500cafc4f1ce857bbf0e5da5873a1694ece2fe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
