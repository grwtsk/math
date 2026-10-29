# Verification target: Model Theory Definability Not Mem Bot

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3cdaddf0644ef68cd6bddc2488db170e646c810",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant9cf02af444698e489f022de5b7850993c3db27544f3f9b9770d4663976c31ff8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3cdaddf0644ef68cd6bddc2488db170e646c810`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant9cf02af444698e489f022de5b7850993c3db27544f3f9b9770d4663976c31ff8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant9cf02af444698e489f022de5b7850993c3db27544f3f9b9770d4663976c31ff8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.SetLike.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Semantics` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Definable](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/definable-source-edition-3.md) | 45 | `declaration-track:bd55e2fd7f076d985177a7722ae2f3d63e6a2a6eaf2a15659c72d0e26f3b0c7c` |
| 2 | `theorem` | [Definable.map_expansion](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/definable-map-expansion.md) | 51 | `result-track:085df3714ff8869a35072ddc8da0d8a973c3254879027b08f8a7374ec1fff6d0` |
| 3 | `theorem` | [empty_definable_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/empty-definable-iff.md) | 59 | `result-track:4e2b508295c78cfb4c9297424db760c80cb0dfd1982138c1eb5c43fed01fd87a` |
| 4 | `theorem` | [definable_iff_empty_definable_with_params](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/definable-iff-empty-definable-with-params.md) | 65 | `result-track:29da07f74abea6895795cf035f0940c8758b5545cc1f8bb6345440e65cf18a8a` |
| 5 | `theorem` | [Definable.mono](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/definable-mono.md) | 70 | `result-track:03d9d8c9d46768121a9bbde8dab35da99ac42774f51bc99a008ed1707cfe1ca5` |
| 6 | `theorem` | [definable_empty](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/definable-empty.md) | 76 | `result-track:63d838adeb967bb7ec03efe61cc1961ca097038c540ea0c248186c896fcb541b` |
| 7 | `theorem` | [definable_univ](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/definable-univ.md) | 83 | `result-track:2d346d151d772ff79d17bced6beaffced588f6f46dd5c86a60fb55e548ffc91b` |
| 8 | `theorem` | [Definable.inter](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/definable-inter.md) | 90 | `result-track:d0f49b0b6ba6e0eb6cdc3967bae84a701d718b7a5f4a1912857d009a9ad6ffb9` |
| 9 | `theorem` | [Definable.union](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/definable-union.md) | 100 | `result-track:97de5f9ada82fbcc4df675a3e1709b2b8831f21ac0d29e57f3dffc4972fd5a1a` |
| 10 | `theorem` | [definable_finset_inf](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/definable-finset-inf.md) | 109 | `result-track:28e27b7f80836d2cc85b37daa66426c315345523513b5c4f36149eef7978c1b7` |
| 11 | `theorem` | [definable_finset_sup](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/definable-finset-sup.md) | 117 | `result-track:d4577ce8c5f67f323517d8c60c4fd723b296b45d86a76fe0f45496814a197136` |
| 12 | `theorem` | [definable_finset_biInter](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/definable-finset-biinter.md) | 125 | `result-track:3ef2642fac0eebfe6365270100a416a2a02ca09f2dc50b327c8d9dba5e319017` |
| 13 | `theorem` | [definable_finset_biUnion](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/definable-finset-biunion.md) | 131 | `result-track:67ff93d9c5998b334c9149f8232f56fe0b85846b882035a15ddc53d9ccdba16c` |
| 14 | `theorem` | [Definable.compl](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/definable-compl.md) | 138 | `result-track:2eb4d67cc740679e424370a111f9f1a2e03cd9e7b1317bba22c92fd976b0c158` |
| 15 | `theorem` | [Definable.sdiff](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/definable-sdiff.md) | 146 | `result-track:73ccc6f1948c3baede5ac857879949dca89528fcc48210e1de5466d268b1f3e5` |
| 16 | `theorem` | [Definable.preimage_comp](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/definable-preimage-comp.md) | 151 | `result-track:099c116ef5fe86cff24c74561a238ab2dfa017a2f06218681124e3a635346842` |
| 17 | `theorem` | [Definable.image_comp_equiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/definable-image-comp-equiv.md) | 159 | `result-track:6c7d8a63adac8bed207253a355ba613cac77a7caf3329eec4612607e6afa0604` |
| 18 | `theorem` | [Definable.image_comp_sum_inl_fin](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/definable-image-comp-sum-inl-fin.md) | 172 | `result-track:e2cf9ff288b004f2df9cd704357a911d1a44c1053549516add7bc9a5a951b05e` |
| 19 | `theorem` | [Definable.image_comp_embedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/definable-image-comp-embedding.md) | 188 | `result-track:5bddad92976b8d05123821db41ac414c3d53cc06a3f0b3851d39c48cf5c910eb` |
| 20 | `theorem` | [Definable.image_comp](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/definable-image-comp.md) | 204 | `result-track:403d06f6b0c13903213560a9245930fb52c847a5a1a5f848da4169ba213b8669` |
| 21 | `def` | [Definable₁](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/definable-source-edition-2.md) | 243 | `declaration-track:6c38d23e7f4dd29cfa46dcbc1412f6484a63472e0cbb3701ba1e03426e3b7223` |
| 22 | `def` | [Definable₂](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/definable.md) | 248 | `declaration-track:62df28fbb7a9b8f9977a03d75e273d11683be4c31d66bd04cef52ff6276849c1` |
| 23 | `def` | [DefinableSet](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/definableset.md) | 264 | `declaration-track:947d378da7fcbd45cbaed215a545306da07c8196beb3f91b06afb81492d7b00a` |
| 24 | `instance` | [instSetLike](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/instsetlike.md) | 272 | `declaration-track:511bde6448213a5f3780ae1cbac15dd46ae7c3b37f138e0c22e7e49f4bdaca0f` |
| 25 | `instance` | [instTop](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/insttop.md) | 277 | `declaration-track:518c16c09e9dda9390fa84177508ea369e8e827609f6b0e47c46b7bf39f0d71e` |
| 26 | `instance` | [instBot](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/instbot.md) | 281 | `declaration-track:26c1e0a3957c67dd4d3871160d2c353102037f127150f2637b2a02444f1ec4b0` |
| 27 | `instance` | [instSup](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/instsup.md) | 285 | `declaration-track:f065f21ba40b9b61622d1337a8aabfebbd73fe5d7bad14ca51a62a67c1cea416` |
| 28 | `instance` | [instInf](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/instinf.md) | 289 | `declaration-track:47980975f383a7ff5686bf8340016ddf3ebb27b52e8ef2e2f827bd864dc14729` |
| 29 | `instance` | [instHasCompl](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/insthascompl.md) | 293 | `declaration-track:c1012c1b6c236e2f6ea52ee1b9959906c857e862707e6e7dd070a24d5b4db466` |
| 30 | `instance` | [instSDiff](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/instsdiff.md) | 297 | `declaration-track:fd42139f5b43ab153033d35fe2f9d7e81518f00a3c4d79d8c5169db14bdbdd7c` |
| 31 | `instance` | [instInhabited](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/instinhabited.md) | 301 | `declaration-track:a6a9edd538b24550f2fcadd50f26dc460ea9247d6dd860a48094281574823ac1` |
| 32 | `theorem` | [le_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/le-iff.md) | 305 | `result-track:40d4a05242e72420cead1ba17ee369909cb5cb87a7f0f037c5376844460dc33f` |
| 33 | `theorem` | [mem_top](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/mem-top.md) | 310 | `result-track:c2f9cf0e83c932fd850bd37b8062abf99d55999dd0a1ae9fc537623e5d9d7124` |
| 34 | `theorem` | [not_mem_bot](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/not-mem-bot.md) | 315 | `result-track:b8fac8f195e716cfdfe5afcbd8f9e4b40a8dde52eb11f7385320ab6009c0d75a` |
| 35 | `theorem` | [mem_sup](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/mem-sup.md) | 320 | `result-track:610b051312b2b8ad11bf8b55e329c7ef73183a3f3dc5cae3c2af0bec4e5c81fa` |
| 36 | `theorem` | [mem_inf](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/mem-inf.md) | 325 | `result-track:00109c8e01076e70a953e84e4ec00c19def2e9cfea0c01f0ba6e0841daf8c80a` |
| 37 | `theorem` | [mem_compl](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/mem-compl.md) | 330 | `result-track:f8fc992d542f48bc4455caf3529552a8675865d7d80cfc2b0e8d6a3f16572fc0` |
| 38 | `theorem` | [mem_sdiff](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/mem-sdiff.md) | 335 | `result-track:1f7c823a28d981f697375fef839741f5a9c7d6323e1dc912f90179a0d65d8736` |
| 39 | `theorem` | [coe_top](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/coe-top.md) | 340 | `result-track:7d5dcfe6c4b53ca7d78cf12a6f829f11633f290fa8a616e96b669fd119437822` |
| 40 | `theorem` | [coe_bot](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/coe-bot.md) | 345 | `result-track:c0893828a93a577f49afa64fce612627e8d3acb930782a4ab9fc45c779467729` |
| 41 | `theorem` | [coe_sup](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/coe-sup.md) | 350 | `result-track:bc10d8cba93bdc675194ba7a3120e68be1986790b5438f318eaf95089545e229` |
| 42 | `theorem` | [coe_inf](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/coe-inf.md) | 356 | `result-track:474d4f6904cfdef7573a98f2a27eb50d4a67901c0328b0463f86999dd56b5c18` |
| 43 | `theorem` | [coe_compl](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/coe-compl.md) | 362 | `result-track:6dfab29182602400ae0aee2deb9f698b89607727088115526384b1789af44b75` |
| 44 | `theorem` | [coe_sdiff](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/coe-sdiff.md) | 368 | `result-track:7e10c65badc84d6af054302979f3b712bcc79a78035ce59e697e6cb0650e62ab` |
| 45 | `instance` | [instBooleanAlgebra](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryDefinabilityNotMemBot.lean/declarations/instbooleanalgebra.md) | 373 | `declaration-track:3665eb57e4dc9ad84c7f397cee317e84f1e2cd16132ae498cedb8b9be2486bfb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=715fd617918ff6215df56053b8e92dd0541da0a66dd3960cca6e4aad39524fc4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant9cf02af444698e489f022de5b7850993c3db27544f3f9b9770d4663976c31ff8.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant9cf02af444698e489f022de5b7850993c3db27544f3f9b9770d4663976c31ff8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
