# Verification target: Action Pointwise Set Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eabb184aad58ba681a2482c594b5cc384df1b087",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant126a446fc9f197c4375059c6a0d213a71f79385f7048d58225cfa2c4ad441384.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eabb184aad58ba681a2482c594b5cc384df1b087`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant126a446fc9f197c4375059c6a0d213a71f79385f7048d58225cfa2c4ad441384.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant126a446fc9f197c4375059c6a0d213a71f79385f7048d58225cfa2c4ad441384.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Opposite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Scalar` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Equiv` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice.Image` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Pairwise.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [smul_set_prod](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/smul-set-prod.md) | 40 | `result-track:49400a55c430c6b8f2b8bc9d06027e0a624e5f4cf361e3c5d69bba997e481ffe` |
| 2 | `lemma` | [smul_set_pi](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/smul-set-pi.md) | 48 | `result-track:6a4345a48947b65b96e0c2841095d4bf03db630c9424728424cddd2bcf07bead` |
| 3 | `lemma` | [smul_set_pi_of_isUnit](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/smul-set-pi-of-isunit.md) | 53 | `result-track:7d89ac685733f983b6b492a597eb0b678283a9f1a26a5628725f9128b5856038` |
| 4 | `lemma` | [smul_set_subset_mul](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/smul-set-subset-mul.md) | 61 | `result-track:67439aa30cac8c01f32882e55f31a94be86d311f9d50f694115c1d51d620af33` |
| 5 | `lemma` | [op_smul_set_subset_mul](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/op-smul-set-subset-mul.md) | 64 | `result-track:9eaafd951ad6339fbaa05b2e08050f116e293278d89339faf9756047d3ae063f` |
| 6 | `theorem` | [image_op_smul](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/image-op-smul.md) | 67 | `result-track:83e78ca2582442f869e74afc024d564c4f93f9d4829c55f9b5cd59505badc3e8` |
| 7 | `theorem` | [iUnion_op_smul_set](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/iunion-op-smul-set.md) | 72 | `result-track:a854903733769993cafd5a99792367e484c5dc72afd0b0ccd4cb34d665aed0d1` |
| 8 | `theorem` | [mul_subset_iff_left](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/mul-subset-iff-left.md) | 76 | `result-track:822c4c03df357bb48c5e9933a531b26705727a852336bc9e11fc25c4e31a86b1` |
| 9 | `theorem` | [mul_subset_iff_right](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/mul-subset-iff-right.md) | 80 | `result-track:ce4a1ca026d10ea037c0c8af87639a46c65495beae0fad8da1dd88ef4953b15d` |
| 10 | `lemma` | [pair_mul](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/pair-mul.md) | 83 | `result-track:0a9f75b979055b86d05b6cbe1089af38c633d7637618874c00fe9917543cc952` |
| 11 | `lemma` | [mul_pair](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/mul-pair.md) | 87 | `result-track:e902e546a8144ba79da38d1cf2b48f0638e4edfeb890a1003fe0f042ea3b5e2d` |
| 12 | `lemma` | [range_mul](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/range-mul.md) | 90 | `result-track:e9b5a453ec53f4e8b99aa0bcb47ed895941eeb5a94c55e1d466562653f7e7bd7` |
| 13 | `lemma` | [image_smul_distrib](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/image-smul-distrib.md) | 96 | `result-track:af012e43f298fa60b1b3b19e7708773daf32c62ed8c8be6d025842521fbf7dc6` |
| 14 | `lemma` | [image_op_smul_distrib](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/image-op-smul-distrib.md) | 103 | `result-track:19f1a06d7086f6be28a9e8b8c31206e7ae88b96f4fec1d250019d48527473a67` |
| 15 | `lemma` | [op_smul_set_mul_eq_mul_smul_set](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/op-smul-set-mul-eq-mul-smul-set.md) | 110 | `result-track:f8833d5994f51987e7774e1da19be0727617a2492c55949880ec644c8dfa8b39` |
| 16 | `theorem` | [pairwiseDisjoint_smul_iff](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/pairwisedisjoint-smul-iff.md) | 121 | `result-track:8ce3d8843bb130c50442d50a9a5ab3f33e13fc1a4c6e99839cee4adc5db39a13` |
| 17 | `instance` | [smulCommClass_set](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/smulcommclass-set-source-edition-2.md) | 128 | `declaration-track:95c2bbaad1eb85eb02b9769756d3a5ad87b7996b4d6c694f9c957fe9ac7e0443` |
| 18 | `instance` | [smulCommClass_set'](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/smulcommclass-set-source-edition-3.md) | 133 | `declaration-track:d4a6ea5cb8a05cbf56eec06568af39c61e958604b6be8509a91397af5c9a4b64` |
| 19 | `instance` | [smulCommClass_set''](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/smulcommclass-set.md) | 138 | `declaration-track:66ae7a9f59fa324fd817c601b5034627f973281168e1f303adcf37680912537d` |
| 20 | `instance` | [smulCommClass](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/smulcommclass.md) | 144 | `declaration-track:ce6fa7d555b951278148a0ff518d042b7a35a0a280ecadf2e7160c329aed844b` |
| 21 | `instance` | [isScalarTower](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/isscalartower.md) | 149 | `declaration-track:1a9d334a81dcab0d9a91e55ac48e52f4c347078ebc385a402f4448b63027ddf6` |
| 22 | `instance` | [isScalarTower'](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/isscalartower-source-edition-2.md) | 154 | `declaration-track:615d99f397d2872b5382e2fb87862b8301042c1a28919c7cbd2ea1dc3439e3f4` |
| 23 | `instance` | [isScalarTower''](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/isscalartower-source-edition-3.md) | 159 | `declaration-track:75a98b7d5e73a0888b11d92779fe98548bb7249e34da635c474d89307fb659fd` |
| 24 | `instance` | [isCentralScalar](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/iscentralscalar.md) | 164 | `declaration-track:e48fc0738d6e28e57215f64bc5eebdc3b8452f0f33953561822be69c527bd93a` |
| 25 | `def` | [mulAction](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/mulaction.md) | 173 | `declaration-track:2b4dbafe0ee565e326283c7ef42440c3d78172ed71f278698482ce41ab16b553` |
| 26 | `def` | [mulActionSet](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/mulactionset.md) | 180 | `declaration-track:03d3b467f8d718f9fe1f6ed2424b0459ea8f27a3ea304fcaa7bce7cf153e09da` |
| 27 | `theorem` | [smul_mem_smul_set_iff](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/smul-mem-smul-set-iff.md) | 191 | `result-track:937ed9f4fd2b4fbd57b524f71fdd663bb52885f3e7967455ab5a5ca6929461f2` |
| 28 | `theorem` | [mem_smul_set_iff_inv_smul_mem](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/mem-smul-set-iff-inv-smul-mem.md) | 195 | `result-track:bccac87b6ee614c2cbe4e4b17b56351b7c40716b48295b1c5a4b45d147ebcabd` |
| 29 | `theorem` | [mem_inv_smul_set_iff](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/mem-inv-smul-set-iff.md) | 199 | `result-track:22148d750ea24bb663c024ce9486c9eaac7bcc7ea3220bfdc9db18262c968a62` |
| 30 | `lemma` | [mem_smul_set_inv](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/mem-smul-set-inv.md) | 203 | `result-track:4d814ca785999ae172b8dc46e871ff612eb86ecdb8445e7faf13702e541ccc6e` |
| 31 | `theorem` | [preimage_smul](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/preimage-smul.md) | 207 | `result-track:af020f4a08e3519c01060cd5511c784415e7e4246bcf5af86c969eaa32c8f36f` |
| 32 | `theorem` | [preimage_smul_inv](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/preimage-smul-inv.md) | 211 | `result-track:2061c360fefc864ef45f9b9b53ee160f23f0257835cd4ec88ca8c7f30f7fc8cd` |
| 33 | `theorem` | [smul_set_subset_smul_set_iff](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/smul-set-subset-smul-set-iff.md) | 215 | `result-track:15f886c8bc7bf9e6c89b0873b288c3bff85921fa1e135db4fc10875e62f68680` |
| 34 | `theorem` | [smul_set_subset_iff_subset_inv_smul_set](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/smul-set-subset-iff-subset-inv-smul-set.md) | 222 | `result-track:275f07cc9d00d14f378c2a13daa96cac64e772959f0bd5fe50766626cb66ae77` |
| 35 | `theorem` | [subset_smul_set_iff](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/subset-smul-set-iff.md) | 230 | `result-track:b9ff7c840cb7638392da9b87a5913ed0f93b3900bbf94ee30b21fbf384c8d804` |
| 36 | `theorem` | [smul_set_inter](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/smul-set-inter.md) | 238 | `result-track:f34af3fa58ebc2c74203478d762db930d8e30ea5be4d40b245c59823ad24a98c` |
| 37 | `theorem` | [smul_set_iInter](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/smul-set-iinter.md) | 242 | `result-track:e71744d478b938c4b6cfba869e069728f0fccf7a89c49088a5a85dfcbe3cbe0d` |
| 38 | `theorem` | [smul_set_sdiff](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/smul-set-sdiff.md) | 247 | `result-track:f90005c134664fe96588539736e778bb88c6eb302c369f19849cbd13c1325cdf` |
| 39 | `theorem` | [smul_set_symmDiff](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/smul-set-symmdiff.md) | 252 | `result-track:94669f790ebae181d0a003e289dca7123146cb2e006554d4b218c78cec8a3e98` |
| 40 | `theorem` | [smul_set_univ](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/smul-set-univ.md) | 256 | `result-track:ecbf38890e3c6064576cba0533dccee6ae3cf239ff91873412dcc0b0dd17dc82` |
| 41 | `theorem` | [smul_univ](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/smul-univ.md) | 260 | `result-track:be8b29ee5db6812e412c972011cc61dd680eb8951103c82a8a327008639e52de` |
| 42 | `theorem` | [smul_set_compl](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/smul-set-compl.md) | 265 | `result-track:01fb625f17f46660c58d7d7dee601c36a34319f6a341eee410407614a22be351` |
| 43 | `theorem` | [smul_inter_ne_empty_iff](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/smul-inter-ne-empty-iff-source-edition-2.md) | 269 | `result-track:7731702fb72e7ce2f12dd3c97ce483b857e3f000d8c8d221419a0070a13f2294` |
| 44 | `theorem` | [smul_inter_ne_empty_iff'](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/smul-inter-ne-empty-iff.md) | 280 | `result-track:6d485dc28507423115b64c31268e170742db2135ea4bb8a56071f2a8e9698361` |
| 45 | `theorem` | [op_smul_inter_ne_empty_iff](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/op-smul-inter-ne-empty-iff.md) | 285 | `result-track:3a00507b6c2e689dd6ad15bd6d9e2fb3a93241c79755bb51e8e5ca66c26b4b78` |
| 46 | `theorem` | [iUnion_inv_smul](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/iunion-inv-smul.md) | 297 | `result-track:5390cb4c1fa601f20a20fe220437d8556446d64b363d07adb1e9079348cf37b9` |
| 47 | `theorem` | [iUnion_smul_eq_setOf_exists](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/iunion-smul-eq-setof-exists.md) | 301 | `result-track:26f5e9a8d9137dbf84724ec810172514d5138736a0846d5bdbbc1ec40985a89b` |
| 48 | `lemma` | [inv_smul_set_distrib](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/inv-smul-set-distrib.md) | 305 | `result-track:edbabc8af02fb525faa229068553cf18f7332379bef710e273166ed408c3acfb` |
| 49 | `lemma` | [inv_op_smul_set_distrib](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/inv-op-smul-set-distrib.md) | 309 | `result-track:f0fc5f5fbe9f5fa97d1bca41cb1c35f2794883ebcd6373a75929de098db3559d` |
| 50 | `lemma` | [disjoint_smul_set](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/disjoint-smul-set.md) | 313 | `result-track:51a72450c3e148f3063d8f8a674d862d6f67ebab7906ab8d55fdeb3cd7d5a970` |
| 51 | `lemma` | [disjoint_smul_set_left](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/disjoint-smul-set-left.md) | 317 | `result-track:4f2968a3228f25ec380797b5153f25427ba5837a78044c9dabcb8e6819730d71` |
| 52 | `lemma` | [disjoint_smul_set_right](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/disjoint-smul-set-right.md) | 321 | `result-track:e9014f6ee2bae04dce7b155d874b97b6236a91b51a86e1e430932eb25c56cba7` |
| 53 | `lemma` | [exists_smul_inter_smul_subset_smul_inv_mul_inter_inv_mul](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/exists-smul-inter-smul-subset-smul-inv-mul-inter-inv-mul.md) | 333 | `result-track:7d5f5400663c55794a6ccdb508a0793582169a7e977df1601361d22eed94d15e` |
| 54 | `lemma` | [mem_invOf_smul_set](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/mem-invof-smul-set.md) | 348 | `result-track:0bdc47bfd42440dfa45d3200bc18de443b9ef88bd75cb9026f1701c380f436eb` |
| 55 | `lemma` | [smul_graphOn](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/smul-graphon.md) | 357 | `result-track:f55091072446f18d400ea39ef77d97c4497d328a471de14d4aef86b903d7d021` |
| 56 | `lemma` | [smul_graphOn_univ](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/smul-graphon-univ.md) | 364 | `result-track:df6a0452c7c8353f623f2004054a60b0a7019d4b0b7ba8bc45f121c9b0bbea1d` |
| 57 | `lemma` | [smul_div_smul_comm](../../../../GroupTheoryAndGeneralizations/ActionPointwiseSetBasic.lean/declarations/smul-div-smul-comm.md) | 372 | `result-track:68437525dcd415ded6a8b1599949f64475494e1498d9ee5496ab90d761b92539` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d74765d05626075399932c3f48c2c4db185926f0b66de71150b02e09a823db0c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variant126a446fc9f197c4375059c6a0d213a71f79385f7048d58225cfa2c4ad441384.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variant126a446fc9f197c4375059c6a0d213a71f79385f7048d58225cfa2c4ad441384.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
