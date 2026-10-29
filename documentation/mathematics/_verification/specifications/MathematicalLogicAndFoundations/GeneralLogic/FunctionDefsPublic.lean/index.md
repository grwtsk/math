# Verification target: Function Defs Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "565ae3df6b95fa084d60818ab13fab2e80874f3f",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianta783ef2cbf8b63c895b371dfc43dec55fc07fee6bf0da23fa25cfbceab45a872.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `565ae3df6b95fa084d60818ab13fab2e80874f3f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianta783ef2cbf8b63c895b371dfc43dec55fc07fee6bf0da23fa25cfbceab45a872.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianta783ef2cbf8b63c895b371dfc43dec55fc07fee6bf0da23fa25cfbceab45a872.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Attr.Register` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [flip_def](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/flip-def.md) | 24 | `result-track:f0292adb1f642b905d3aaee23e662410fe38b40fab1193b993e7c5e2832bceea` |
| 2 | `theorem` | [comp_assoc](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/comp-assoc.md) | 28 | `result-track:5a20b5316bd70aed1489ac9f9c04089052c0315f35d0d1edce6035744021510a` |
| 3 | `def` | [dcomp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/dcomp.md) | 36 | `declaration-track:0291d0fd49e942ba97a2c24282cbafa66879892f9ba8d7311d7faf62a62f31aa` |
| 4 | `theorem` | [dcomp_def](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/dcomp-def.md) | 46 | `result-track:bbb39fbb631a62c57e80886606a428ea46e943796f227db78e0afd44730f38d5` |
| 5 | `theorem` | [dcomp_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/dcomp-apply.md) | 48 | `result-track:8979bef1122a2c2a50765d68188f1895af4944ecbb98355a5a4766821cbecf35` |
| 6 | `theorem` | [dcomp_eq_comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/dcomp-eq-comp.md) | 50 | `result-track:c4ff6f3df7f219b320da5d994bf790f01a6611d29da627df8595d26b02d2fd0d` |
| 7 | `def` | [prod](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/prod.md) | 58 | `declaration-track:495b82b592b8495389852f01debacca7cfb39e8e8a0edac99b2ae2a298fca853` |
| 8 | `theorem` | [prod_def](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/prod-def.md) | 65 | `result-track:ac6e7adaa791bd912c7bb247d033a6f6d27693596d6c18995320bb3b78f9b1aa` |
| 9 | `lemma` | [prod_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/prod-apply.md) | 67 | `result-track:1568fc375b3cdbf3117c9cdb0347a9fbb2fa872d6a141a4c1e980b100e57cb49` |
| 10 | `theorem` | [prod_inj](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/prod-inj.md) | 70 | `result-track:1a53dd219938aeaae71b488e8d851e16f757208e5cadb4ecbd8ac9a6cae329ac` |
| 11 | `theorem` | [prod_ext_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/prod-ext-iff.md) | 79 | `result-track:d0e4b625e7b440d324da3c2e3868403f8d102d4ed5f31c976bcd57fb80f81075` |
| 12 | `lemma` | [prod_fst_snd](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/prod-fst-snd.md) | 83 | `result-track:f9d6cff0139daa28f7d97a07b4d4fd84f6b74519c1d22d17f35763f271192bc3` |
| 13 | `lemma` | [prod_snd_fst](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/prod-snd-fst.md) | 84 | `result-track:5cc0fe2350fae6c9507e13fbca77de9ba14de8b05d59625c523afe294f3d75af` |
| 14 | `theorem` | [fst_comp_prod](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/fst-comp-prod.md) | 86 | `result-track:ec148078947cda015b85588dbf7246ef9ff8ef12f793a51dca26b00f742d8831` |
| 15 | `theorem` | [snd_comp_prod](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/snd-comp-prod.md) | 87 | `result-track:ee2467bd48d8cca17ef59c0af35dee7d494c512a31778b0636b355b6477fa62b` |
| 16 | `theorem` | [prod_fst_comp_snd_comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/prod-fst-comp-snd-comp.md) | 89 | `result-track:cd636d9d58f417ff097ceed1b42825a595f4fc1f00442a3f6aa9212d9b92bcd7` |
| 17 | `theorem` | [const_prod](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/const-prod.md) | 92 | `result-track:250499bbd5d2bc29f5cbd77e03a14f4cf1638987795bc08ad738541cec784f90` |
| 18 | `theorem` | [prod_const_const](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/prod-const-const.md) | 94 | `result-track:e442083dbae5fc9a03b7cac56a6e9e6b613d8079252314229619d4aabc4bbf4b` |
| 19 | `theorem` | [prod_comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/prod-comp.md) | 97 | `result-track:51592523860d97e6a7b53ae0a6c347481efb1da1f35e4279ce903ac206660cf6` |
| 20 | `theorem` | [prod_comp_fst_comp_snd](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/prod-comp-fst-comp-snd.md) | 99 | `result-track:64e7581faf2d1c0b5ae6dc7a1c9ad021d3e180ffc77775c44c1d5635ba9a25ba` |
| 21 | `theorem` | [map_comp_prod](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/map-comp-prod.md) | 102 | `result-track:c04ca4ee30d4449e89292fa1843c1d830b2721f3172952f18e52fb5d33cf8a03` |
| 22 | `theorem` | [prod_comp_prod](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/prod-comp-prod.md) | 105 | `result-track:499eb612bde2b959308e5de4031796a6ef445650b5889ebcc07cbe26082c90d2` |
| 23 | `theorem` | [swap_comp_prod](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/swap-comp-prod.md) | 109 | `result-track:e4571a2caab9713402c28635093e053611806550444aba9617a6177a86b9e3f7` |
| 24 | `def` | [diag](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/diag.md) | 116 | `declaration-track:ce7b316c6f2120de23ae886a18dbf0d63b106a0930dadad11acf266ed40884a8` |
| 25 | `theorem` | [diag_def](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/diag-def.md) | 122 | `result-track:67cfef7bde3079bd577ea28392d68547a15c7f44a5419ab07c3ed59936795928` |
| 26 | `theorem` | [diag_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/diag-apply.md) | 124 | `result-track:bf489cfa7a6cc0e6eb5a8734a39475603eeba593d37087ba70789a5778991c6e` |
| 27 | `theorem` | [diag_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/diag-injective.md) | 126 | `result-track:238acc8092a3dd7c314b126dbe912d3137889153d8dfb72dfe47fc44db8d3f43` |
| 28 | `theorem` | [prod_id_id](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/prod-id-id.md) | 128 | `result-track:d40b96a050860e199cc71d28ecc17296fb7aeda1ad421dd4c0c3ce575bf89371` |
| 29 | `theorem` | [fst_comp_diag](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/fst-comp-diag.md) | 129 | `result-track:d43de83bf4bd03e5788b871efd7954767c35ac14edf655623751f2fbfe426ee5` |
| 30 | `theorem` | [snd_comp_diag](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/snd-comp-diag.md) | 130 | `result-track:f84762266c41dc0d9a1d6234934014d6438e567dee49b0e86e8dfa52d08cf5c8` |
| 31 | `theorem` | [diag_comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/diag-comp.md) | 132 | `result-track:35564b3ce3a13e746a60c3cff94b1369a68fedd3d76948a5f286a5951d782445` |
| 32 | `theorem` | [map_comp_diag](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/map-comp-diag.md) | 134 | `result-track:dca2667d6ed392456bc9a39058c151c64519dff5f82692c88e9b78f1a0109dd7` |
| 33 | `theorem` | [swap_comp_diag](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/swap-comp-diag.md) | 136 | `result-track:832f0e8c527619cc2af9e274c1fde54abbde4d246df7aff9c3e0b5a36630f266` |
| 34 | `abbrev` | [onFun](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/onfun.md) | 145 | `declaration-track:ce6bed11bc5ae5610110c88ef13d6a9f5bd1288b4a403cc2410da822f9bb35a5` |
| 35 | `abbrev` | [swap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/swap.md) | 154 | `declaration-track:5d8fcb0c6dde151fe2aaae7b99d01c7e89b58d5211b3bf2c48a983909a95d136` |
| 36 | `theorem` | [swap_def](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/swap-def.md) | 156 | `result-track:a810d272054d667ef8acf098d3ce12d96e3244933b9e3b0732f32396995355fa` |
| 37 | `theorem` | [onFun_swap_comm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/onfun-swap-comm.md) | 158 | `result-track:0218a8f53374b376e4776ebdda2210b79d00865e0d5a1ccc8c11bf8404dd12a7` |
| 38 | `def` | [Bijective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/bijective.md) | 163 | `declaration-track:f7bb7830bf7c4a19751ed0403a1128b432502c07225e1572f424e637e03088f1` |
| 39 | `theorem` | [Bijective.comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/bijective-comp.md) | 166 | `result-track:d7d340a4c602cc3ac4852a81bb6b9bb64e79d2b3eea30f99c3b0a8eb73b2a494` |
| 40 | `theorem` | [bijective_id](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/bijective-id.md) | 169 | `result-track:de7cdf261b52cc588bed9c3ac62d167d3d2186f28111a14b1858ee87b4c17312` |
| 41 | `theorem` | [Injective.beq_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/injective-beq-eq.md) | 174 | `result-track:51640ba32609d77ca4db08ed1e9a1e4ef205d2fa372451f21ec57a72072d12d7` |
| 42 | `def` | [bicompl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/bicompl.md) | 186 | `declaration-track:994fdde9ec8f7bbd93522484f3772ef8a347a1250ba415848aed6912bbbd5177` |
| 43 | `def` | [bicompr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/bicompr.md) | 190 | `declaration-track:820a4d22432614270231dd95ae31417e67b194628bfb82c9f5a9f640d4de1291` |
| 44 | `theorem` | [uncurry_bicompr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/uncurry-bicompr.md) | 196 | `result-track:6a828ca9e4c3695b186090d083a886a8b91785cba88ccb9df102b0ee14f934ba` |
| 45 | `theorem` | [uncurry_bicompl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/uncurry-bicompl.md) | 199 | `result-track:d7af8ac6b3131cd6d585a1f3d172b9b17a6826bfaacb4fd52fa4813544261b08` |
| 46 | `def` | [IsFixedPt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/isfixedpt.md) | 214 | `declaration-track:7be8d4061ddd4d507656f3f6adbf582045d1ce8576989b682ee0600ed010e867` |
| 47 | `theorem` | [IsFixedPt.eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/isfixedpt-eq.md) | 217 | `result-track:2a32d01c82f2fc4288131e71ce012fd96d2d449ddeac501257f01264637d6188` |
| 48 | `instance` | [IsFixedPt.decidable](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/isfixedpt-decidable.md) | 220 | `declaration-track:80e563ce638ae85b88acd7350a7ec0268aa596855f15e8811bb860e659a46f57` |
| 49 | `theorem` | [IsFixedPt.of_subsingleton](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/isfixedpt-of-subsingleton.md) | 224 | `result-track:e726a48c9b77f00692e4eb3097532bbc5c01543a79a7a3726ef5d6222f4219fa` |
| 50 | `theorem` | [isFixedPt_id](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/isfixedpt-id.md) | 228 | `result-track:b6cef31f92c987de7a1bb9bea6530be3aec23f3bc0b57636740e69b228147ed9` |
| 51 | `theorem` | [forall_isFixedPt_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/forall-isfixedpt-iff.md) | 232 | `result-track:552d4a2bfcb0473a813088d580e21e6513e05659bbca75303b85e3e480beaf2d` |
| 52 | `def` | [map](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/map.md) | 245 | `declaration-track:d35f81f4b0b2aa5c550304254ddfdf1d834e4383599345ce35d4a5c93b9386e3` |
| 53 | `lemma` | [map_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionDefsPublic.lean/declarations/map-apply.md) | 248 | `result-track:5169ba358d224017d5d04061363435c9450cc7f0bfd0606c88faa05b93785ed3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=94e47d432a59d50bbef92475aca473808698fcc5e7f043a11423af9372ef54a6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianta783ef2cbf8b63c895b371dfc43dec55fc07fee6bf0da23fa25cfbceab45a872.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Varianta783ef2cbf8b63c895b371dfc43dec55fc07fee6bf0da23fa25cfbceab45a872.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
