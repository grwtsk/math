# Verification target: Lemmas Lemmas Public Trichotomous

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74c0ecf0a0e787c3e6e0045f3c8c872aa1b333a4",
  "lexical_observation_count": 93,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant4c42faa9c133e6e77bc1b972c28d67b9c676d90a32a5c63ea95612c5aa4581c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74c0ecf0a0e787c3e6e0045f3c8c872aa1b333a4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant4c42faa9c133e6e77bc1b972c28d67b9c676d90a32a5c63ea95612c5aa4581c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant4c42faa9c133e6e77bc1b972c28d67b9c676d90a32a5c63ea95612c5aa4581c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Bool` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/instance-source-edition-5.md) | 23 | `declaration-track:1a0f6b31a5f64782aa7b948c23b6ddccbbcc5ad07959e3a8f8cd06a8f4a3e6ff` |
| 2 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/instance-source-edition-6.md) | 26 | `declaration-track:235cd9810220c676c66af9dc3e6a3dc965b485514de3b7eeeee0f6c004ae1eb6` |
| 3 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/instance-source-edition-22.md) | 29 | `declaration-track:a0cbf600008e460c453496ff6f17d460e8590df268dd07d60533892756d314e9` |
| 4 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/instance-source-edition-26.md) | 32 | `declaration-track:cd95acfb80f2b5f20cf3d66449f15af43e0b0c257114c586b57e3f6fd9f62883` |
| 5 | `theorem` | [Trichotomous.rel_or_eq_or_rel_swap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/trichotomous-rel-or-eq-or-rel-swap.md) | 35 | `result-track:3e0ee096a0fb473f143712c85c8ac3aec1572245b90627fcacabf24c5372e505` |
| 6 | `theorem` | [trichotomous_of_rel_or_eq_or_rel_swap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/trichotomous-of-rel-or-eq-or-rel-swap.md) | 41 | `result-track:3ac5bce916b165d4bc201054f77cbc5d9c6553c57fe96a9780c8bc7a80bad883` |
| 7 | `instance` | [Antisymm.trichotomous_of_antisymm_not](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/antisymm-trichotomous-of-antisymm-not.md) | 45 | `declaration-track:d82deed9aae2aa1f1eff6d76325fc529721165b06c948f31ca8a0af8fe88b2b5` |
| 8 | `theorem` | [Trichotomous.antisymm_not](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/trichotomous-antisymm-not.md) | 48 | `result-track:5156e7148919e0bc1e5491d3efd5c077ac8facc65a0b4bd8e763650a0e65ea50` |
| 9 | `theorem` | [Total.rel_of_not_rel_swap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/total-rel-of-not-rel-swap.md) | 51 | `result-track:8b621c414c0562f2ac9b0178d5216d5d5a5d5d90f5d095d805e7767f87c45e7e` |
| 10 | `theorem` | [total_of_not_rel_swap_imp_rel](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/total-of-not-rel-swap-imp-rel.md) | 54 | `result-track:4bca1ca85f80633e52edf6f44fe5046c023a94abe8f18c1006fe2dd77169b336` |
| 11 | `theorem` | [total_of_refl_of_trichotomous](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/total-of-refl-of-trichotomous.md) | 58 | `result-track:c9f8ab935be6f68b8ec320cb92ba94a62fd10b9051af7e92a0891060ffa9fd3e` |
| 12 | `theorem` | [asymm_of_irrefl_of_antisymm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/asymm-of-irrefl-of-antisymm.md) | 63 | `result-track:831380301fb65de8b23a56603a463d2e79c2646bdd6d45b6d132fbb9f166aca0` |
| 13 | `instance` | [Total.asymm_of_total_not](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/total-asymm-of-total-not.md) | 66 | `declaration-track:a5c02dfe7688f26379332b03445bc1d167d4d243969ae4abcfa5dfa376c51d50` |
| 14 | `theorem` | [Asymm.total_not](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/asymm-total-not.md) | 69 | `result-track:59b60fa549831a24634f94a6d56e36006dfb81d1428ea547fc0a3e050f47e811` |
| 15 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/instance-source-edition-27.md) | 74 | `declaration-track:cec05dc05145118da928e319ef26a3e43c6f1006c8a50bf0da52270b1902e2de` |
| 16 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/instance-source-edition-3.md) | 78 | `declaration-track:164589c5e0bca748b527b484e05b4912829b0e505975e6b5043940f3a6142417` |
| 17 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/instance-source-edition-19.md) | 82 | `declaration-track:9463f32481f776291154cc1bb40f6e9eaf5e6cfcf8bfec8923d8fd2f43ea0cf3` |
| 18 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/instance-source-edition-28.md) | 86 | `declaration-track:dbc1e4994d7180d74a10403581e01090aa4644fc02b44c6983c88371a2d6d43b` |
| 19 | `theorem` | [le_refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/le-refl.md) | 95 | `result-track:70aa5da7bf071845b0d36c434181d5c6f31652263787c80204fdb2af92f8baed` |
| 20 | `theorem` | [le_of_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/le-of-eq.md) | 98 | `result-track:9f0da7e4810fcc72e2ad5d5c34740d61609160c42d167419b7a6a38cf3d11bac` |
| 21 | `theorem` | [le_antisymm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/le-antisymm.md) | 101 | `result-track:00e0c83a32f3b27f882e580b425eb0927a432abc14c1759b23e5ebc96b49d034` |
| 22 | `theorem` | [le_antisymm_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/le-antisymm-iff.md) | 105 | `result-track:c67e39fd3c860c32927e5eeae612f2a258b7997af196dd26877590c916c9af94` |
| 23 | `theorem` | [le_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/le-trans.md) | 109 | `result-track:cd8a5b13c93f39c017f66a1056429458511daf0ce288e08b890123c9dad8cd56` |
| 24 | `theorem` | [le_total](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/le-total.md) | 113 | `result-track:990276ffaf81ceaf6f0fbd68ac307bd8088a818cf485861b9b9fc94275738683` |
| 25 | `theorem` | [le_of_not_ge](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/le-of-not-ge.md) | 117 | `result-track:72a7c44d1a051304a59f83105665447d2664d9145ed5fb2851c64694d65181d3` |
| 26 | `theorem` | [lt_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/lt-trans.md) | 124 | `result-track:059155e8591b9b4d76efb01c4cbf332188ab0465c7594e746ab14d073a576179` |
| 27 | `theorem` | [lt_iff_le_and_not_ge](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/lt-iff-le-and-not-ge.md) | 128 | `result-track:b239b1944cf60b4d92d5e84a9a8d4ddd528484bc9913486008f000423d5a24c2` |
| 28 | `theorem` | [not_lt_iff_not_le_or_ge](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/not-lt-iff-not-le-or-ge.md) | 132 | `result-track:13315270508a8dec89d554e24e830af104bbb5b69c967037fea00680e68dd75d` |
| 29 | `theorem` | [not_le_of_gt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/not-le-of-gt.md) | 136 | `result-track:e89bfcafe16570d0411aa3f4fe51059dcd0374e60b8dc3ca562fddb62d1e1e08` |
| 30 | `theorem` | [not_lt_of_ge](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/not-lt-of-ge.md) | 139 | `result-track:926f64eb0dc7e9e93319a979f1fd710b57c50ef01d52f7558bb1bb1ba5610dc2` |
| 31 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/instance-source-edition-30.md) | 142 | `declaration-track:f0d234c8795ab30e41de3e76a7fcac07f6283d7241850135f1dad6f82a814264` |
| 32 | `theorem` | [not_gt_of_lt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/not-gt-of-lt.md) | 146 | `result-track:389f0c15607b625bc4612ca84f3211e6adc5b8f211a4ef26cdb14e422dc8c65c` |
| 33 | `theorem` | [lt_irrefl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/lt-irrefl.md) | 150 | `result-track:1997088344ec343f02ecea214994e6c7ce3368dbca4853af90f232b79ea0d4d2` |
| 34 | `theorem` | [le_of_lt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/le-of-lt.md) | 154 | `result-track:3b772ef6a44b101d3535d31e10659304bb420cf965cb0a5e3b1d61b44d2b6421` |
| 35 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/instance-source-edition-31.md) | 157 | `declaration-track:f3ee1080b7867de83400600572e3cbe57339082003dfd599f19b61ac42f497c3` |
| 36 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/instance-source-edition-12.md) | 161 | `declaration-track:40c30c75a108a4dd267a4947b69604cfee65268b29ae3ab98da6120faf11bdd3` |
| 37 | `theorem` | [instIrreflLtOfIsPreorderOfLawfulOrderLT](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/instirreflltofispreorderoflawfulorderlt.md) | 169 | `result-track:0302208eab2b01cb6d0faf25b9552dfbea561d3ca404418960d37dffe8dc51ce` |
| 38 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/instance-source-edition-7.md) | 172 | `declaration-track:2380858602695712f3e6ea25864c46937a8032746ea227c1382456f8245def41` |
| 39 | `theorem` | [not_lt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/not-lt.md) | 181 | `result-track:c1b199964dd81de7022894b17ac2ff7ce46de3d68d959d8a66149a7e8d498e52` |
| 40 | `theorem` | [not_le](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/not-le.md) | 186 | `result-track:0bb354c350c8441f9557de507aae2dc72dd0fd95bcd289e56804fe6c280f2bd3` |
| 41 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/instance-source-edition-20.md) | 191 | `declaration-track:9b927f7bef7623b598abb403fff90257343a1e033c75e3160de5fbbf21e2f3fc` |
| 42 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/instance-source-edition-25.md) | 197 | `declaration-track:cce4a6320d7fef68920377a2fdf3daf7f94522985c695e9659e65a7d44d89971` |
| 43 | `theorem` | [instTotalNotLtOfLawfulOrderLTOfLe](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/insttotalnotltoflawfulorderltofle.md) | 205 | `result-track:9360f7e8d27645fba403e7c87cd9a98fe4d48265e0998f17bee3812f5a284a0b` |
| 44 | `theorem` | [lt_of_le_of_lt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/lt-of-le-of-lt.md) | 208 | `result-track:bbb1c15e7901719c96b4465a80c296851cc92b74c197629e93556ae298fa6c7a` |
| 45 | `theorem` | [lt_of_lt_of_le](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/lt-of-lt-of-le.md) | 217 | `result-track:2c2bc588687da68b4c176f750b9024d9733b4fb3adfb4af6ea43109d8d0d80ae` |
| 46 | `theorem` | [lt_of_le_of_ne](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/lt-of-le-of-ne.md) | 226 | `result-track:a89337e69fd66ba33a534bd9a7e0a3e87c3d97b7ee09bae94c201ffeec53fba7` |
| 47 | `theorem` | [ne_of_lt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/ne-of-lt.md) | 234 | `result-track:a3645547a9575f09083687abd403abcfed1d7c525501be9352cee1f02a736ce8` |
| 48 | `theorem` | [le_iff_lt_or_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/le-iff-lt-or-eq.md) | 237 | `result-track:cdedd00f4c5754c340ea1d6c96d114f8a39b7537143305624f067661223985e2` |
| 49 | `theorem` | [lt_iff_le_and_ne](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/lt-iff-le-and-ne.md) | 242 | `result-track:9984305847ffa1592a1463472ba8a3e89291e8e7cd09de87d1f0a28ad0a7131c` |
| 50 | `theorem` | [lt_trichotomy](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/lt-trichotomy.md) | 246 | `result-track:5961cdc6f01c8aa5d4979de20187f22754063d06d88c3cae94bafb54fc3ba536` |
| 51 | `instance` | [instLT](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/instlt.md) | 256 | `declaration-track:7a26119409cf17c75db8658fb85eefb4cacd24e43d19bac5f0ef03f48b20fbd4` |
| 52 | `instance` | [instLawfulOrderLT](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/instlawfulorderlt.md) | 260 | `declaration-track:e684d5d8ad6707db9803cba99b3ef7046e8e5a239d1ab966629ea3aaa9f5c0b9` |
| 53 | `theorem` | [beq_iff_le_and_ge](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/beq-iff-le-and-ge.md) | 269 | `result-track:aa4fd491c07ae0195c8e5e713bf6d378eb7889581188184edb3e4cad3bc6236a` |
| 54 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/instance-source-edition-9.md) | 273 | `declaration-track:34b9f8e4baea00754d63aff8d3a51ee32398ff4bf9c3db88576c78e10c1830cf` |
| 55 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/instance-source-edition-24.md) | 277 | `declaration-track:c733bbfdb8682151482f38d72c300fbc50b89d6d01a3bd3dedb25bfe421d4e22` |
| 56 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/instance-source-edition-18.md) | 284 | `declaration-track:905ff3259d8f420ca645b7f25049069840e81c33aad8a517e62e8e7a9b137796` |
| 57 | `instance` | [instBEq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/instbeq.md) | 296 | `declaration-track:676bc5ecc48d8a3fd79e937fb2c1bbed01c1afc89ba1e656f6c65ce87fb5189f` |
| 58 | `instance` | [instLawfulOrderBEq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/instlawfulorderbeq.md) | 299 | `declaration-track:063d958f3c3e65c9aa2bc0c90416b4a3974fd33c53be043f6a0fa1dd0785bf35` |
| 59 | `theorem` | [min_self](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/min-self.md) | 308 | `result-track:edb64c9762078f97b8a25d46b9be81c2ecefb9f475e699f240cbe6cfcc5dbfca` |
| 60 | `theorem` | [le_min_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/le-min-iff.md) | 312 | `result-track:e86bd5777e05624ffc04a85064ffc0eaf26f6cd932cb7a86f258b3d1f889513b` |
| 61 | `theorem` | [min_le_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/min-le-left.md) | 317 | `result-track:ffe68c39f2e8b6aeed399a5521f2e9aa5a09332072fa13ec0e06b6ea6a1f3058` |
| 62 | `theorem` | [min_le_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/min-le-right.md) | 321 | `result-track:b7bd7f8895187a5a797c1ae01ad9dbc7f3f4d6d4587719c6dc1b722437d4522e` |
| 63 | `theorem` | [min_le](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/min-le.md) | 325 | `result-track:53f1baa548db6beb38a903ae868acd15116d0f42fddc27f3df290a4dded273ac` |
| 64 | `theorem` | [min_eq_or](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/min-eq-or.md) | 331 | `result-track:b2483200e1975aac4efc12e53416801a49435c39216b93e4664ad8b6c2268c76` |
| 65 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/instance-source-edition-16.md) | 335 | `declaration-track:8328087ab483c1fc8687fed66b34df70d4cfa62fd6e797487511420d4092201a` |
| 66 | `theorem` | [IsLinearOrder.of_refl_of_antisymm_of_lawfulOrderMin](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/islinearorder-of-refl-of-antisymm-of-lawfulordermin.md) | 354 | `result-track:54dd1923bb14e02072dfa667e249f19d07d164d7de4a0647202c18ce610f7f09` |
| 67 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/instance-source-edition-21.md) | 374 | `declaration-track:9ffb21f1e820dea21baa10dcd30e40520357e11d618aaa20b7803bdcbb983ef5` |
| 68 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/instance-source-edition-2.md) | 378 | `declaration-track:144f8651b9614e09211d057ed907e76eb8a381f194f20d6e81c2def367f74b84` |
| 69 | `theorem` | [min_eq_if](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/min-eq-if.md) | 382 | `result-track:985a8a2d013db0059200dd4a78faf810e0fea79578fbe2cbaca2e87dd8686a54` |
| 70 | `theorem` | [max_eq_if](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/max-eq-if.md) | 389 | `result-track:81672fe524b458a5a32ef5b5aa88a5d1b8d72a17c530ff4870d8672aa0d97e45` |
| 71 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/instance.md) | 396 | `declaration-track:052f5dd5a94c619122a1df15312c333c434297ec19a7ca5bfec837f89b65095f` |
| 72 | `theorem` | [LawfulOrderLeftLeaningMin.of_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/lawfulorderleftleaningmin-of-eq.md) | 407 | `result-track:76c5c42add494f41a53cfd4f63d199ad24dd60ef7c3755bd408bf594496d89e9` |
| 73 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/instance-source-edition-29.md) | 413 | `declaration-track:f0b4aa6b1e6d948021f57144170a28b7fba8dc85b08a6bf2ef6a493ef7780483` |
| 74 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/instance-source-edition-13.md) | 416 | `declaration-track:490123cfdc469d912d91415502d5846267342d1062f3f788bec3e8954200445c` |
| 75 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/instance-source-edition-4.md) | 425 | `declaration-track:17c6e70fbe3caea087e4ee36096fef8938c9c2b0e469b4ce08a3ad1974c4680a` |
| 76 | `instance` | [instMin](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/instmin.md) | 445 | `declaration-track:a8e7c3621a00715abc2d53ee39ba427a81ffeacb9cf584ae08693a31273e062f` |
| 77 | `theorem` | [max_self](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/max-self.md) | 453 | `result-track:b72ded624f1917a100a20692dab53642682132df7edc739d6e246d15944bc7a0` |
| 78 | `theorem` | [max_le_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/max-le-iff.md) | 457 | `result-track:a630d748d42de308aa45c5c31e6d33532c5af447dbc32009ff89f2ae0421b350` |
| 79 | `theorem` | [left_le_max](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/left-le-max.md) | 461 | `result-track:2917195a1ba6f191d384ebcc17d7533582274978f04dc8c0fb4a1ab8fa8a06b7` |
| 80 | `theorem` | [right_le_max](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/right-le-max.md) | 465 | `result-track:443fb785149890f7091ab89e39fa7199d359f72c1a959724937965768cd60bef` |
| 81 | `theorem` | [le_max](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/le-max.md) | 469 | `result-track:4270550e21560200923f1aa765a4e397edbb6f22617467ae1f4d6d2840445c64` |
| 82 | `theorem` | [max_eq_or](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/max-eq-or.md) | 475 | `result-track:8e02e332ccd2cba9faf43309176ad7a9468cd1a5be64c2b6842429f0f2b6011c` |
| 83 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/instance-source-edition-8.md) | 479 | `declaration-track:2a63146fc4a70e21de42f268ac543a1325458221a0bae51e79c4bf8e1085ee60` |
| 84 | `theorem` | [IsLinearOrder.of_refl_of_antisymm_of_lawfulOrderMax](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/islinearorder-of-refl-of-antisymm-of-lawfulordermax.md) | 498 | `result-track:99f8752d8046edeac43133eae84418f82de358dce4b4470f8e8710bef0fe4dd9` |
| 85 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/instance-source-edition-14.md) | 518 | `declaration-track:4b28b33ea824e1fb5ff3d9e16b2e8b4fa63e9f370b8830483283039b61c77176` |
| 86 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/instance-source-edition-17.md) | 521 | `declaration-track:878bea67c618de5e2915250c04c34e410e3c79598237212b3767d5309fbd9a3e` |
| 87 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/instance-source-edition-32.md) | 525 | `declaration-track:f533f04d5fa9d1baa21e3f968442d91a1d84bde246ee54ea1dda1c2a02fa082d` |
| 88 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/instance-source-edition-11.md) | 533 | `declaration-track:3dc1e1d04601cd0357eb480d3601b39165554c6bf5d08dd82b16db9aa189436c` |
| 89 | `theorem` | [LawfulOrderLeftLeaningMax.of_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/lawfulorderleftleaningmax-of-eq.md) | 544 | `result-track:03d78fbd0d042eec1049b0f72529979d983aede8ac1b02bde91d99e63a33d9ce` |
| 90 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/instance-source-edition-23.md) | 550 | `declaration-track:a80934273501e2e683c91b334362809da0c7bdd771511676e976adbb09c41c17` |
| 91 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/instance-source-edition-15.md) | 553 | `declaration-track:64915f44c256d0d233583871a8f9089679b4349c475d936623bd5c8bd047ac5c` |
| 92 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/instance-source-edition-10.md) | 562 | `declaration-track:375c06d77631248cf867306f869effa61c637cdf8689fa5e7e22ab5f1347ee1c` |
| 93 | `instance` | [instMax](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicTrichotomous.lean/declarations/instmax.md) | 582 | `declaration-track:684a1f6bd8405739dd386a86783ed0d7a87604ffee6d4c2c14c9eb31c944d5a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6c6cd93cc6376e837c9813d4ec7e52060bf94d847bc08da979d30eabe7111dc1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant4c42faa9c133e6e77bc1b972c28d67b9c676d90a32a5c63ea95612c5aa4581c1.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant4c42faa9c133e6e77bc1b972c28d67b9c676d90a32a5c63ea95612c5aa4581c1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
