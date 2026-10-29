# Verification target: Equiv List

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "565d3a47fb36b1483107ae029f910ea5097fd655",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/List/Variant54afecb0945ad7f0924e59e9c39eeb32341cf71a9e5c4ec318b3ba80dbf02103.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivList.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivList.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `565d3a47fb36b1483107ae029f910ea5097fd655`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/List/Variant54afecb0945ad7f0924e59e9c39eeb32341cf71a9e5c4ec318b3ba80dbf02103.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/List/Variant54afecb0945ad7f0924e59e9c39eeb32341cf71a9e5c4ec318b3ba80dbf02103.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Denumerable` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [listEquivOfEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivList.lean/declarations/listequivofequiv.md) | 23 | `declaration-track:69a5a85e7885431edc59b7287ec6da26d03c39cf4a8924997706ab57025740e3` |
| 2 | `def` | [encodeList](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivList.lean/declarations/encodelist.md) | 40 | `declaration-track:28c57db8ff9383e3d0b3d80ad78830e32512764c1fa8fcaaab7d53d11185729f` |
| 3 | `def` | [decodeList](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivList.lean/declarations/decodelist.md) | 45 | `declaration-track:b4fe6df9c421ecb7ff22a9bc2d1bda515612a42f0a86d41cd5f58840e4458540` |
| 4 | `instance` | [_root_.List.encodable](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivList.lean/declarations/root-list-encodable.md) | 55 | `declaration-track:a7371c938b15deaf7ebab7462e05c96ea3e5b18d7d28aea3aa1ac288faefb401` |
| 5 | `instance` | [_root_.List.countable](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivList.lean/declarations/root-list-countable.md) | 59 | `declaration-track:f9ae6e31d7e239ff03c2a00cf305c9b1e9a93b13a49a18abdc8fafe677d39dbc` |
| 6 | `theorem` | [encode_list_nil](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivList.lean/declarations/encode-list-nil.md) | 64 | `result-track:655b195b1ac177e8fe7a852cc0a6b6b8983dca67636b547e4ac1af4bc1d3a4b7` |
| 7 | `theorem` | [encode_list_cons](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivList.lean/declarations/encode-list-cons.md) | 68 | `result-track:92ade97c16763cdf89bef45e5176115f7b9622d929843f336e579489f9ba868a` |
| 8 | `theorem` | [decode_list_zero](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivList.lean/declarations/decode-list-zero.md) | 73 | `result-track:034848fa776fc8f93d39c6cb41b7b233bb1b743f7b929408e3f41ca0685c7009` |
| 9 | `theorem` | [decode_list_succ](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivList.lean/declarations/decode-list-succ.md) | 77 | `result-track:28f8de34b728167e55a84108c5ee3728f1ddfc15f6a762116299170d86de7ad6` |
| 10 | `theorem` | [length_le_encode](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivList.lean/declarations/length-le-encode.md) | 84 | `result-track:3282de9846fc4c7c79bde0ac4501fdd73b1c7a34dac1c7fc57e7bdaa23ce8be8` |
| 11 | `instance` | [_root_.Multiset.countable](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivList.lean/declarations/root-multiset-countable.md) | 94 | `declaration-track:43e2faee445ce66c0c3aa7f3073a35654838c69a469a020392a071cd6e40cd35` |
| 12 | `instance` | [_root_.Finset.countable](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivList.lean/declarations/root-finset-countable.md) | 98 | `declaration-track:59ad8fd653b818d089ba74dfcb4997d64eb69355a85ddf52996b949529574553` |
| 13 | `def` | [encodableOfList](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivList.lean/declarations/encodableoflist.md) | 102 | `declaration-track:22d31fc6c3f763451f3fb28b31dc7ca32b0ff4b48fe299261a0a694dcd1d3f60` |
| 14 | `def` | [_root_.Fintype.truncEncodable](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivList.lean/declarations/root-fintype-truncencodable.md) | 107 | `declaration-track:b86853ca2d515ddd20c7a6e6dcb30da1a167798963db04990c63cb14975615fb` |
| 15 | `def` | [_root_.Fintype.toEncodable](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivList.lean/declarations/root-fintype-toencodable.md) | 114 | `declaration-track:06411d8b9cf4a34d76d5670e261cc28e6a5deb1cf5a318b5932c307ffa8e62dc` |
| 16 | `theorem` | [denumerable_list_aux](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivList.lean/declarations/denumerable-list-aux.md) | 128 | `result-track:c0bfe6c15bd71ebeb18c5fe5714dfd8724800b0a8737aadb737c22b521b56935` |
| 17 | `instance` | [denumerableList](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivList.lean/declarations/denumerablelist.md) | 142 | `declaration-track:757670c207df2ec4bded4a6b695001e6a9cb39a4469e8957ee29cd40e5bc648e` |
| 18 | `theorem` | [list_ofNat_zero](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivList.lean/declarations/list-ofnat-zero.md) | 146 | `result-track:a3f9a26783a3451ba2797fb7dd2e5077c784399e46467e6831d2c1979c42e5f5` |
| 19 | `theorem` | [list_ofNat_succ](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivList.lean/declarations/list-ofnat-succ.md) | 149 | `result-track:3c1bbc448609e55cc6855fb2bc7f361394b91a43f8863bebe791f1489d3b80b7` |
| 20 | `def` | [listUniqueEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivList.lean/declarations/listuniqueequiv.md) | 166 | `declaration-track:06afd9c00061b7d4df7f9006cf08de3a739e7b1c97576ae3ff56b817560c68bf` |
| 21 | `def` | [listUnitEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivList.lean/declarations/listunitequiv.md) | 174 | `declaration-track:cab575e3cc88f2fd8292ebf38164368d6372cf34736fdd9338948dc74883001e` |
| 22 | `def` | [listNatEquivNat](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivList.lean/declarations/listnatequivnat.md) | 178 | `declaration-track:382da1a581dedc1eb3912ca1edba6eb80e13c39aafa4d239f194d4893ca3e460` |
| 23 | `def` | [listEquivSelfOfEquivNat](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivList.lean/declarations/listequivselfofequivnat.md) | 182 | `declaration-track:4afa4fc7efbfbf2108c59e60bc98c666db23491784d0969fd43d04eca02f1fda` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c7be990b6c2884424e16b1e82e6f3873840ced93bf79c7b2bab6f2f4309e37c2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/List/Variant54afecb0945ad7f0924e59e9c39eeb32341cf71a9e5c4ec318b3ba80dbf02103.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/List/Variant54afecb0945ad7f0924e59e9c39eeb32341cf71a9e5c4ec318b3ba80dbf02103.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
