# Verification target: Theta Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e89c35a8802b91dc9f3598fbd3a3d7e1630ff725",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Theta/Variant07c787be3c7702051947480ca3b484fad77d0e23e32804fc6f30884b1cd9fdc7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e89c35a8802b91dc9f3598fbd3a3d7e1630ff725`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Theta/Variant07c787be3c7702051947480ca3b484fad77d0e23e32804fc6f30884b1cd9fdc7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Theta/Variant07c787be3c7702051947480ca3b484fad77d0e23e32804fc6f30884b1cd9fdc7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isTheta_refl](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-refl.md) | 52 | `result-track:f1ec23329222b722354b167fb691391505ab974503d5582cca867c1822064466` |
| 2 | `theorem` | [isTheta_rfl](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-rfl.md) | 55 | `result-track:8a38238173717df41f10ee33747654f345dd5a5e5d3f8d64a4194f760b2e7a45` |
| 3 | `theorem` | [IsTheta.symm](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-symm.md) | 59 | `result-track:222e2a89cac0b7eec06cfb9b0dd97fe4c6f4519f5cef20e28020c56da1f97f6a` |
| 4 | `theorem` | [isTheta_comm](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-comm.md) | 62 | `result-track:1e841f451a6a9e53f289fd512e0bc9f0bdd4b8f4a9e4547af2f6f8f239c812e4` |
| 5 | `theorem` | [IsTheta.trans](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-trans.md) | 66 | `result-track:7e5fb66b9b655156d0a7391eb21eb582480236df933ffec51b9b361579fa2d8d` |
| 6 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 70 | `declaration-track:5ae1d1b2712436c89ffd93828d9d7d0b52a10a5d2fd028417d25d400db0b8235` |
| 7 | `theorem` | [IsBigO.trans_isTheta](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/isbigo-trans-istheta.md) | 74 | `result-track:c88e3e01486cd9284c1508d4a9009e2b1e268deb0f7cf59855dbf614a256039b` |
| 8 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 78 | `declaration-track:562441f39d29438eb360413abd79ded46ba876ae40ab209fc45b03516740afb4` |
| 9 | `theorem` | [IsTheta.trans_isBigO](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-trans-isbigo.md) | 82 | `result-track:c04ec8518a3e6a6ff8bef181c4a028ce90e8522b0ceae94eca9d2307b83268f3` |
| 10 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 86 | `declaration-track:f21014d9a6fb8c24ec28bc0a9026ffde5c41d1b5f11b2855e3b34ea6341e795b` |
| 11 | `theorem` | [IsLittleO.trans_isTheta](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/islittleo-trans-istheta.md) | 90 | `result-track:02df86b1c416bb2863ceae116eda4dfad690893821abaffc8ab24d01faaf3e32` |
| 12 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 94 | `declaration-track:ea5a05132f85b0aa742391cc3741bc1cb57eabb70905b3f64b15800b74a44cab` |
| 13 | `theorem` | [IsTheta.trans_isLittleO](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-trans-islittleo.md) | 98 | `result-track:7d6af7b284d54a89989ed9d241957a6694eb5f0b3bfa37e263da93c08f5e1eba` |
| 14 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 102 | `declaration-track:965a3a2615f1f0be9c89b46d4e44064c0c71c50636409be409b4147c44ab144b` |
| 15 | `theorem` | [IsTheta.trans_eventuallyEq](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-trans-eventuallyeq.md) | 106 | `result-track:b853aa095477a774786823c83020c65bed96b4535ce91fa2fcc432f214cc62b0` |
| 16 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 110 | `declaration-track:91e3d3632c61fc86a3cd6022a00c1810658cbdaf427354aafd57a0a94948909c` |
| 17 | `theorem` | [Theta Namespaced Public](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/trans-istheta.md) | 114 | `result-track:ee92867b899d22f3a0f20e8426425909aef9196365e98637d0ca6bc634499475` |
| 18 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/instance.md) | 118 | `declaration-track:3b222727f5996fee284c431fcb0346f12d3eec0e5b7103fb671b5369d32e8bc7` |
| 19 | `lemma` | [Theta Namespaced Public](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta.md) | 121 | `result-track:270a0cd425fec8527351b438889f01df572cbe8596c970146b4e3e5ee04d6738` |
| 20 | `theorem` | [isTheta_bot](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-bot.md) | 125 | `result-track:9374875084f0e3021f1338bf2e0ecb0add4640321af0b52b3da40ad9e191ed7e` |
| 21 | `theorem` | [isTheta_norm_left](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-norm-left.md) | 128 | `result-track:8905dac2be2c893810e4082c1401d35b79c2a2769bda1da04fb9a9f6a6b44eee` |
| 22 | `theorem` | [isTheta_norm_right](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-norm-right.md) | 131 | `result-track:84bfd16047428d8a7ffbf109af598ae306cd8cfb03a303409956069cd9baa944` |
| 23 | `theorem` | [IsTheta.of_norm_eventuallyEq_norm](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-of-norm-eventuallyeq-norm.md) | 137 | `result-track:ebad1b37aaeb38d9772fdece4bf831bcfe3a0f4ba93a37b6ed66de6160d80ce8` |
| 24 | `theorem` | [IsTheta.of_norm_eventuallyEq](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-of-norm-eventuallyeq.md) | 140 | `result-track:71c0de6d455b93cc7771ff7076285408604a4584d958eec5777f06f7e73ba933` |
| 25 | `theorem` | [IsTheta.isLittleO_congr_left](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-islittleo-congr-left.md) | 143 | `result-track:9bb261c53cfc02b4fc72a31f319ce7cb0eb2bc5996dcfbcbf319fa591284a87a` |
| 26 | `theorem` | [IsTheta.isLittleO_congr_right](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-islittleo-congr-right.md) | 146 | `result-track:61e4113156ec519e887b4e9257e4e65cbf592cf452a5f99506ce5e39a87262b8` |
| 27 | `theorem` | [IsTheta.isBigO_congr_left](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-isbigo-congr-left.md) | 149 | `result-track:76996f762aa9ebc84b53a96aa6af0add59f20a86190413e99839a1b96faf9626` |
| 28 | `theorem` | [IsTheta.isBigO_congr_right](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-isbigo-congr-right.md) | 152 | `result-track:aca7157df1f85b7081a94c93bac6eef4bc6afc9466702a2746c32f0a5df403d8` |
| 29 | `lemma` | [IsTheta.isTheta_congr_left](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-istheta-congr-left.md) | 155 | `result-track:206dc80dfd7320acdb4cd9f4205544c7c555ad055d551f9b45b25077152b6faf` |
| 30 | `lemma` | [IsTheta.isTheta_congr_right](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-istheta-congr-right.md) | 158 | `result-track:d42fa8657d9bc952569ebf6bd22053dd463e34fe79a7cf3dd4f906410dadf72b` |
| 31 | `theorem` | [IsTheta.mono](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-mono.md) | 161 | `result-track:2de3ad498b7e58782753c805b0a315b089801aa444b6bea38313f301d338bd61` |
| 32 | `theorem` | [IsTheta.sup](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-sup-source-edition-2.md) | 164 | `result-track:a0e4f6059934f98ad930487637bceed299d134ffb2caaad732df1b6badb2fa54` |
| 33 | `theorem` | [isTheta_sup](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-sup.md) | 168 | `result-track:021ceccbd6d2dcf04975c57ba0dd8b2edc0abee930362eb3d3a676def77601f1` |
| 34 | `theorem` | [IsTheta.eq_zero_iff](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-eq-zero-iff.md) | 171 | `result-track:564bfacb9069a805ce789497aa84044d0096963ee52d3021011aea7ad10ae9d5` |
| 35 | `theorem` | [IsTheta.tendsto_zero_iff](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-tendsto-zero-iff.md) | 174 | `result-track:bd17ef2aa457718cb1b768ceecb6402b2c0a04d014ab91eba9b152f42c98a699` |
| 36 | `theorem` | [IsTheta.tendsto_norm_atTop_iff](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-tendsto-norm-attop-iff.md) | 178 | `result-track:09270c33c287d817c14944b6a9f9fbe1bd215c7dce5e445032b043018acf6a0b` |
| 37 | `theorem` | [IsTheta.isBoundedUnder_le_iff](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-isboundedunder-le-iff.md) | 183 | `result-track:29fc73643c8acf1c589f2e6f9b057f67599f7b58bc046d1c6605d1313ea716de` |
| 38 | `theorem` | [IsTheta.smul](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-smul.md) | 187 | `result-track:ddc31250702e4a7f35ad4a45ca5339a755186ea5e95df650643c0e887de60121` |
| 39 | `theorem` | [IsTheta.mul](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-mul.md) | 192 | `result-track:b6e0d2c60b8b6ebbba0738cb711f0b83702eb24f8865dfa9cc0422341d2f155b` |
| 40 | `theorem` | [IsTheta.listProd](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-listprod.md) | 196 | `result-track:9d0e2346d73696f2dd65b8b6a17c75a5b53a4f06cbb1e05dbcd594dc92972838` |
| 41 | `theorem` | [IsTheta.multisetProd](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-multisetprod.md) | 201 | `result-track:9163d28ae8f00218f43617d529041f0d1161c82a16117ff33ad968f1afd91171` |
| 42 | `theorem` | [IsTheta.finsetProd](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-finsetprod.md) | 206 | `result-track:1fa67bdbf9f1ac021102e98d90d7b479a836b4faa46cd6823f50d1052213eacc` |
| 43 | `theorem` | [IsTheta.inv](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-inv-source-edition-2.md) | 210 | `result-track:e8f975f0f68483ba6f28d9c0101fb8e9e64471f6cbfe98489f4b72812ba43ef7` |
| 44 | `theorem` | [isTheta_inv](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-inv.md) | 215 | `result-track:5aaadb8ddc69522adff57f53a6fd60fcec355b48d1743f5ca52baf7cfc024a0f` |
| 45 | `theorem` | [IsTheta.div](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-div.md) | 219 | `result-track:39a8603ba72664b8251de53891605dbd0e79e883d18348190fe91de4bef7019f` |
| 46 | `theorem` | [IsTheta.pow](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-pow.md) | 223 | `result-track:764d7fc8a4641073051cdbfdc36c923b6b8ae1d343274df1396289eb3bcfdb50` |
| 47 | `theorem` | [IsTheta.zpow](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-zpow.md) | 227 | `result-track:5ebf6c2256a43e0698662ba0acc1624f2a972c630162109fee7e02c57b15b3b9` |
| 48 | `theorem` | [isTheta_const_const](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-const-const.md) | 233 | `result-track:7176484ec49cf11f77d59a25907c51ddc1fe2041d85ad9ffeacba007be17d5ae` |
| 49 | `theorem` | [isTheta_const_const_iff](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-const-const-iff.md) | 238 | `result-track:e327e020b92277aa78fd910e392a34f2d8b30336270a692adf351b86bac82ae8` |
| 50 | `theorem` | [isTheta_zero_left](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-zero-left.md) | 243 | `result-track:54513bff8becc6620fed950d51e18fe17341a6ca7eac4c23058d9abfeeda025c` |
| 51 | `theorem` | [isTheta_zero_right](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-zero-right.md) | 247 | `result-track:7a9b897fd2965606973729d917beacd0cb5cc015a6b9c2045e6c8dead723eb3d` |
| 52 | `theorem` | [isTheta_const_smul_left](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-const-smul-left.md) | 250 | `result-track:919de6537e6139bb115dfbeef48ad805b8701fab73bdeca23ca9f55d856fdcf6` |
| 53 | `theorem` | [isTheta_const_smul_right](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-const-smul-right.md) | 256 | `result-track:9e393ddcc6d5564bfcdeb535afef909ee5e6bf3561fdfe94f7f84b6276aac810` |
| 54 | `theorem` | [isTheta_const_mul_left](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-const-mul-left.md) | 262 | `result-track:ff541510dbada0fb60ee011bc178015d85527923c0c415b30cf236d3a884e63c` |
| 55 | `theorem` | [isTheta_const_mul_right](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-const-mul-right.md) | 268 | `result-track:77e1da39d7dc961f05673c7b4747227ec268e50df2a239a5e05a5522787c448c` |
| 56 | `theorem` | [IsLittleO.right_isTheta_add](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/islittleo-right-istheta-add-source-edition-2.md) | 274 | `result-track:9dd74a0ccc54997ac0633bb0e5f63a7fa6e398fc789c67e74a33a71c6c0048ad` |
| 57 | `theorem` | [IsLittleO.right_isTheta_add'](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/islittleo-right-istheta-add.md) | 278 | `result-track:5ca9604e21395e2de4ba760f429ff8f767501a69819fb6ec35ac94b0686f339c` |
| 58 | `lemma` | [IsTheta.add_isLittleO](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-add-islittleo.md) | 282 | `result-track:48d0b29c586b4916e86b2e0b8b308f1125d4eb57cfe19b81d4b45432b9656570` |
| 59 | `lemma` | [IsLittleO.add_isTheta](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/islittleo-add-istheta.md) | 286 | `result-track:4a6b40bb357afcf5c79447bd7cbd29aaa5a7225cdbce930c4e5f875aeb038b96` |
| 60 | `theorem` | [isTheta_of_div_tendsto_nhds_ne_zero](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-of-div-tendsto-nhds-ne-zero.md) | 290 | `result-track:80ce0970ffd6ab718fccd2214c386a2544bc1f83b0f162bdf20e56d4df90c6f1` |
| 61 | `theorem` | [IsTheta.fiberwise_right](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-fiberwise-right.md) | 303 | `result-track:20e37b7a1bc044a46559581c25c69ac68b7712ff44ff36c9256e4cb6e55dba9f` |
| 62 | `theorem` | [IsTheta.fiberwise_left](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-fiberwise-left.md) | 308 | `result-track:c795cfbdffac2a963cab0185898f156b2b3fe9418922ea90aa2daab09b535862` |
| 63 | `theorem` | [IsTheta.comp_fst](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-comp-fst.md) | 319 | `result-track:3194f14f7a957bb7707de2eb06e761b829ee62e7450e3354a0b59a46b6372bca` |
| 64 | `theorem` | [IsTheta.comp_snd](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-comp-snd.md) | 323 | `result-track:34401aeb90431da3d9e4bfecc54a357c72063da15c7266e99edff54e16c55d51` |
| 65 | `theorem` | [isTheta_principal](../../../../FunctionalAnalysis/ThetaNamespacedPublic.lean/declarations/istheta-principal.md) | 336 | `result-track:4c7a63faba3d2112eb615a334cb217f60f7d0d60cee373d7680d75adceb337c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e2d107bd7619863b926affb156322131955925e54aa97d4b0dd628e8b8982a0a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Theta/Variant07c787be3c7702051947480ca3b484fad77d0e23e32804fc6f30884b1cd9fdc7.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/Theta/Variant07c787be3c7702051947480ca3b484fad77d0e23e32804fc6f30884b1cd9fdc7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
