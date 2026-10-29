# Verification target: Equiv List Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "225de2132310bfac3c23f447f724356a619ac13c",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/List/Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivListPublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivListPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `225de2132310bfac3c23f447f724356a619ac13c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/List/Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/List/Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [listEquivOfEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivListPublic.lean/declarations/listequivofequiv.md) | 27 | `declaration-track:99db995f75b5e1234a4312cc74d56e4b4a611b4250cc41269c1b17ac8f5e45bc` |
| 2 | `def` | [encodeList](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivListPublic.lean/declarations/encodelist.md) | 44 | `declaration-track:93daa0eb102118fcdfb5a7997a8fae865d35ee808e7239bb6f61eeaba66d2476` |
| 3 | `def` | [decodeList](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivListPublic.lean/declarations/decodelist.md) | 49 | `declaration-track:d0bb321840dde793b5873bd1c2c09676b6d7e18ad06b17263c5cd8475af03044` |
| 4 | `theorem` | [decodeList_encodeList_eq_self](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivListPublic.lean/declarations/decodelist-encodelist-eq-self.md) | 58 | `result-track:395875f95584ba87b00103295166af66a827bec07f3f4481450d865b9857543f` |
| 5 | `instance` | [_root_.List.encodable](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivListPublic.lean/declarations/root-list-encodable.md) | 63 | `declaration-track:2fa049c76e71412b566b472f9819fd7ce2ec1a4569429ad50b506af63aad9012` |
| 6 | `instance` | [_root_.List.countable](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivListPublic.lean/declarations/root-list-countable.md) | 66 | `declaration-track:5bbe3df69696ab7cdfa3d140c8e849e010b36779c7df3a0b12a20cc8a99ab5bf` |
| 7 | `theorem` | [encode_list_nil](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivListPublic.lean/declarations/encode-list-nil.md) | 71 | `result-track:7928d00eb91bd090851c87eb0de3c228027ab63d57f93028da8518b2352d7831` |
| 8 | `theorem` | [encode_list_cons](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivListPublic.lean/declarations/encode-list-cons.md) | 75 | `result-track:08e603c61cf5dc8101d0aa4c861f7e49d400a7c88a6f572cdcb19775cadca7a0` |
| 9 | `theorem` | [decode_list_zero](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivListPublic.lean/declarations/decode-list-zero.md) | 80 | `result-track:e94a6e4f9fbf9a81f4af6bfd0c495cfca135c3fc7788b97f4f73fdb2ccc53fc8` |
| 10 | `theorem` | [decode_list_succ](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivListPublic.lean/declarations/decode-list-succ.md) | 84 | `result-track:ae8bdc6f30992b7ec999af96a919937c920989806ed950712e834bdf75114bee` |
| 11 | `theorem` | [length_le_encode](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivListPublic.lean/declarations/length-le-encode.md) | 91 | `result-track:1d1254a93f9fc2f129c289dce755aafc7454ef62558a1302198f86f6a761e36b` |
| 12 | `instance` | [_root_.Multiset.countable](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivListPublic.lean/declarations/root-multiset-countable.md) | 101 | `declaration-track:d5f816ceb478e3a4384e07c500d2ffcbee5fa4a2a2d9b528d7e0605be66e773f` |
| 13 | `instance` | [_root_.Finset.countable](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivListPublic.lean/declarations/root-finset-countable.md) | 105 | `declaration-track:8851e01113a625f5fbd454bc7ebeac34d36cbfb6fbe45afda08ec1d389f0fc62` |
| 14 | `def` | [encodableOfList](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivListPublic.lean/declarations/encodableoflist.md) | 110 | `declaration-track:39609f4935dfa2f375eb55d129b3c1a6b2d7b70ab79eb61708c659e066a1d02f` |
| 15 | `def` | [_root_.Fintype.truncEncodable](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivListPublic.lean/declarations/root-fintype-truncencodable.md) | 115 | `declaration-track:396f6c5b1f28df46d53f04ca3ea1a20e9ddb63feac0ed61ac74f37fae2c9280c` |
| 16 | `def` | [_root_.Fintype.toEncodable](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivListPublic.lean/declarations/root-fintype-toencodable.md) | 123 | `declaration-track:56034a31d8c0718db67bd7bb4c4691a4856c5739fbe2940deb4a8032d304f56c` |
| 17 | `theorem` | [denumerable_list_aux](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivListPublic.lean/declarations/denumerable-list-aux.md) | 136 | `result-track:9ca73a2f981d83766d6279e93b3a8ab5ba3ca12bd7be40a46f093f925e44074b` |
| 18 | `instance` | [denumerableList](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivListPublic.lean/declarations/denumerablelist.md) | 150 | `declaration-track:0fa9d2654ec2bffd4d0127723ecb250d152546ee7d2a7841899a4cc001a1f4c6` |
| 19 | `theorem` | [list_ofNat_zero](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivListPublic.lean/declarations/list-ofnat-zero.md) | 154 | `result-track:8e2e0d0248457f28d4e95c364635b58a2a2321967d63de522f51eb38a065b0da` |
| 20 | `theorem` | [list_ofNat_succ](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivListPublic.lean/declarations/list-ofnat-succ.md) | 157 | `result-track:2d7f958b9bae74c808559006cd64ec8c1cd5dbbc63c362928c71d271e1f8fa01` |
| 21 | `def` | [listUniqueEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivListPublic.lean/declarations/listuniqueequiv.md) | 172 | `declaration-track:6385c6f6eb1c3f838af68418554ec2103adfa4c77c9b89cbb6edf9f024cc4255` |
| 22 | `def` | [listNatEquivNat](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivListPublic.lean/declarations/listnatequivnat.md) | 179 | `declaration-track:822ea4ff7f8f81ea18adff7f0c2eaf49293b812751c06b076e8a1bbdb209e167` |
| 23 | `def` | [listEquivSelfOfEquivNat](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivListPublic.lean/declarations/listequivselfofequivnat.md) | 183 | `declaration-track:180c8c14c1dd324ef17aeaa5fec2bc386bd370527a215a98e3e75306af7c37ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c8170911f37e975b1378cec1efacdcacfbc4b724d14218d9b8eeb45343410fc1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/List/Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/List/Variant11496693bd39dd5e22aa2a62898d828e37b3f6261d25c531da0be293a3249efe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
