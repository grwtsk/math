# Verification target: At Top Bot Archimedean

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d1f6ffed91ae0a51f0d70fde5c791349f1e507c",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Archimedean/Variant07e9596ae02b86261ac825d8162623f78f5d1bcbcc22b5874e6807beddfa3455.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedean.lean/index.md) · [Full source](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedean.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d1f6ffed91ae0a51f0d70fde5c791349f1e507c`.

Source path: `GRWTSK/Topology/GeneralTopology/Archimedean/Variant07e9596ae02b86261ac825d8162623f78f5d1bcbcc22b5874e6807beddfa3455.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Archimedean/Variant07e9596ae02b86261ac825d8162623f78f5d1bcbcc22b5874e6807beddfa3455.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Archimedean.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Group` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.CountablyGenerated` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Nat.comap_cast_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedean.lean/declarations/nat-comap-cast-attop.md) | 26 | `result-track:931223be3951bf468181b1a01444dc50ee3124f741f5e27c74045c14e4173cd7` |
| 2 | `theorem` | [tendsto_natCast_atTop_iff](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedean.lean/declarations/tendsto-natcast-attop-iff.md) | 30 | `result-track:448b16ba9bdf16b5790423cd0068b1ed9536789766881c86763629385b7872f0` |
| 3 | `theorem` | [tendsto_natCast_atTop_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedean.lean/declarations/tendsto-natcast-attop-attop.md) | 35 | `result-track:c5a3882cc5b9b01e6557b3e4ad0eaa083fa0fffc4d3259a073426ed3af248550` |
| 4 | `theorem` | [Filter.Eventually.natCast_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedean.lean/declarations/filter-eventually-natcast-attop.md) | 40 | `result-track:c022cc9252a3a351a1c63ba3c1f72e844fdfc1789aff36cd7e010e009299a128` |
| 5 | `theorem` | [Int.comap_cast_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedean.lean/declarations/int-comap-cast-attop.md) | 45 | `result-track:99ab9e1fc4227d048145f033e79c1c1d546148f5dee85b2528d5f4f2f8e5cc42` |
| 6 | `theorem` | [Int.comap_cast_atBot](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedean.lean/declarations/int-comap-cast-atbot.md) | 52 | `result-track:16c6b7d36cbffdba7300ea8c86129ff5588667c36981d631fa1ca824f92183cd` |
| 7 | `theorem` | [tendsto_intCast_atTop_iff](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedean.lean/declarations/tendsto-intcast-attop-iff.md) | 58 | `result-track:bd8ac4973589e31a452cee2f53ea8945bd284ab4f84d264b2f245960c7873b72` |
| 8 | `theorem` | [tendsto_intCast_atBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedean.lean/declarations/tendsto-intcast-atbot-iff.md) | 63 | `result-track:3ea5c804608f5e651e16a23287a755578d7583b8c6ad522cade45b65022730ea` |
| 9 | `theorem` | [tendsto_intCast_atTop_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedean.lean/declarations/tendsto-intcast-attop-attop.md) | 68 | `result-track:e6efe010cbd6e5cde97f86e3551e700d370cca1c548f5e19a0e8583f0f447f82` |
| 10 | `theorem` | [Filter.Eventually.intCast_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedean.lean/declarations/filter-eventually-intcast-attop.md) | 73 | `result-track:6ccf226a567846813a192bf3bdc65ddd3f8c85977ed4361deac9412d7e7561c7` |
| 11 | `theorem` | [Filter.Eventually.intCast_atBot](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedean.lean/declarations/filter-eventually-intcast-atbot.md) | 78 | `result-track:dcc0d53d130cb37add13cd285fc66f7bcfd296c4f6a345762a92ca399c8bb9ab` |
| 12 | `theorem` | [Rat.comap_cast_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedean.lean/declarations/rat-comap-cast-attop.md) | 84 | `result-track:356bd3c259c3365741fe80602b9a80ea0285f76533963c6a72943cae533cf763` |
| 13 | `theorem` | [Rat.comap_cast_atBot](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedean.lean/declarations/rat-comap-cast-atbot.md) | 89 | `result-track:c87868b9fc48ce4547e7f43a22535c1a27aefe8c1fb938f12d133ff47ff226d8` |
| 14 | `theorem` | [tendsto_ratCast_atTop_iff](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedean.lean/declarations/tendsto-ratcast-attop-iff.md) | 96 | `result-track:90baff2dacdb31928da0569ec77851d1cca6e55556b65c811ebadf684566a898` |
| 15 | `theorem` | [tendsto_ratCast_atBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedean.lean/declarations/tendsto-ratcast-atbot-iff.md) | 101 | `result-track:a2b65bd92d28c26a2f8a55746bfda98adbdfa74974d4e67dfd33e39b03ace1f9` |
| 16 | `theorem` | [Filter.Eventually.ratCast_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedean.lean/declarations/filter-eventually-ratcast-attop.md) | 106 | `result-track:5c458ff5bdb3a4a1da90dbaa63841a43f26c2c1493dfa8e8bcd99e29d495be43` |
| 17 | `theorem` | [Filter.Eventually.ratCast_atBot](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedean.lean/declarations/filter-eventually-ratcast-atbot.md) | 111 | `result-track:1011834fa7d20cbf6f24aabe4aa61290cb353bf4d3845812d5a404f458712c30` |
| 18 | `theorem` | [atTop_hasAntitoneBasis_of_archimedean](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedean.lean/declarations/attop-hasantitonebasis-of-archimedean.md) | 116 | `result-track:fdf60c51af8af8bf41e6380e0b24321130c3cb8c8d64f6149079f20c0a829f82` |
| 19 | `theorem` | [atTop_hasCountableBasis_of_archimedean](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedean.lean/declarations/attop-hascountablebasis-of-archimedean.md) | 121 | `result-track:92c8d56859a7102d23efc8dc9eca954eb414ead8888cbb1ac1edcccd1994b655` |
| 20 | `theorem` | [atBot_hasCountableBasis_of_archimedean](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedean.lean/declarations/atbot-hascountablebasis-of-archimedean.md) | 126 | `result-track:017927499291997d1f680eff3aafc3a4af68a3a9dfd59469f18c88ac8bf0a5c0` |
| 21 | `instance` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedean.lean/declarations/instance.md) | 135 | `declaration-track:186e9da1cace58187d14b6727276a935ca6573bd248f3d03306de816d83fba2e` |
| 22 | `instance` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedean.lean/declarations/instance-source-edition-2.md) | 140 | `declaration-track:31fccee2eaa615d650be0a70060b55d0b21e79e17b14a93117cab9a3b8d59966` |
| 23 | `theorem` | [Tendsto.const_mul_atTop'](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedean.lean/declarations/tendsto-const-mul-attop.md) | 157 | `result-track:b655ed997b56ea9b466bc4229fa7b6b38fb112eae68908b657e2be050c17b257` |
| 24 | `theorem` | [Tendsto.atTop_mul_const'](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedean.lean/declarations/tendsto-attop-mul-const.md) | 175 | `result-track:33dab84d4d89bfe657cfd516f6b05487836c350256874b0e1ab219c76037c5c5` |
| 25 | `theorem` | [Tendsto.atTop_mul_const_of_neg'](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedean.lean/declarations/tendsto-attop-mul-const-of-neg.md) | 197 | `result-track:effa4366db6b94aecfdee9e6d212f76debd56aab22ac2d97f6915a24b1f0a5bb` |
| 26 | `theorem` | [Tendsto.atBot_mul_const'](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedean.lean/declarations/tendsto-atbot-mul-const.md) | 203 | `result-track:57a06d0b71d91e958be51bad0dcaf25d39ce0a60a027c3053975ace180ea0f99` |
| 27 | `theorem` | [Tendsto.atBot_mul_const_of_neg'](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedean.lean/declarations/tendsto-atbot-mul-const-of-neg.md) | 210 | `result-track:5be4f32766d1ac4f3758da7c5e26fe2c9fdadc17ea9577fc98b8ceae994fcbdf` |
| 28 | `theorem` | [Tendsto.atTop_nsmul_const](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedean.lean/declarations/tendsto-attop-nsmul-const.md) | 220 | `result-track:fd1ca2920c243890948948885ebac37a11212597ff3c103b3a28f0f0bf31096f` |
| 29 | `theorem` | [Tendsto.atTop_nsmul_neg_const](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedean.lean/declarations/tendsto-attop-nsmul-neg-const.md) | 232 | `result-track:9c626dafe67e5ce2117e3ff7f845abfa7e8b070812cae5b21716feb269c0f604` |
| 30 | `theorem` | [Tendsto.atTop_zsmul_const](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedean.lean/declarations/tendsto-attop-zsmul-const.md) | 235 | `result-track:2ffe383e5e554ced9a3d268e2b5f4f8a482603ff4c671ec41a211ab859efb1fd` |
| 31 | `theorem` | [Tendsto.atTop_zsmul_neg_const](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedean.lean/declarations/tendsto-attop-zsmul-neg-const.md) | 242 | `result-track:e10182fc26d38bb0138cc5d8ab01c54f048127860c53d14e33e72479037abb55` |
| 32 | `theorem` | [Tendsto.atBot_zsmul_const](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedean.lean/declarations/tendsto-atbot-zsmul-const.md) | 245 | `result-track:4657e3ae98d4dfdc0b0d2e03d8b5329ab6e922de69cea4aa6caf68135f9d8281` |
| 33 | `theorem` | [Tendsto.atBot_zsmul_neg_const](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedean.lean/declarations/tendsto-atbot-zsmul-neg-const.md) | 250 | `result-track:178c96467490342248a46f645f594c05a7d87d7c79b4121094d4786fa229fa71` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e658000ed6c289cf082f0dbf62d4f95866bfe051432b3b3fc28aac87452eac6b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Archimedean/Variant07e9596ae02b86261ac825d8162623f78f5d1bcbcc22b5874e6807beddfa3455.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Archimedean/Variant07e9596ae02b86261ac825d8162623f78f5d1bcbcc22b5874e6807beddfa3455.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
