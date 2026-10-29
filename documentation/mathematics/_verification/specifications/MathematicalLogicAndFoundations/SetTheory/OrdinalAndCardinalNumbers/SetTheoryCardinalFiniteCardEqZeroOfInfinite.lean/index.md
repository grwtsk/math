# Verification target: Set Theory Cardinal Finite Card Eq Zero Of Infinite

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf730d5878dcf0bf1b8437059c10b054c0c10097",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant012d1c9125d20a2f6cb126dd04a4dea89f93b5b7b9088def33cf2587400810ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/SetTheoryCardinalFiniteCardEqZeroOfInfinite.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/SetTheoryCardinalFiniteCardEqZeroOfInfinite.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf730d5878dcf0bf1b8437059c10b054c0c10097`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant012d1c9125d20a2f6cb126dd04a4dea89f93b5b7b9088def33cf2587400810ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant012d1c9125d20a2f6cb126dd04a4dea89f93b5b7b9088def33cf2587400810ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ZMod.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [card](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/SetTheoryCardinalFiniteCardEqZeroOfInfinite.lean/declarations/card-source-edition-2.md) | 37 | `declaration-track:5149458d76c1fa1d79c003cdaee91dbfde5f948f5b2bb05ba6de19c0d2403f0e` |
| 2 | `theorem` | [card_eq_fintype_card](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/SetTheoryCardinalFiniteCardEqZeroOfInfinite.lean/declarations/card-eq-fintype-card.md) | 42 | `result-track:3b6dc38df94f98c8e7e748453f67366aac76bad6bfd8db86862728ee8401e9a6` |
| 3 | `theorem` | [card_eq_zero_of_infinite](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/SetTheoryCardinalFiniteCardEqZeroOfInfinite.lean/declarations/card-eq-zero-of-infinite.md) | 47 | `result-track:6925b02058ec92ca4c09be2d641a42dc27cb00da286c0a3fe3d8501b80f03ee6` |
| 4 | `theorem` | [finite_of_card_ne_zero](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/SetTheoryCardinalFiniteCardEqZeroOfInfinite.lean/declarations/finite-of-card-ne-zero.md) | 51 | `result-track:7d0c955785b679e193caf36e1e1af10e666a079800d9bf594d3aab5287d2cac8` |
| 5 | `theorem` | [card_congr](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/SetTheoryCardinalFiniteCardEqZeroOfInfinite.lean/declarations/card-congr-source-edition-2.md) | 55 | `result-track:fd1eac98597e300be75df78ace99e6ad3b06777f5af0d54ac95d4215c8adabf8` |
| 6 | `theorem` | [card_eq_of_bijective](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/SetTheoryCardinalFiniteCardEqZeroOfInfinite.lean/declarations/card-eq-of-bijective.md) | 59 | `result-track:b8da02275c7cafee30feffa399d844115f803e7d3e79501087dc4b6d0c938e75` |
| 7 | `theorem` | [card_eq_of_equiv_fin](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/SetTheoryCardinalFiniteCardEqZeroOfInfinite.lean/declarations/card-eq-of-equiv-fin.md) | 63 | `result-track:0dba56fcd8b681a334a589e6b0d549b583f2552e6a561584451be63cd74d2cee` |
| 8 | `def` | [equivFinOfCardPos](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/SetTheoryCardinalFiniteCardEqZeroOfInfinite.lean/declarations/equivfinofcardpos.md) | 69 | `declaration-track:d0fe8a66d6a95ee9b9035374796b2a82d51f72d26d324d5ca885d698dbe99604` |
| 9 | `theorem` | [card_of_subsingleton](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/SetTheoryCardinalFiniteCardEqZeroOfInfinite.lean/declarations/card-of-subsingleton.md) | 75 | `result-track:ce70f9131c1afd0e7e5fed187ee00b87b026d96d423c463733839f16510e91be` |
| 10 | `theorem` | [card_unique](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/SetTheoryCardinalFiniteCardEqZeroOfInfinite.lean/declarations/card-unique.md) | 81 | `result-track:9c951342636c89beb1b0d3326f6b4130614da87dce9752a1a36b65576540f3a9` |
| 11 | `theorem` | [card_eq_one_iff_unique](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/SetTheoryCardinalFiniteCardEqZeroOfInfinite.lean/declarations/card-eq-one-iff-unique.md) | 85 | `result-track:5ccaa2417a5bbbb56096535d587ce9190b0183150e83456048321faec6af007d` |
| 12 | `theorem` | [card_eq_two_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/SetTheoryCardinalFiniteCardEqZeroOfInfinite.lean/declarations/card-eq-two-iff-source-edition-2.md) | 89 | `result-track:d39b0df5890883045fdb975a883d7752a0b287faa43023757a93385a66c14fc5` |
| 13 | `theorem` | [card_eq_two_iff'](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/SetTheoryCardinalFiniteCardEqZeroOfInfinite.lean/declarations/card-eq-two-iff.md) | 93 | `result-track:744354b72d7b495e0b46c3ed9862badaea6596fdf8d68522d46505306017cc46` |
| 14 | `theorem` | [card_of_isEmpty](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/SetTheoryCardinalFiniteCardEqZeroOfInfinite.lean/declarations/card-of-isempty.md) | 97 | `result-track:01155d0cb095e5019bdbf54fa437365de909144aedb5089dd79035b9f202945e` |
| 15 | `theorem` | [card_sum](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/SetTheoryCardinalFiniteCardEqZeroOfInfinite.lean/declarations/card-sum-source-edition-2.md) | 101 | `result-track:e9f284dc969817c5503336f162b35aa8a4df528d1dfe9779d439f01e4956f1f5` |
| 16 | `theorem` | [card_prod](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/SetTheoryCardinalFiniteCardEqZeroOfInfinite.lean/declarations/card-prod.md) | 107 | `result-track:8131d9c0faeb002655f3bd8d8dfff0cf6b99d7d244252696d537ec9e2a83a2d7` |
| 17 | `theorem` | [card_ulift](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/SetTheoryCardinalFiniteCardEqZeroOfInfinite.lean/declarations/card-ulift.md) | 112 | `result-track:a8972dd40948ba901490b6390538cf57ac9b1132ac0ada0dc71e434fded6f958` |
| 18 | `theorem` | [card_plift](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/SetTheoryCardinalFiniteCardEqZeroOfInfinite.lean/declarations/card-plift-source-edition-2.md) | 117 | `result-track:f71bba137e4ed95978064a84b7c2b75a14a5ebbeb2eb86c7907558e6819fbc6d` |
| 19 | `theorem` | [card_pi](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/SetTheoryCardinalFiniteCardEqZeroOfInfinite.lean/declarations/card-pi.md) | 121 | `result-track:264ecbbcac626e981c4c4b41c988d82d5300269b41d144c71353fde14312f2ae` |
| 20 | `theorem` | [card_fun](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/SetTheoryCardinalFiniteCardEqZeroOfInfinite.lean/declarations/card-fun.md) | 125 | `result-track:d3eb5aeb6912e17ba9509f500a4e6b1a3f93e13c5beb0b0b8c69abac1281b9f2` |
| 21 | `theorem` | [card_zmod](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/SetTheoryCardinalFiniteCardEqZeroOfInfinite.lean/declarations/card-zmod.md) | 131 | `result-track:c9acdabd5add22d7854c6e82622b81d57c7c3efab8b88ea16b0148d159a6831a` |
| 22 | `def` | [card](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/SetTheoryCardinalFiniteCardEqZeroOfInfinite.lean/declarations/card.md) | 143 | `declaration-track:3edbf003720ea2778ae87bee74de6276bf70788c34bcee213718cd41f876b2d5` |
| 23 | `theorem` | [card_eq_coe_fintype_card](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/SetTheoryCardinalFiniteCardEqZeroOfInfinite.lean/declarations/card-eq-coe-fintype-card.md) | 148 | `result-track:b9f01f08b5942bad9214b41043929bcdcd5a67c9847dadb2e06e854ff3877803` |
| 24 | `theorem` | [card_eq_top_of_infinite](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/SetTheoryCardinalFiniteCardEqZeroOfInfinite.lean/declarations/card-eq-top-of-infinite.md) | 153 | `result-track:c3500b47e368adcf44197454f08498b543e37c589a1bfac190b5c80ef2eef746` |
| 25 | `theorem` | [card_sum](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/SetTheoryCardinalFiniteCardEqZeroOfInfinite.lean/declarations/card-sum.md) | 158 | `result-track:2ba79c97d5839eb998c428434cbe48fe05273a694cd96635beb1e3f2b99d18c8` |
| 26 | `theorem` | [card_congr](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/SetTheoryCardinalFiniteCardEqZeroOfInfinite.lean/declarations/card-congr.md) | 162 | `result-track:802d52aecf2b348af1cb34539a7cb37c87885ca0da7aecbdadfb4a606c91c84b` |
| 27 | `theorem` | [card_uLift](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/SetTheoryCardinalFiniteCardEqZeroOfInfinite.lean/declarations/card-ulift-source-edition-2.md) | 166 | `result-track:ec378e36290dcc952d73edcdc1720f31db28557a31628bbf727a6ab7b1b661b8` |
| 28 | `theorem` | [card_pLift](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/SetTheoryCardinalFiniteCardEqZeroOfInfinite.lean/declarations/card-plift.md) | 171 | `result-track:65ad483f005993c139eaa0b9b4656b39539db3f0c25cb6dd1344ee28d83771a7` |
| 29 | `theorem` | [card_image_of_injOn](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/SetTheoryCardinalFiniteCardEqZeroOfInfinite.lean/declarations/card-image-of-injon.md) | 175 | `result-track:b1d6d892eee8dd041d0c81cf5cdd3c9ea1549ac2b88e1e52d6314bae80cfafee` |
| 30 | `theorem` | [card_image_of_injective](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/SetTheoryCardinalFiniteCardEqZeroOfInfinite.lean/declarations/card-image-of-injective.md) | 180 | `result-track:6e8f781f2bb30216e201fb0158598a19f092d978ff2c17cef8ae58a0dc457eb4` |
| 31 | `theorem` | [_root_.Cardinal.natCast_le_toPartENat_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/SetTheoryCardinalFiniteCardEqZeroOfInfinite.lean/declarations/root-cardinal-natcast-le-topartenat-iff.md) | 187 | `result-track:27045a029f98ebc752abc0a672b91f7527cf17a0a96f976d2b526d6a71e203b1` |
| 32 | `theorem` | [_root_.Cardinal.toPartENat_le_natCast_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/SetTheoryCardinalFiniteCardEqZeroOfInfinite.lean/declarations/root-cardinal-topartenat-le-natcast-iff.md) | 193 | `result-track:fcd46e40535d4e69847f20958e52b27d661ced14646782a6885ffb63b557e576` |
| 33 | `theorem` | [_root_.Cardinal.natCast_eq_toPartENat_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/SetTheoryCardinalFiniteCardEqZeroOfInfinite.lean/declarations/root-cardinal-natcast-eq-topartenat-iff.md) | 199 | `result-track:efcf3a9ce0e64a8b4c9a63e9955ff23cd2ef1c2b8ecbef2c4423f80323a88ec9` |
| 34 | `theorem` | [_root_.Cardinal.toPartENat_eq_natCast_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/SetTheoryCardinalFiniteCardEqZeroOfInfinite.lean/declarations/root-cardinal-topartenat-eq-natcast-iff.md) | 206 | `result-track:1f890c0f398201ca5270c4bf1c90f9b8935d00b5a834348fd3d07db22ecec8a7` |
| 35 | `theorem` | [_root_.Cardinal.natCast_lt_toPartENat_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/SetTheoryCardinalFiniteCardEqZeroOfInfinite.lean/declarations/root-cardinal-natcast-lt-topartenat-iff.md) | 212 | `result-track:1574cb060c0d620b58025edb019b60a9bbb431b34bbe52be8c8932951c366c47` |
| 36 | `theorem` | [_root_.Cardinal.toPartENat_lt_natCast_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/SetTheoryCardinalFiniteCardEqZeroOfInfinite.lean/declarations/root-cardinal-topartenat-lt-natcast-iff.md) | 218 | `result-track:d22f1be7c8a57f25f6eb6f2f2a67a710164105e40dd945074a00acb742d4ffd9` |
| 37 | `theorem` | [card_eq_zero_iff_empty](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/SetTheoryCardinalFiniteCardEqZeroOfInfinite.lean/declarations/card-eq-zero-iff-empty.md) | 223 | `result-track:32306ba2e897d372a35892ac0b02455c5f84331242619d543a68051079c73c17` |
| 38 | `theorem` | [card_le_one_iff_subsingleton](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/SetTheoryCardinalFiniteCardEqZeroOfInfinite.lean/declarations/card-le-one-iff-subsingleton.md) | 230 | `result-track:75961599c37f0402c670b615d0535332b01360c103f7e892100e287fa1ee69cc` |
| 39 | `theorem` | [one_lt_card_iff_nontrivial](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/SetTheoryCardinalFiniteCardEqZeroOfInfinite.lean/declarations/one-lt-card-iff-nontrivial.md) | 237 | `result-track:7e76d9b7f842abdd6fabeae3d09c678096d74c17948fba00b0ae8fd1b9759b90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b1fbebf0b894ff747e6884104a931754721361a7c2ba3c35a7f6f1cdebc9e8e7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant012d1c9125d20a2f6cb126dd04a4dea89f93b5b7b9088def33cf2587400810ee.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/SetTheory/Finite/Variant012d1c9125d20a2f6cb126dd04a4dea89f93b5b7b9088def33cf2587400810ee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
