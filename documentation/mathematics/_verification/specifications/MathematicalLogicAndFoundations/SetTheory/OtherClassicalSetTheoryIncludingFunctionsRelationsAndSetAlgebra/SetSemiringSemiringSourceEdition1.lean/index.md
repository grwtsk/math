# Verification target: Set Semiring Semiring Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "edf5b2f203864c8a9e5488b5c255c516948d2481",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `edf5b2f203864c8a9e5488b5c255c516948d2481`.

Source path: `GRWTSK/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Kleene` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Canonical` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.BooleanAlgebra` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SetSemiring](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/setsemiring.md) | 31 | `declaration-track:9c2d77ad8e2150a05e9ee0df17f3f29712d0a6aaacf48bbdcb2a02cfa70953ae` |
| 2 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/instance-source-edition-15.md) | 34 | `declaration-track:bf0484b20d011a7c529c8f95528c59f33509d5f01e1b3f0c0e542c86ebee5396` |
| 3 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/instance-source-edition-6.md) | 37 | `declaration-track:5f3317e67c1eaec254ae7bb4f4da87c53fb42df6f1955b66d5c31be741f4c728` |
| 4 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/instance-source-edition-4.md) | 40 | `declaration-track:133148f92914db1337eaa686c960edf4a8637995b259fe8db4678e3ae8465dda` |
| 5 | `def` | [Set.up](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/set-up.md) | 44 | `declaration-track:ba5f0fb5ba405ec0ff4d44a439be27cde63ad4a7391438b5e694b3d2be370f56` |
| 6 | `def` | [down](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/down.md) | 50 | `declaration-track:06d7a86bba4eb06034b2d0abba3fa15b520ec9b8f10b691a76c270ae4aee5404` |
| 7 | `theorem` | [down_up](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/down-up.md) | 57 | `result-track:b88d61b5c83042426a826250d4de5d593189ef91b638089a254b6071d7a18e81` |
| 8 | `theorem` | [up_down](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/up-down.md) | 61 | `result-track:179e682fa3d70890b4b632025f196319f2ab589955ad5ab356e5d6192659418c` |
| 9 | `theorem` | [up_le_up](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/up-le-up.md) | 65 | `result-track:2df80a4dc2618e4fc9221bd521cd2104fa44580b37ffa3333a133e434c01f9ab` |
| 10 | `theorem` | [up_lt_up](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/up-lt-up.md) | 68 | `result-track:0541392fab283539f2bddd1312e9bcde0dc62187801b600bb696718552ff9104` |
| 11 | `theorem` | [down_subset_down](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/down-subset-down.md) | 72 | `result-track:707f5ebd956549c6ab2bdbfadbbdc06a8d329f1fc6c2a5f97787ee0a805c7377` |
| 12 | `theorem` | [down_ssubset_down](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/down-ssubset-down.md) | 76 | `result-track:9401691019fee3c78cba180d5f3fbffc358a4d362ec07d88ae4962d6ae8a0fe6` |
| 13 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/instance-source-edition-12.md) | 79 | `declaration-track:799b5430aaec3fac218a5eea20cad77f1766f000e308375e37eab15024df989d` |
| 14 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/instance-source-edition-17.md) | 81 | `declaration-track:ec3d954bd57a06c1385d8d5b80607150b62b9789f9c8f28e17e9cbf57efd62ba` |
| 15 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/instance-source-edition-14.md) | 83 | `declaration-track:a914fe2d38dbb1cc3b6a5434067856ef0069d6b57b2704e9de5125f407f61e84` |
| 16 | `theorem` | [zero_def](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/zero-def.md) | 90 | `result-track:5079f4ab5451c40802b7119a0b56cd1fa55dca596aafc421b095edb4dc12aa60` |
| 17 | `theorem` | [down_zero](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/down-zero.md) | 94 | `result-track:4d491122677e5639420e1660140dc483d270b193f26ca6d2268b6c871e68c6fa` |
| 18 | `theorem` | [_root_.Set.up_empty](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/root-set-up-empty.md) | 98 | `result-track:2fc8854b8b5b16fa43fb7c6c56fc66fc9bb6768e03355f65f26abcc9e9b52057` |
| 19 | `theorem` | [add_def](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/add-def.md) | 101 | `result-track:e5803dafba5524fb5b2cd703f77f6e7c553a819ba6b63c0daefc177e2b56e6d0` |
| 20 | `theorem` | [down_add](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/down-add.md) | 105 | `result-track:fdf6c4d4aadb65ccf09e74fdc2e49fe588cff3932d102d228de227dc620946db` |
| 21 | `theorem` | [_root_.Set.up_union](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/root-set-up-union.md) | 109 | `result-track:9d48fd7f81b65162a15fc279245876d0f14a3918297e1c19c542b74075639590` |
| 22 | `instance` | [addLeftMono](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/addleftmono.md) | 114 | `declaration-track:f9d9c523d5a9a2a7d0fc514a70e084d250d6560c4e3dd215becbb052ea0342cb` |
| 23 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/instance-source-edition-9.md) | 121 | `declaration-track:68cdff7911f8eda1ca1fa951b3273cf194d63edfdcc67443fa9007a3d63e56d0` |
| 24 | `theorem` | [mul_def](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/mul-def.md) | 129 | `result-track:51257a30ea5d22fe3d780e71fdccfbc90bbbb5f9be46443024a4d93cecd070e5` |
| 25 | `theorem` | [down_mul](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/down-mul.md) | 133 | `result-track:6c5b9ac3d5c4e51ffe9fdd38520624e7e900c97c251c95d54b728b32d30999d6` |
| 26 | `theorem` | [_root_.Set.up_mul](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/root-set-up-mul.md) | 137 | `result-track:b768c4f7535e942fcf33adabfd035d90874b95ac8189aad8ba3c75bb0a0a2400` |
| 27 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/instance-source-edition-11.md) | 140 | `declaration-track:704f6bb6fce359ef8fe949f2f6be70c526f7a1db6fa516f8f0c2a082e1c79f5d` |
| 28 | `instance` | [mulLeftMono](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/mulleftmono.md) | 146 | `declaration-track:2ca4de4d646a75c4ad9b75d398db5eca4d76b3e8916dc6e97bddd235cc82ab7c` |
| 29 | `instance` | [mulRightMono](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/mulrightmono.md) | 149 | `declaration-track:31a0d420350c37a4114b1b9843c78551753f71fafa8e3b55064cf37ba8dcf677` |
| 30 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/instance-source-edition-7.md) | 159 | `declaration-track:605bdaabde126ce2b79913f293322581dd4bc7dc55f1d79b9f53409efe595c1e` |
| 31 | `theorem` | [one_def](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/one-def.md) | 161 | `result-track:4ea9f906198a205dd15c15750a68f9e80dd32a57f6b6469cec0503ab6cf600a1` |
| 32 | `theorem` | [down_one](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/down-one.md) | 165 | `result-track:afb9245962fc714dc227c7db648ea612768d878e746b2a2160e07d8156950319` |
| 33 | `theorem` | [_root_.Set.up_one](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/root-set-up-one.md) | 169 | `result-track:f62823bf06d5867ae1bf341496907dc2b2a22e023e3c674cbf1b651b2e765fc3` |
| 34 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/instance-source-edition-13.md) | 174 | `declaration-track:89c97578178a3ad01da403f36ef2cbed439f91027bc68203c6f45fed8612afc1` |
| 35 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/instance.md) | 178 | `declaration-track:00ed25e6ec01f394953d5fdd12a191020b656682e1663efd318e28118da69f90` |
| 36 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/instance-source-edition-5.md) | 181 | `declaration-track:1cf1a79d08c0db78d3208d531ad1d497aa072decda092cb55dbf50a96a84df10` |
| 37 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/instance-source-edition-8.md) | 186 | `declaration-track:625680558b9de818035e97e1a469002c262e8164dd0040b92654b42dc2dae48e` |
| 38 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/instance-source-edition-3.md) | 189 | `declaration-track:0ac93c24605c04ca4d3fa1501069ff3fece4e3ad5f40f5e6b75fdd62ca6e8f18` |
| 39 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/instance-source-edition-10.md) | 193 | `declaration-track:6a710b0201e1ff04e1a17819ff4496d5fec53d989c799eea4dc3cfa9925f8873` |
| 40 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/instance-source-edition-2.md) | 196 | `declaration-track:08c46b6578f1fd2925230ba09f86e4260e1663dd4ffd231828f48ef64ae1777d` |
| 41 | `instance` | [(anonymous)](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/instance-source-edition-16.md) | 200 | `declaration-track:e3e29343ec59a9df7cd437589530b3e22dad6ad94d83a58dda4d4f26b5322dcd` |
| 42 | `def` | [imageHom](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/imagehom.md) | 205 | `declaration-track:bb18264fe4b4cda242223bbb158be8d15ee802136abc093c7b58dfbcd2d1a424` |
| 43 | `lemma` | [imageHom_def](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/imagehom-def.md) | 214 | `result-track:61dc7f1e13445e6b72838b694c4acc70ea23e7656adeccfa82f619f3efa4e98b` |
| 44 | `lemma` | [down_imageHom](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/down-imagehom.md) | 219 | `result-track:e4dba80da4fd298953a9185b6962997d74fefb955427e7ea9aa66dec3535c76e` |
| 45 | `lemma` | [_root_.Set.up_image](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetSemiringSemiringSourceEdition1.lean/declarations/root-set-up-image.md) | 224 | `result-track:0bc125d842e968ab38a1e79b82b3381ebb7e7194151a6a9587ed46a1117bd0f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b6764422e458ce91e9d84877b1eba9c6632b823842ad0585e1e5e2d2ebb06250 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Semiring/Variant52cb39ccbffade6ddfca33a94dd6a6e29943fa11721035acaa7caa585dc9114d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
