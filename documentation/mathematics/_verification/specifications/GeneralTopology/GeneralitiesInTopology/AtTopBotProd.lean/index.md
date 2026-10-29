# Verification target: At Top Bot Prod

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e80f1b86c1ff06c1f4c56406ee47dfc45e3f1918",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Prod/Variantf5a096d7751e66a8893cf822c2e3fc19402992e1ad556d6bfa7537eb04c793ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotProd.lean/index.md) · [Full source](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotProd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e80f1b86c1ff06c1f4c56406ee47dfc45e3f1918`.

Source path: `GRWTSK/Topology/GeneralTopology/Prod/Variantf5a096d7751e66a8893cf822c2e3fc19402992e1ad556d6bfa7537eb04c793ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Prod/Variantf5a096d7751e66a8893cf822c2e3fc19402992e1ad556d6bfa7537eb04c793ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Prod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Prod` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_atTop_atTop_eq](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotProd.lean/declarations/prod-attop-attop-eq.md) | 20 | `result-track:86ed5442630d8fb6423f4c79e9d3c34f9b99e014f5a46a8d69a38191ccf8da19` |
| 2 | `lemma` | [tendsto_finset_prod_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotProd.lean/declarations/tendsto-finset-prod-attop.md) | 28 | `result-track:28405c2516635333986e11e82b59934a49780f3fcd5015b8da48a9dda034d0be` |
| 3 | `theorem` | [prod_atBot_atBot_eq](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotProd.lean/declarations/prod-atbot-atbot-eq.md) | 38 | `result-track:67e3960382a18ef356a5a4b4a973197ca9b955eca2980f1cccc20de10967e70d` |
| 4 | `theorem` | [prod_map_atTop_eq](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotProd.lean/declarations/prod-map-attop-eq.md) | 42 | `result-track:9ca1ab2718a195840fd32373354e93d0be5b243dbdc6b0afa7c14680b99525cb` |
| 5 | `theorem` | [prod_map_atBot_eq](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotProd.lean/declarations/prod-map-atbot-eq.md) | 46 | `result-track:b3f9016e218c4e363ec1006790709d20eaf60baaec59cd66119b97dbb76823d4` |
| 6 | `theorem` | [tendsto_atBot_diagonal](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotProd.lean/declarations/tendsto-atbot-diagonal.md) | 50 | `result-track:05e96bd17fc26aa31a42fa8fd5486c9b7969c9384dea72473c49bbed1338ca44` |
| 7 | `theorem` | [tendsto_atTop_diagonal](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotProd.lean/declarations/tendsto-attop-diagonal.md) | 54 | `result-track:3f00abcc46e76a7dd1c18d5eb023f628f52868463e991ec52a6396c8168091e4` |
| 8 | `theorem` | [Tendsto.prod_map_prod_atBot](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotProd.lean/declarations/tendsto-prod-map-prod-atbot.md) | 58 | `result-track:221823dcf9c51adbd77795f5b7e27660c1fddee0ff6266fc2d4fd31c2e3bec0f` |
| 9 | `theorem` | [Tendsto.prod_map_prod_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotProd.lean/declarations/tendsto-prod-map-prod-attop.md) | 64 | `result-track:288965c93e84eefff9f15859937923b2baac585fd6c35cda5e42e39e0151f2ff` |
| 10 | `theorem` | [Tendsto.prod_atBot](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotProd.lean/declarations/tendsto-prod-atbot.md) | 70 | `result-track:4994b617e82cf94851a21d533de0d886e5bde37a47e8fcdb296dd383cd234a21` |
| 11 | `theorem` | [Tendsto.prod_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotProd.lean/declarations/tendsto-prod-attop.md) | 76 | `result-track:c9cbed839592eea8a8a03be012929c598d0424d2f46cae8bb630385ec86641a6` |
| 12 | `theorem` | [eventually_atBot_prod_self](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotProd.lean/declarations/eventually-atbot-prod-self-source-edition-2.md) | 82 | `result-track:fb76130797505c8e03bc16d8e15943d343f71f2e8cfc29bb1b634b6e861a7ba7` |
| 13 | `theorem` | [eventually_atTop_prod_self](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotProd.lean/declarations/eventually-attop-prod-self.md) | 86 | `result-track:150ca076889034df5e4670185b75ac51415d6da269934095da345d7f4cd96eb6` |
| 14 | `theorem` | [eventually_atBot_prod_self'](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotProd.lean/declarations/eventually-atbot-prod-self.md) | 90 | `result-track:16ed8bc0233f70239443d6ed537804dd8d4bd0e43194b443e913c9b0c667caaa` |
| 15 | `theorem` | [eventually_atTop_prod_self'](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotProd.lean/declarations/eventually-attop-prod-self-source-edition-2.md) | 94 | `result-track:e162550df4a580f455043d876e81e7e797a55aa6dc60aee841fefe294c600f7e` |
| 16 | `theorem` | [eventually_atTop_curry](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotProd.lean/declarations/eventually-attop-curry.md) | 98 | `result-track:fa22bbbbfeda2a78de8bd026d8728a1fc0520bfa2e9615e71ece9ba12efb5264` |
| 17 | `theorem` | [eventually_atBot_curry](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotProd.lean/declarations/eventually-atbot-curry.md) | 103 | `result-track:c33d03a6de158d00576dee06373bafbea54d76f41c9b0ce22e3c21b0031fb700` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e0ce4505b11653a8f532ab457a744622d50a4c91afd31e7b0d1f13c329219f67 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Prod/Variantf5a096d7751e66a8893cf822c2e3fc19402992e1ad556d6bfa7537eb04c793ef.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Prod/Variantf5a096d7751e66a8893cf822c2e3fc19402992e1ad556d6bfa7537eb04c793ef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
