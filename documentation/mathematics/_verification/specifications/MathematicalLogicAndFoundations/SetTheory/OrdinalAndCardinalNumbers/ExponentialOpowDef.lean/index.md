# Verification target: Exponential Opow Def

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb817d700638943720999d14e7cec3b6e36b7323",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Exponential/Variantdffbac5ff49659635e505337eb202e85eb413b0b4d7f9a78e90886a4d1174ecf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb817d700638943720999d14e7cec3b6e36b7323`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Exponential/Variantdffbac5ff49659635e505337eb202e85eb413b0b4d7f9a78e90886a4d1174ecf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Exponential/Variantdffbac5ff49659635e505337eb202e85eb413b0b4d7f9a78e90886a4d1174ecf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Ordinal.Arithmetic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [pow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/pow.md) | 29 | `declaration-track:d03773489fe7462ccfe6bf66319f55d760cd20987341e2e6a4664e4a5bc42f1a` |
| 2 | `theorem` | [opow_def](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/opow-def.md) | 35 | `result-track:bfd7ab9c4af866e23bbd724eb9b9db780d3ab75cbf53c78b47c414e4099dcf8b` |
| 3 | `theorem` | [zero_opow'](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/zero-opow-source-edition-2.md) | 41 | `result-track:aa15b309b7c8ffd3d285c8f2ef39d6a0795690c2b3147084c02d42786d85ec61` |
| 4 | `theorem` | [zero_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/zero-opow.md) | 45 | `result-track:0e766c03b714848c75ac15f77a266c9d2f62db98526fb757051c8835611fcc10` |
| 5 | `theorem` | [opow_zero](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/opow-zero.md) | 50 | `result-track:eed45ab2bf6ad3e4188815eb1894cd4341ad09a25b0f48423b49df2ce3005022` |
| 6 | `theorem` | [opow_succ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/opow-succ.md) | 57 | `result-track:259065f72efa36a051e1fd910baa8ff9430f62d890c944bb64b337e676036bf0` |
| 7 | `theorem` | [opow_limit](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/opow-limit.md) | 62 | `result-track:55d41774775551e9795b5f3bcbc579caaf7277d8fa87ad081d3acc05fca0d026` |
| 8 | `theorem` | [opow_le_of_limit](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/opow-le-of-limit.md) | 67 | `result-track:80f32063acd29580d84882cc08929f11f9859be7f3e70b092547b41eb5c54286` |
| 9 | `theorem` | [lt_opow_of_limit](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/lt-opow-of-limit.md) | 71 | `result-track:f09dd84d70210fd9b5cdc9fa81790aeb47a307eaf1050455d23fde93c4cd3c33` |
| 10 | `theorem` | [opow_one](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/opow-one.md) | 77 | `result-track:98d95947dae2cc448e31f5c5c0ab7ea1bc264d45aa955f92a830b3c958f1eed3` |
| 11 | `theorem` | [one_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/one-opow.md) | 82 | `result-track:db2df34232b9b4ac7d30abd59509da1e1022ddeae215e3d28a20176e36be9ba1` |
| 12 | `theorem` | [opow_pos](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/opow-pos.md) | 93 | `result-track:fe6677127ad44c26d5710679c1f69f2c3bf073bedc2e7825bfabcfcae3df6f91` |
| 13 | `theorem` | [opow_ne_zero](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/opow-ne-zero.md) | 104 | `result-track:41b622e35095bdb5596d01be6c835c223a1b0526877f80de3b684b7cfafb39ae` |
| 14 | `theorem` | [opow_isNormal](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/opow-isnormal.md) | 108 | `result-track:b4e89c7b43b8d21e1b1b10ecdc40d556fbfe5a28e46fbc303733693b7a1947d2` |
| 15 | `theorem` | [opow_lt_opow_iff_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/opow-lt-opow-iff-right.md) | 114 | `result-track:adcbf7d82aa94f016b163f5b4f7340b5182f753fae95c032c652be6f8b183fcb` |
| 16 | `theorem` | [opow_le_opow_iff_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/opow-le-opow-iff-right.md) | 118 | `result-track:1ef1d1655551c7fc471baf3a207dcd0b3d5d2aef8897ec70ed42b13e6c238d1f` |
| 17 | `theorem` | [opow_right_inj](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/opow-right-inj.md) | 122 | `result-track:9185097beddf5a3c6199ddb1fcdcf777e36af82e66b2146a4b55e1cfb8d9a453` |
| 18 | `theorem` | [opow_isLimit](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/opow-islimit.md) | 126 | `result-track:49dc8e46a055397869391d188344ee46a1174fbfe1ffbb396a52b466d421a082` |
| 19 | `theorem` | [opow_isLimit_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/opow-islimit-left.md) | 130 | `result-track:bec7bbe05548046e015451a446515f6b9929d415ecfaa200ed8e1cf7214d0c38` |
| 20 | `theorem` | [opow_le_opow_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/opow-le-opow-right.md) | 138 | `result-track:4d2683bcbd5b1ea23f34553f4c9d892555c18b612111411647a795166272657c` |
| 21 | `theorem` | [opow_le_opow_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/opow-le-opow-left.md) | 146 | `result-track:35acfb13cee332b562defdb5e774ba462e00309bef9fa640e0980e3983034583` |
| 22 | `theorem` | [left_le_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/left-le-opow.md) | 164 | `result-track:3e3a69296406666842b18b5192d487c53d2ac8463a53c568cb87d328f75e5c6d` |
| 23 | `theorem` | [right_le_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/right-le-opow.md) | 175 | `result-track:0e07bae53aa02bb1b03b35704618f4c484c935809e7f48c5c9d7f8f359cd257d` |
| 24 | `theorem` | [opow_lt_opow_left_of_succ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/opow-lt-opow-left-of-succ.md) | 179 | `result-track:b08cd02b4e4ea28e5131f07bfbbcd5c7b3dd9ebe9113063d35c8b6287cbd82bd` |
| 25 | `theorem` | [opow_add](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/opow-add.md) | 186 | `result-track:86861c60c1da6fb53428051387dc2ec528548ce2af1c991b3f64ef555be90fa4` |
| 26 | `theorem` | [opow_one_add](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/opow-one-add.md) | 210 | `result-track:0eb6792b162a43e0d5f69fa01fe44ff55cf5293275efcd3b2eed2289b77737b7` |
| 27 | `theorem` | [opow_dvd_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/opow-dvd-opow.md) | 213 | `result-track:84004e4a68dac76a756d6864ef2766cdc1657c98934f58bac80ad9fef461d6c4` |
| 28 | `theorem` | [opow_dvd_opow_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/opow-dvd-opow-iff.md) | 217 | `result-track:e1bc2a46e9139f5c63b8ba60cff51b7745dc447706dcaa55c45378fc04b8e69e` |
| 29 | `theorem` | [opow_mul](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/opow-mul.md) | 225 | `result-track:fa33d4d361eaf3829449860ea73e04944182458536ba5f78f1c06669e0007300` |
| 30 | `def` | [log](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/log.md) | 256 | `declaration-track:eb651cae151596011a716549c35e05d61bd5ca42e371af1cede7df4dd10a19d3` |
| 31 | `theorem` | [log_nonempty](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/log-nonempty.md) | 261 | `result-track:51c296ae096e175dce24441214bc4346ca4c444131aa588e103b5cc289446ee9` |
| 32 | `theorem` | [log_def](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/log-def.md) | 265 | `result-track:f0a67b6484db2c8e97d4ed3b73d44b41ae61c2124bea04809f0ff3711559e9dc` |
| 33 | `theorem` | [log_of_not_one_lt_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/log-of-not-one-lt-left.md) | 269 | `result-track:39198f8e675347003198e6f30b2a6fa1caaac70da3b5df6c15b52d21f7fe8752` |
| 34 | `theorem` | [log_of_left_le_one](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/log-of-left-le-one.md) | 273 | `result-track:738cc986ac728f439666acbd2c333212fca60dbc7838c7b8ec8d472b69af8290` |
| 35 | `theorem` | [log_zero_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/log-zero-left.md) | 278 | `result-track:81bfd1dac46b9b438a1da76a898c5b9ea8faea595b6b0e56666d37561bf0a8fc` |
| 36 | `theorem` | [log_zero_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/log-zero-right.md) | 283 | `result-track:cbe8bb134ceb558f06de5d150628034352b6df0c49a8499d7f3c4a39db724cee` |
| 37 | `theorem` | [log_one_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/log-one-left.md) | 294 | `result-track:caf60b15da302f2da5082f1295957dd9fc0b178a99825921c1971f3456b6586a` |
| 38 | `theorem` | [succ_log_def](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/succ-log-def.md) | 298 | `result-track:33f6dc4ca5cd72263e1700b511f133a66ee1da20183dfa3be4ede577e4dbac31` |
| 39 | `theorem` | [lt_opow_succ_log_self](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/lt-opow-succ-log-self.md) | 310 | `result-track:ed4614c453e27265641f7aa0396ce136e441c360c50a00c30ba04a47b29e1d11` |
| 40 | `theorem` | [opow_log_le_self](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/opow-log-le-self.md) | 318 | `result-track:4c3a6ecef6d22ad48ec7de8fc51fa4c31773c03ddc783a880cfb8aedc3873135` |
| 41 | `theorem` | [opow_le_iff_le_log](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/opow-le-iff-le-log.md) | 330 | `result-track:35c2f84bfb34188cb84b1221088c774d4a98311b440a9c19c878d012933b2214` |
| 42 | `theorem` | [lt_opow_iff_log_lt](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/lt-opow-iff-log-lt.md) | 338 | `result-track:b04d25967be032ed60d9b0b5e6258e368731a8ba8452cf28df1f1bb5d80202c7` |
| 43 | `theorem` | [log_pos](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/log-pos.md) | 342 | `result-track:27760e272f09cf34f91c6fd0890216f7002606be42df03a11f5a796c70dfcf0f` |
| 44 | `theorem` | [log_eq_zero](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/log-eq-zero.md) | 346 | `result-track:4958c4c4b2af6631de4f501ffaa9ad0bccb54024ba88de5ba58718558f4be8b8` |
| 45 | `theorem` | [log_mono_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/log-mono-right.md) | 357 | `result-track:01143c9b288c3429b37018a3c4efdaae2397d7b2e5b42f27979acf89054df207` |
| 46 | `theorem` | [log_le_self](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/log-le-self.md) | 366 | `result-track:817e2220f8bf2ff647872202f95241755b0272a900146e3b4ad0d7b1a9aab0ef` |
| 47 | `theorem` | [log_one_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/log-one-right.md) | 374 | `result-track:899e54b2b4daf6a655436e86a3ebb90a00934c176384a8446f391fe39815f513` |
| 48 | `theorem` | [mod_opow_log_lt_self](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/mod-opow-log-lt-self.md) | 378 | `result-track:0676555a6395ddb78eb9752d8a2b947a09fcf4861a336679d00233e4f578ea33` |
| 49 | `theorem` | [log_mod_opow_log_lt_log_self](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/log-mod-opow-log-lt-log-self.md) | 384 | `result-track:642badafb726b8f55385c36f7022457ca4544009d2a7ddb4370c44473418f6fd` |
| 50 | `theorem` | [opow_mul_add_pos](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/opow-mul-add-pos.md) | 396 | `result-track:9d4dbba242e220bd0592754045a4b81d758776142b23588f3ade4b0d2a904576` |
| 51 | `theorem` | [opow_mul_add_lt_opow_mul_succ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/opow-mul-add-lt-opow-mul-succ.md) | 401 | `result-track:0892903d4de4d700dbb18da3e6397771242f70bf69d9e7091cdba4e15f9d08c2` |
| 52 | `theorem` | [opow_mul_add_lt_opow_succ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/opow-mul-add-lt-opow-succ.md) | 405 | `result-track:5490125878a69f7e838839e07e2b0621805a982cd36322701cb6f5f901035071` |
| 53 | `theorem` | [log_opow_mul_add](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/log-opow-mul-add.md) | 412 | `result-track:9de834a4371c12246297374c8fdd2a76bf1f6710914389b1f90b14e5a6c184e5` |
| 54 | `theorem` | [log_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/log-opow.md) | 424 | `result-track:28f21435e990ca15361e78b2921efa1448b0d7794075fa8a5a613d2dbf318d9a` |
| 55 | `theorem` | [div_opow_log_pos](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/div-opow-log-pos.md) | 430 | `result-track:a87b054844f75e749a7d1acea4ced91ff3056fee71f6ffddf7e519c438a8384f` |
| 56 | `theorem` | [div_opow_log_lt](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/div-opow-log-lt.md) | 437 | `result-track:ca53547f3e02c505f7cb1710ee871b3ce167e55b66fc28a4efc11ebd3f041c51` |
| 57 | `theorem` | [add_log_le_log_mul](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/add-log-le-log-mul.md) | 442 | `result-track:f56646e954ce52e70b3f01bd035af99af3e1eceb3421d7150dc951eb0046a7f0` |
| 58 | `theorem` | [nat_cast_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/nat-cast-opow.md) | 454 | `result-track:b0104fb2faec2602c1b21e43b5fd6b44ef511023775748b7bdaf468815170b79` |
| 59 | `theorem` | [sup_opow_nat](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/ExponentialOpowDef.lean/declarations/sup-opow-nat.md) | 460 | `result-track:3d6cdc4beb0546b16c28494c63296a91d5b511670d38bd95cc63adc5dfd0bf08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cbb9607dc73a2d8c1706d658d84e060f6327cd38485687e4e80de694647a269f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Exponential/Variantdffbac5ff49659635e505337eb202e85eb413b0b4d7f9a78e90886a4d1174ecf.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/SetTheory/Exponential/Variantdffbac5ff49659635e505337eb202e85eb413b0b4d7f9a78e90886a4d1174ecf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
