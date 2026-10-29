# Verification target: Set Subsingleton

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9be9824d96e9a7ae25fd37e86011dbc950e1de78",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variant582c355fe6008964433ba43fcdc915501dd9c8e5084d45596a2c78371cff7ab3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9be9824d96e9a7ae25fd37e86011dbc950e1de78`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variant582c355fe6008964433ba43fcdc915501dd9c8e5084d45596a2c78371cff7ab3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variant582c355fe6008964433ba43fcdc915501dd9c8e5084d45596a2c78371cff7ab3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Insert` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Subsingleton](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/subsingleton.md) | 33 | `declaration-track:2f75e521166b77d575975eb27746396d14773f1509d5932192cfed187d6cdb91` |
| 2 | `theorem` | [Subsingleton.anti](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/subsingleton-anti.md) | 36 | `result-track:629a39b19a371d8a9e729d9cd9b9c56575f9157d4b98fa707d5f67bbb2885e17` |
| 3 | `theorem` | [Subsingleton.eq_singleton_of_mem](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/subsingleton-eq-singleton-of-mem.md) | 39 | `result-track:4234295ea604a71e4c5aba1fd0b3991cd0f587da9f1e0969bb27719043980fb0` |
| 4 | `theorem` | [subsingleton_empty](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/subsingleton-empty.md) | 43 | `result-track:fa16e02fabd6772442bed6b36633cae9cd117620f0d591284cdbab0f50ae9e4d` |
| 5 | `theorem` | [subsingleton_singleton](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/subsingleton-singleton.md) | 46 | `result-track:e7cbcd485b0d63a3a8e0e1f3e45469851900f317946167d3c226c4090ec7f369` |
| 6 | `theorem` | [subsingleton_of_subset_singleton](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/subsingleton-of-subset-singleton.md) | 49 | `result-track:c7d90ebde8416647c01b5de6742922868ee0c07eaa0c3e3d365d503f42172146` |
| 7 | `theorem` | [subsingleton_of_forall_eq](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/subsingleton-of-forall-eq.md) | 52 | `result-track:eae6e2c35cbf45e014a592f82cabf8b9c533472eb3755919ea8b297c680b054e` |
| 8 | `theorem` | [subsingleton_iff_singleton](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/subsingleton-iff-singleton.md) | 55 | `result-track:f9a92c7cce3a75bb77c53f0120eaae7255167566f34c71ca0365a84b6b2baf48` |
| 9 | `theorem` | [Subsingleton.eq_empty_or_singleton](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/subsingleton-eq-empty-or-singleton.md) | 58 | `result-track:2d5b6d28674e97983774863750141dd34121db998847666b4455ca8a88d21143` |
| 10 | `theorem` | [Subsingleton.induction_on](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/subsingleton-induction-on.md) | 61 | `result-track:764eb9a008896acddff94e01a87c07492152549428ad594037338a3a09ef5bbc` |
| 11 | `theorem` | [subsingleton_univ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/subsingleton-univ.md) | 66 | `result-track:ecf4f3ed850bd27f722e11c2cb19f10b9a8e54ca34666aa8c6273c71880508dc` |
| 12 | `theorem` | [subsingleton_of_univ_subsingleton](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/subsingleton-of-univ-subsingleton.md) | 69 | `result-track:ba38bcf93271b44e16186506bd8ba692db7c55cbbd7ee4e54fa048cf5d86c9fd` |
| 13 | `theorem` | [subsingleton_univ_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/subsingleton-univ-iff.md) | 73 | `result-track:ac538cb42975bda492d862c46bcbc839ab16536f454b03da3006e2dee181eae1` |
| 14 | `lemma` | [Subsingleton.inter_singleton](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/subsingleton-inter-singleton.md) | 76 | `result-track:1dd0ca399180d84fbd1a49511f71abf653c71999c242b64da6ca919e7217c28a` |
| 15 | `lemma` | [Subsingleton.singleton_inter](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/subsingleton-singleton-inter.md) | 79 | `result-track:d6a9d98285450a1fa94e3095aa1e858957ac3f36bd5d4cc3b88f4af1b8fe7595` |
| 16 | `theorem` | [subsingleton_of_subsingleton](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/subsingleton-of-subsingleton.md) | 82 | `result-track:2edd0b5728b7ede0ff6765d553d3a651356a862d959dddaec9299de5a65ea99b` |
| 17 | `theorem` | [subsingleton_isTop](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/subsingleton-istop.md) | 85 | `result-track:e1b07ee8dd03bf0a661af3e83d419b9a347668a5143d6e5cc5cc86622381b505` |
| 18 | `theorem` | [subsingleton_isBot](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/subsingleton-isbot.md) | 88 | `result-track:b8e0161f0a16bc6323366e75227232337c9f1d3eb2de082ce03217c1bd00db6d` |
| 19 | `theorem` | [exists_eq_singleton_iff_nonempty_subsingleton](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/exists-eq-singleton-iff-nonempty-subsingleton.md) | 91 | `result-track:7765d10e5a28a7c6ed53a6bfb9f429b502dade7adaafaca06a1a422ff0f24ba8` |
| 20 | `theorem` | [subsingleton_coe](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/subsingleton-coe.md) | 100 | `result-track:ef484b53a742d7d7d6a9f91fc5344df925d3e1ca0de44fc80eb26ab249dbf4b3` |
| 21 | `theorem` | [Subsingleton.coe_sort](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/subsingleton-coe-sort.md) | 106 | `result-track:fb4c47bf5bc4f647e955abcdcde2126ef08b62332761c7c2485ed9c483e29815` |
| 22 | `instance` | [subsingleton_coe_of_subsingleton](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/subsingleton-coe-of-subsingleton.md) | 111 | `declaration-track:414ea8ccc5ec111225095280a12e91c2f202833aa02874135fffb5c888c68ab5` |
| 23 | `def` | [Nontrivial](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/nontrivial.md) | 124 | `declaration-track:984557c78b0d5086bb6d0d08f7124916f8c67893de36f947c9aae33beea96ba9` |
| 24 | `theorem` | [nontrivial_of_mem_mem_ne](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/nontrivial-of-mem-mem-ne.md) | 127 | `result-track:563791ad2c72ac55c984af1c6bd484dfc6bab55ff481cd173f1f400c12daa22a` |
| 25 | `def` | [Nontrivial.choose](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/nontrivial-choose.md) | 132 | `declaration-track:6ac22d00416a5c1f8055492c1420592e567a289468759c1a60132521e9c5ab75` |
| 26 | `theorem` | [Nontrivial.choose_fst_mem](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/nontrivial-choose-fst-mem.md) | 135 | `result-track:a258436a94317658a814b9f3dc9237753e5274a59ae82805e950b225d88f6ce5` |
| 27 | `theorem` | [Nontrivial.choose_snd_mem](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/nontrivial-choose-snd-mem.md) | 138 | `result-track:f7b6fd05711a8e699010a827733ba64dba7edcc53ba154bf9111181bdda430bb` |
| 28 | `theorem` | [Nontrivial.choose_fst_ne_choose_snd](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/nontrivial-choose-fst-ne-choose-snd.md) | 141 | `result-track:f64f29627a56d5bcc8cc25e519286d4b5232584d32544e9d495996b8dac44bbb` |
| 29 | `theorem` | [Nontrivial.mono](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/nontrivial-mono-source-edition-2.md) | 145 | `result-track:a95666469038a4241ec99d715b5c9cbffe4d4b2b4aa7ce910d26bc8607fd64fd` |
| 30 | `theorem` | [nontrivial_pair](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/nontrivial-pair.md) | 149 | `result-track:32eb7f76c174e118e35d5c2035c7436db88953f4910c97696df0990d89aaae46` |
| 31 | `theorem` | [nontrivial_of_pair_subset](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/nontrivial-of-pair-subset.md) | 152 | `result-track:579728a6003ea96bb551187657651cd92e7fec38169ab4a189622c9212f5137a` |
| 32 | `theorem` | [Nontrivial.pair_subset](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/nontrivial-pair-subset.md) | 155 | `result-track:e39e37e5f755ece3fadd4b6ff44524cffac5ad0e86632b78e83c27cde43d25f1` |
| 33 | `theorem` | [nontrivial_iff_pair_subset](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/nontrivial-iff-pair-subset.md) | 159 | `result-track:204457a39fb47ac80867391baf095b2c857e14e581b86014c145f270fe9fea8a` |
| 34 | `theorem` | [nontrivial_of_exists_ne](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/nontrivial-of-exists-ne.md) | 164 | `result-track:b6be813e43ecef98ca824158406d47ab64f86ec8e1d95a802b68a741c22045bc` |
| 35 | `theorem` | [Nontrivial.exists_ne](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/nontrivial-exists-ne.md) | 168 | `result-track:002f04ab6e0d78e945471349a6739d8339c06c081019b740686c5d95133116fc` |
| 36 | `theorem` | [nontrivial_iff_exists_ne](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/nontrivial-iff-exists-ne.md) | 174 | `result-track:0e54c5e01e98ba3205abe47a5ed9b771d28a34930bb3af67003fdfe312590e86` |
| 37 | `theorem` | [nontrivial_of_lt](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/nontrivial-of-lt.md) | 177 | `result-track:f93dd0b213ce36b44c602da14cc25f4a702b3578a7562f83b17c53db9d3f4451` |
| 38 | `theorem` | [nontrivial_of_exists_lt](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/nontrivial-of-exists-lt.md) | 181 | `result-track:9e707371d78c3f0a88f821142873c2a8276d20cfe11b3d2c6d2d3245ecaa30f7` |
| 39 | `theorem` | [Nontrivial.exists_lt](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/nontrivial-exists-lt.md) | 186 | `result-track:b6467e7c1cf097a12f9fbc7cc5d767f706cfd58d6f921b9c74e63ff621c2d148` |
| 40 | `theorem` | [nontrivial_iff_exists_lt](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/nontrivial-iff-exists-lt.md) | 190 | `result-track:efd88cda9f220194f39cc41b29128554f881998c28fe2eda58114e88906d3007` |
| 41 | `theorem` | [Nontrivial.nonempty](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/nontrivial-nonempty.md) | 194 | `result-track:6fcee95b2689d70366443ea177d392e6ab1cc0c9ba38d50fd7e4e617773a3a5c` |
| 42 | `theorem` | [Nontrivial.ne_empty](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/nontrivial-ne-empty.md) | 198 | `result-track:b475175300a1270c1c780b09d472ba82297d42e6d7a79b8e8fd76b8d94c02c13` |
| 43 | `theorem` | [Nontrivial.not_subset_empty](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/nontrivial-not-subset-empty.md) | 201 | `result-track:64211c24d05f66f3752999eca033a9b17f9da7428e616004bd8531e37ee54634` |
| 44 | `theorem` | [not_nontrivial_empty](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/not-nontrivial-empty.md) | 205 | `result-track:2f9339b810e701d6bfe3fc854ef0602f435364b23028faa2eb7b6444341c49c1` |
| 45 | `theorem` | [not_nontrivial_singleton](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/not-nontrivial-singleton.md) | 208 | `result-track:71fd113eafe897fd2b14579c8c96fe278d84a9196bf43917918e9ecd710491da` |
| 46 | `theorem` | [Nontrivial.ne_singleton](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/nontrivial-ne-singleton.md) | 213 | `result-track:e872a553f8a34ed6816a49f913dd0b7d58632505a7bb34382d84f624420bb1c2` |
| 47 | `theorem` | [Nontrivial.not_subset_singleton](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/nontrivial-not-subset-singleton.md) | 217 | `result-track:a0c77f2b04024d4c6b7967a0c755260eb1a15047e6fe3fe1b2b8851855396da0` |
| 48 | `theorem` | [nontrivial_univ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/nontrivial-univ.md) | 220 | `result-track:0c2dda6642c6e9ab62ed01aff39e03356a19e7fc59a3ddfaa871850c4bf84ed8` |
| 49 | `theorem` | [nontrivial_of_univ_nontrivial](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/nontrivial-of-univ-nontrivial.md) | 224 | `result-track:8caddf2f66a0a052a4053abdcb0be50f09f72b0b8aa06e767b71f99772159dad` |
| 50 | `theorem` | [nontrivial_univ_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/nontrivial-univ-iff.md) | 229 | `result-track:5a77d3109ac8b0f038e240feb8d5a28e2afa6186c73fd2a7aaf893aa755662b6` |
| 51 | `theorem` | [singleton_ne_univ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/singleton-ne-univ.md) | 233 | `result-track:d616cd436c96a3a657036a578d88f128e881a4aac08d9fc70462f441ae75f324` |
| 52 | `theorem` | [singleton_ssubset_univ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/singleton-ssubset-univ.md) | 237 | `result-track:8211f86218c92d4733ebf01b9ac4669c95c72ae3db57b99c929bca442f4a520f` |
| 53 | `theorem` | [nontrivial_of_nontrivial](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/nontrivial-of-nontrivial.md) | 240 | `result-track:e06aadd7f282244b384662b32039c49ca07f8c87aa60fa06b4e7aebca0854ddb` |
| 54 | `theorem` | [nontrivial_coe_sort](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/nontrivial-coe-sort.md) | 246 | `result-track:1e33a330c123deb5058005f7f6c77ee0f49655606ce764cabcba03d37112a881` |
| 55 | `theorem` | [nontrivial_of_nontrivial_coe](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/nontrivial-of-nontrivial-coe.md) | 253 | `result-track:ff26a02651be3879be2e1f6aa3efe9f3c035f30b28a7b2aa9a825e3bd4643447` |
| 56 | `theorem` | [nontrivial_mono](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/nontrivial-mono.md) | 256 | `result-track:7238f5e6cf9dcf9667ae5326b73e57ab5e4c4ac20d40a141fb1d8815108f2e3b` |
| 57 | `theorem` | [not_subsingleton_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/not-subsingleton-iff.md) | 261 | `result-track:32dce7bbfa086054039a2addfce64b0a43c8b20cd241816ba06804c9135ee2d2` |
| 58 | `theorem` | [not_nontrivial_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/not-nontrivial-iff.md) | 265 | `result-track:9fa031b8925ea725c8e3ff53e64a33d30e1d6460495fadc7e24ff8f2a5b207e3` |
| 59 | `lemma` | [subsingleton_or_nontrivial](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/subsingleton-or-nontrivial.md) | 272 | `result-track:e4423e8695c8bcf787e8d921ae52c587f2a5ba35df4276d9402c89bd48ec85e5` |
| 60 | `lemma` | [eq_singleton_or_nontrivial](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/eq-singleton-or-nontrivial.md) | 275 | `result-track:a8c8b9627e76bf8a25978d3f1440f48f596c9235fe3984b1c0dece5b38c9df1b` |
| 61 | `lemma` | [nontrivial_iff_ne_singleton](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/nontrivial-iff-ne-singleton.md) | 278 | `result-track:d74a2731ca47aac6057332277d4151a60bd85485738f07d9e24acb2d4370fe13` |
| 62 | `lemma` | [Nonempty.exists_eq_singleton_or_nontrivial](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/nonempty-exists-eq-singleton-or-nontrivial.md) | 281 | `result-track:e3e782be14a353a93c186de76cbba0b74df1a1de166992436eeacdc084af6496` |
| 63 | `theorem` | [univ_eq_true_false](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/univ-eq-true-false.md) | 284 | `result-track:5b5daa6fe94a79f79053dabe322b69209680daac0f09684375613ddb7c54b384` |
| 64 | `theorem` | [Subsingleton.monotoneOn](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/subsingleton-monotoneon.md) | 296 | `result-track:83262b528a2ae747fc8653b33eb0469e53fdb9611de270f16472516ff17a73f1` |
| 65 | `theorem` | [Subsingleton.antitoneOn](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/subsingleton-antitoneon.md) | 299 | `result-track:9be14649fd5ab49204b5b30590706ddbd20b15ae8f86d313786f5cef921a1f3f` |
| 66 | `theorem` | [Subsingleton.strictMonoOn](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/subsingleton-strictmonoon.md) | 302 | `result-track:cff0af61f37d21bc94d14a4b8200bcc3ffbd7c12dc349fc603e0372bb2591f87` |
| 67 | `theorem` | [Subsingleton.strictAntiOn](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/subsingleton-strictantion.md) | 305 | `result-track:456abbf17a64ada0130f1c6f740e833e2973170213ea2604b2ddc574a075e22c` |
| 68 | `theorem` | [monotoneOn_singleton](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/monotoneon-singleton.md) | 309 | `result-track:ca709c830ae5b548f831f9bcaaf348ca422d197f950105ac24bb05817768318e` |
| 69 | `theorem` | [antitoneOn_singleton](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/antitoneon-singleton.md) | 313 | `result-track:4688da37e34d4bab3888d5afe519f1bdff9d3a574fb8bf859fe28252296438ad` |
| 70 | `theorem` | [strictMonoOn_singleton](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/strictmonoon-singleton.md) | 317 | `result-track:5c3c9f9c9f4cd267225714a45e9b297000b60fb1908cf650baa79bc18c2c1a7d` |
| 71 | `theorem` | [strictAntiOn_singleton](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSubsingleton.lean/declarations/strictantion-singleton.md) | 321 | `result-track:95ffe2a9bb0e80df1a2c607e7f59b5365acfc9fb5db3f199d93f3ee85c46aeb6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9c32643180852a65761c9628cd8b821c8a274cd3ede6c17dafdd189ab7eeaa57 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variant582c355fe6008964433ba43fcdc915501dd9c8e5084d45596a2c78371cff7ab3.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Subsingleton/Variant582c355fe6008964433ba43fcdc915501dd9c8e5084d45596a2c78371cff7ab3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
