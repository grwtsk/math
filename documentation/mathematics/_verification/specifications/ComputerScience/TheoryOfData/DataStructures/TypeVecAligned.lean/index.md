# Verification target: Type Vec Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b4ffe950d40fb2e87279950eabf524d80b63f03",
  "lexical_observation_count": 120,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeVec/Variantcbf7d0ee81331edea7eceec140efe59dbe7e62a1ef6f1343a95b4d2e9d8b5220.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b4ffe950d40fb2e87279950eabf524d80b63f03`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeVec/Variantcbf7d0ee81331edea7eceec140efe59dbe7e62a1ef6f1343a95b4d2e9d8b5220.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeVec/Variantcbf7d0ee81331edea7eceec140efe59dbe7e62a1ef6f1343a95b4d2e9d8b5220.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.Fin2` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TypeVec](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/typevec.md) | 38 | `declaration-track:2c7afeecaa05fbba95e2fe2f33a58b57be04f6391a300c1bcc2d226eb5065de5` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/instance.md) | 42 | `declaration-track:25eb032ac33257492543233ae79a231a670ca52659e67c8325f68ad403245ef5` |
| 3 | `def` | [Arrow](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/arrow.md) | 50 | `declaration-track:a4da1c7667e78d487ff5e95df2b9d2cd3c9ab69f8a24897bc89284696cda8d92` |
| 4 | `theorem` | [Arrow.ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/arrow-ext.md) | 59 | `result-track:23553131b78d07d8d2b301098471e2d87afd3f21afd05a0fa961b40f1de55dc5` |
| 5 | `instance` | [Arrow.inhabited](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/arrow-inhabited.md) | 63 | `declaration-track:c93066af21615b260b925884c6ab93795df590cef261035057c6169024503538` |
| 6 | `def` | [id](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/id.md) | 68 | `declaration-track:a322974b02b36a9b58f1b1b272dea114b263efcc098a199ad633861d618e3158` |
| 7 | `def` | [comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/comp.md) | 72 | `declaration-track:2bf84dc8155c0f5e61c19955549e7955afae80fe343950ac102c690000ef3df6` |
| 8 | `theorem` | [id_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/id-comp.md) | 78 | `result-track:bdb8461d87f3adeec9bf8223c7f6420e9cf8eb2df10b032d4daabd5b76897957` |
| 9 | `theorem` | [comp_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/comp-id.md) | 83 | `result-track:3d4f4e6b54ddc6bb2c37f0e49a149622ec0cd421dc37c3e8e5589f855133ad4b` |
| 10 | `theorem` | [comp_assoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/comp-assoc.md) | 87 | `result-track:36f05f9325aefcc605783e638a6380184ed927ce067c73e747b97cb2141a29cb` |
| 11 | `def` | [append1](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/append1.md) | 93 | `declaration-track:a499f4e2b22abf6e4c1ec82c534940131c59ee1a28d9d36cce006270e5b657b7` |
| 12 | `def` | [drop](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/drop.md) | 101 | `declaration-track:cd78e5b9126067caaeeb1cb8649c575709890d2cbcfe8c529bfcce94a86cf4ba` |
| 13 | `def` | [last](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/last.md) | 105 | `declaration-track:111501b0f75631943472b6a52359845d382ee9e7fb9c20fcf465c184e7023181` |
| 14 | `instance` | [last.inhabited](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/last-inhabited.md) | 109 | `declaration-track:9a6f192c3e1efd37820b3df7d53e3f1ba9e94f45d8dc8eb480ee7ea0cebd796a` |
| 15 | `theorem` | [drop_append1](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/drop-append1.md) | 113 | `result-track:76d70878ce376058d6c39a3b20e43dce105b7c7393d817580d4208e1f1f24898` |
| 16 | `theorem` | [drop_append1'](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/drop-append1-source-edition-2.md) | 117 | `result-track:b70310dc12bd836ace15b2a86acf7715ab372f9643830089d2dba710ff19e15c` |
| 17 | `theorem` | [last_append1](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/last-append1.md) | 121 | `result-track:d8d9c2e5312e3058b64b756921b7d269a58cbd7f20d2d8fbfa1ebf0264f5f9ec` |
| 18 | `theorem` | [append1_drop_last](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/append1-drop-last.md) | 126 | `result-track:430729dfa6f999158bae6032f66d1fc15e86187b15c938487712d0581593ba8e` |
| 19 | `def` | [append1Cases](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/append1cases.md) | 132 | `declaration-track:31f23d69686a146c3cae6858de06bb6daae1fc9451dd35a5a269cca70838b7a2` |
| 20 | `theorem` | [append1_cases_append1](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/append1-cases-append1.md) | 137 | `result-track:6bbceb9432008bac83ac3a39b28cbd1347166bee0e3145476bfc247a662de604` |
| 21 | `def` | [splitFun](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/splitfun.md) | 143 | `declaration-track:2bb491aab616b670d7ce53c364105f9c516fe0d358e239a7bdd0d0452e198055` |
| 22 | `def` | [appendFun](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/appendfun.md) | 149 | `declaration-track:e6de4e811eb9f2333a4cd07b188b7e10594e759c5e1d232a5e2fb3f041842b86` |
| 23 | `def` | [dropFun](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/dropfun.md) | 157 | `declaration-track:ecb505131380b6784f35068bb784cce557261c992dca966b5d175fb325a51565` |
| 24 | `def` | [lastFun](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/lastfun.md) | 161 | `declaration-track:7091afee2641796d71d8b68cefe488458b3fdfa7660f8e57aa28e141ce65e595` |
| 25 | `def` | [nilFun](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/nilfun.md) | 167 | `declaration-track:cec630819b114f72aa7656b8a2fd24a297974c9e6897fc1c522776fd5f0accb1` |
| 26 | `theorem` | [eq_of_drop_last_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/eq-of-drop-last-eq.md) | 170 | `result-track:2f60a6db0468a8728bcd33ebab5619773d2a81271d6d2a2c0cbecc36841a66c3` |
| 27 | `theorem` | [dropFun_splitFun](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/dropfun-splitfun.md) | 180 | `result-track:d6b4f5c198e9c0d499f58c8e9c3c228ac0e201971e9ad860da3b5ee17af43d69` |
| 28 | `def` | [Arrow.mp](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/arrow-mp.md) | 186 | `declaration-track:573aed4a105141d1e0daa718a447141f5aa6366c92bc53e0ccc95ffd53cc438e` |
| 29 | `def` | [Arrow.mpr](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/arrow-mpr.md) | 191 | `declaration-track:a5b3173de593c49bf203e03096390a063324f7c62b08ab0a6088f0fc9f5c2eb8` |
| 30 | `def` | [toAppend1DropLast](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/toappend1droplast.md) | 196 | `declaration-track:eda27b1c6ae0ed3aab4e09c78117d6784e0c99c9334097455bcf6085803399c2` |
| 31 | `def` | [fromAppend1DropLast](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/fromappend1droplast.md) | 201 | `declaration-track:a0c52a877eef54661ce5c934a6445fa74d7d4d656baecc5f228eb0f95efc35bf` |
| 32 | `theorem` | [lastFun_splitFun](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/lastfun-splitfun.md) | 206 | `result-track:db81afb59dcd3c826ddb61d6f8503a766e8689071e3ecb80463f5314e2d50df2` |
| 33 | `theorem` | [dropFun_appendFun](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/dropfun-appendfun.md) | 212 | `result-track:7ff7ab3b887d1fad3e19b32968fa4863d96d13e0214dac004e3e1422946117f1` |
| 34 | `theorem` | [lastFun_appendFun](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/lastfun-appendfun.md) | 218 | `result-track:59dcfbbf39b4372b211005cd42bd93928599e706f0369fd9094f4d8d4ca7796e` |
| 35 | `theorem` | [split_dropFun_lastFun](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/split-dropfun-lastfun.md) | 223 | `result-track:874e7d4b013ee5be30a3f7b837a5dc4c8b276bd9d6b08779213634e905121cd0` |
| 36 | `theorem` | [splitFun_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/splitfun-inj.md) | 228 | `result-track:ed63b97571923dfe2212dac78d3bc303f31ad13d1e1044f45d9202bfe42d5d62` |
| 37 | `theorem` | [appendFun_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/appendfun-inj.md) | 233 | `result-track:7f116e04b4dfb7e6ae42f4268a2a8ef982705aa70e8740400392c901e60136ea` |
| 38 | `theorem` | [splitFun_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/splitfun-comp.md) | 239 | `result-track:5ca352f9100fd3e2c70d1041dadf6efffa13241c7d58094886561c542b825582` |
| 39 | `theorem` | [appendFun_comp_splitFun](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/appendfun-comp-splitfun.md) | 245 | `result-track:286bb845fd82b5b2e2d0341a03a52435e4267f43ba801164ba5d150f507f1df9` |
| 40 | `theorem` | [appendFun_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/appendfun-comp.md) | 256 | `result-track:57f5108d069f78f9a19858024843a0526cf30b505ef07138b2147579bab0ce6d` |
| 41 | `theorem` | [appendFun_comp'](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/appendfun-comp-source-edition-2.md) | 264 | `result-track:897e4feaa4bbb4b6d883361c58d5febad52aeb1137c2285f34d3aad4ddaf7692` |
| 42 | `theorem` | [nilFun_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/nilfun-comp.md) | 271 | `result-track:99cad09b4e59e78a0ae0927a1288f94d42046b04f03327864f464155b643e028` |
| 43 | `theorem` | [appendFun_comp_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/appendfun-comp-id.md) | 275 | `result-track:2af4521b934dde49f3fc230e9736e17aad4aadbd90f996f49f3e396a93845ef1` |
| 44 | `theorem` | [dropFun_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/dropfun-comp.md) | 281 | `result-track:49653109d7ead85c032f425bd8b43924650001d7d620c1384ca951f76557bfb4` |
| 45 | `theorem` | [lastFun_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/lastfun-comp.md) | 287 | `result-track:54e44b90862cdfef5b7349261ebb6b6ae46c41abfc922c0b7fb5e76a68e12a2b` |
| 46 | `theorem` | [appendFun_aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/appendfun-aux.md) | 292 | `result-track:8944049ebd81fc3b700a8c01d8187e2e6ebc72fa768afb7ad7ca2cf7d159648b` |
| 47 | `theorem` | [appendFun_id_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/appendfun-id-id.md) | 297 | `result-track:2a68855f0c2014a0148ac73aa597d61945d31df84c40dc120fea230346b83d82` |
| 48 | `instance` | [subsingleton0](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/subsingleton0.md) | 302 | `declaration-track:9438b1cda8a9f82bbf84bc40948a8c13f733bb42eb100e7c5938b075139b230b` |
| 49 | `def` | [casesNil](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/casesnil.md) | 309 | `declaration-track:cf5490c4cf23c9f114496e48b37c88d5e97059d802b5d512f7d0253e1daec6d3` |
| 50 | `def` | [casesCons](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/casescons.md) | 314 | `declaration-track:e94e94fda5515ea9d0e1f9466bc7f856003af75494e3a1b0a09b8c3c6f7189eb` |
| 51 | `theorem` | [casesNil_append1](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/casesnil-append1.md) | 320 | `result-track:bf63f91df7044e057c79a294b37ed6b23cb4d1d796b30c03427315ad007969ee` |
| 52 | `theorem` | [casesCons_append1](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/casescons-append1.md) | 325 | `result-track:2b20d9349a7cfa1de65769d1eda8834534510b906ccb9bac7f2a3bdb36255d63` |
| 53 | `def` | [typevecCasesNil₃](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/typeveccasesnil-source-edition-2.md) | 332 | `declaration-track:792cdc06e730c5833ad3f7670eaf327e180f211f2000779bd538614bbf4ac50a` |
| 54 | `def` | [typevecCasesCons₃](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/typeveccasescons.md) | 343 | `declaration-track:7c3a2e28857a67cb8b82469360ebfc25d97bf286e7235b8411ed28326efc8121` |
| 55 | `def` | [typevecCasesNil₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/typeveccasesnil.md) | 355 | `declaration-track:1a342a0b0a9ae3811303cd58e87ba1cf1689262e391aa89e6f43947ff3e513ac` |
| 56 | `def` | [typevecCasesCons₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/typeveccasescons-source-edition-2.md) | 364 | `declaration-track:d6f135b7e80426debac0916b93d34334aa743f71fd5bf1e8177fb2a41cde1bbc` |
| 57 | `theorem` | [typevecCasesNil₂_appendFun](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/typeveccasesnil-appendfun.md) | 373 | `result-track:7a19472735df56d101b5cc21c362613d330ff5eaf30bd5cecd96bb6616ec1952` |
| 58 | `theorem` | [typevecCasesCons₂_appendFun](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/typeveccasescons-appendfun.md) | 378 | `result-track:8acba2692df9100288b83794aea371eaf1466c6375404f65112879b8e0b41bae` |
| 59 | `def` | [PredLast](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/predlast.md) | 388 | `declaration-track:4f6e252dd1baf8b11bcf3714e40868113520803206750bca3abf2592b0428466` |
| 60 | `def` | [RelLast](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/rellast-source-edition-2.md) | 395 | `declaration-track:e4bf5c5280999d48ef9e670c0799a33766436e38df23992a464428b59d95d857` |
| 61 | `def` | [«repeat»](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/repeat.md) | 406 | `declaration-track:78f57c2397ed4ab0ffd8984c0d9e99272613af4a7e2f93505f94065e94d93ea8` |
| 62 | `def` | [prod](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/prod.md) | 412 | `declaration-track:56ba65a5e3e50bac220bebc6de53d812a8676a6c761cae90d4b27a4f370a0d18` |
| 63 | `def` | [const](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/const.md) | 422 | `declaration-track:55825db7666fc98e9ea305b3447aeb8e9ba89cbc96198148140a03800fb977ac` |
| 64 | `def` | [repeatEq](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/repeateq.md) | 430 | `declaration-track:6632408e3584ffaefdf1fb506355e5717fb273d8435a86084959ecfed071c82e` |
| 65 | `theorem` | [const_append1](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/const-append1.md) | 435 | `result-track:7cc496207affe870fd3b2224e96a8f3d5cd5f6e453c528d22d6bbd8eb300f844` |
| 66 | `theorem` | [eq_nilFun](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/eq-nilfun.md) | 440 | `result-track:ce2116c4d80b79401f0409dc6bbcf85acddb8207d3d284bd5e897eeee6d87205` |
| 67 | `theorem` | [id_eq_nilFun](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/id-eq-nilfun.md) | 444 | `result-track:20765ce4b0f42d16640b5edcc26521aef4a742b5f39dad77d6d2ab7c9880887e` |
| 68 | `theorem` | [const_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/const-nil.md) | 448 | `result-track:e3a2972e4a20bd82d49a837360f3bb3d4c6e7c2ff1a475dcc6dddac32e2c1d09` |
| 69 | `theorem` | [repeat_eq_append1](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/repeat-eq-append1.md) | 453 | `result-track:24715c60b9d312fa9ad5a120ecadcf3852ffd5fa73104e16decb634cfc22e638` |
| 70 | `theorem` | [repeat_eq_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/repeat-eq-nil.md) | 460 | `result-track:bbb4a37feb6b1218073a466ec72b9144d455d6bc7788a4a65d2ef936c81d70dd` |
| 71 | `def` | [PredLast'](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/predlast-source-edition-2.md) | 464 | `declaration-track:6a555e1b96e275e6e86caab998e45c6f3c22172209ecdb580b8fc112435288e2` |
| 72 | `def` | [RelLast'](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/rellast.md) | 470 | `declaration-track:64c9ed650f01d96f4651178b99f131430c55726462435658fb5b003b9006a160` |
| 73 | `def` | [Curry](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/curry.md) | 477 | `declaration-track:dd91f414ccb19db693689097f2b4e4dd1fe558f6fb5ca32c16f18d8acbe1aae6` |
| 74 | `instance` | [Curry.inhabited](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/curry-inhabited.md) | 481 | `declaration-track:2fd8a66330530ca090568f507a3a5daf7057861fef38d0267499bbc5ad235d26` |
| 75 | `def` | [dropRepeat](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/droprepeat.md) | 487 | `declaration-track:6fb5dca291f0092be7ba87a8d2d8260480ee13a01950387f61151e22f570101b` |
| 76 | `def` | [ofRepeat](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/ofrepeat.md) | 493 | `declaration-track:3e4a07b20a1ef942f896dfc20ad6123e9ae670e32fcbebdb5cbc5f78123d14d8` |
| 77 | `theorem` | [const_iff_true](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/const-iff-true.md) | 498 | `result-track:50755951d1b89da1b813d8c0c4c56d44b9916514c5f9855209f6d8d658784217` |
| 78 | `def` | [prod.fst](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/prod-fst.md) | 511 | `declaration-track:3d0f631233293d875ade4330b47f255a51eb9845a89e81c9d0fce61e12516a89` |
| 79 | `def` | [prod.snd](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/prod-snd.md) | 517 | `declaration-track:af1cbf123e188d0c2a6d7b3905e2cd320c2b1fa1aa5c1ee77409e09017665197` |
| 80 | `def` | [prod.diag](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/prod-diag.md) | 523 | `declaration-track:a612fe231ce86c86b07487cfc9e8e71a6343b2611a2f2d6899e9856eb0098ad3` |
| 81 | `def` | [prod.mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/prod-mk.md) | 529 | `declaration-track:0c2f0228756aa68b6b6dda62c7fdc4eac4f6aeda91a8e6139eecb8247f9634f6` |
| 82 | `theorem` | [prod_fst_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/prod-fst-mk.md) | 538 | `result-track:92801e951defb5424056b5d68123a13306b7a3a8234cba72dc10c5360c28973b` |
| 83 | `theorem` | [prod_snd_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/prod-snd-mk.md) | 546 | `result-track:6494a9a822317afd124c5b4f01256c1d8b57695ad06bcb53c73fb940b93768e3` |
| 84 | `def` | [prod.map](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/prod-map.md) | 554 | `declaration-track:4869b176429095e8aa5d2e569f07fc043d976edd168a2507b164c5ad14c9980b` |
| 85 | `theorem` | [fst_prod_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/fst-prod-mk.md) | 564 | `result-track:daddd6bf32a492cfad8b55867684029e787b8a32f0f23436b5458065d5613b32` |
| 86 | `theorem` | [snd_prod_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/snd-prod-mk.md) | 571 | `result-track:07d15714efcb7dbe89d624b115b3b6d350c89a41015aca1f88b86b0aae1df3b8` |
| 87 | `theorem` | [fst_diag](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/fst-diag.md) | 578 | `result-track:bc9b0d33ff56e7887ad4174d56bf984c18bc90e11076c1014c51bf6d3fab498c` |
| 88 | `theorem` | [snd_diag](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/snd-diag.md) | 584 | `result-track:3fa9865699dd4e04b299dedc4fd099930d72eca2a6a1bb062f35f1627f1047dc` |
| 89 | `theorem` | [repeatEq_iff_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/repeateq-iff-eq.md) | 590 | `result-track:ad48460a3b84728a1cce0e1695989168c943a39c1685853c86fa12391ce819f2` |
| 90 | `def` | [Subtype_](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/subtype.md) | 599 | `declaration-track:9a39351cd12a3d01c5d1283ca120c8c90008b7fdd60a2ba8ca4c8d142191b94e` |
| 91 | `def` | [subtypeVal](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/subtypeval.md) | 605 | `declaration-track:00e9cebde6c54c957a126b7992cda248320d2772f5ebef4f9eecb05bc84ce4ec` |
| 92 | `def` | [toSubtype](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/tosubtype-source-edition-2.md) | 612 | `declaration-track:85eee4ab36dfe69ceb5d00f191f0bb0b56474e89f3a26ac46c54c7694235983f` |
| 93 | `def` | [ofSubtype](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/ofsubtype-source-edition-2.md) | 621 | `declaration-track:eb81086d9b07fe23b8834d84e94e6a9f052556b3c5bd0179182dd0aa34e14a31` |
| 94 | `def` | [toSubtype'](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/tosubtype.md) | 628 | `declaration-track:21f000afa77cfcebccba5493f6af0e344a389c2fae9eacc6451fda987196d422` |
| 95 | `def` | [ofSubtype'](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/ofsubtype.md) | 635 | `declaration-track:683d04ab7a3167899efe007656cee4f70fbbcb5fa202886db37b9ae0d54e74bf` |
| 96 | `def` | [diagSub](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/diagsub.md) | 643 | `declaration-track:43b15d736211b26b1401c7e436c1f61e0e58d5d6ac29f65fd80ca5f497f739e4` |
| 97 | `theorem` | [subtypeVal_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/subtypeval-nil.md) | 648 | `result-track:03926ca4fc447d53906d39aa73918978907a9b7ae71eaf34c68e15d1550e9488` |
| 98 | `theorem` | [diag_sub_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/diag-sub-val.md) | 653 | `result-track:fdc210c7dca22f05379a55b895cb602f9865cc3af4361808c49a6bd3c698e28e` |
| 99 | `theorem` | [prod_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/prod-id.md) | 660 | `result-track:ae164a20e86ba2fbc17365e7be1d21b677747994d2ecf76241fc200d9a605185` |
| 100 | `theorem` | [append_prod_appendFun](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/append-prod-appendfun.md) | 669 | `result-track:6e93546126bddb9c5427a1cc49036d1ab025ce82adef7ec476e55c95286bafa1` |
| 101 | `theorem` | [dropFun_diag](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/dropfun-diag.md) | 682 | `result-track:6013edea5b6b7255c97f46c2718f8fc6500f03044c9a644d41dc40783f2d70f8` |
| 102 | `theorem` | [dropFun_subtypeVal](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/dropfun-subtypeval.md) | 688 | `result-track:7cf6136e650790a880c34bf7729d360fc654b57727d8db4c5e966dde4f3f791b` |
| 103 | `theorem` | [lastFun_subtypeVal](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/lastfun-subtypeval.md) | 694 | `result-track:b0e2d9e4e1fb10ace9c020bcf92efa5ea4059ffb3364c7963b663cc644a2d147` |
| 104 | `theorem` | [dropFun_toSubtype](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/dropfun-tosubtype.md) | 700 | `result-track:7407986464b04222555e6246074ffa8acb1d82c467984bf45eb33a15d6f8596e` |
| 105 | `theorem` | [lastFun_toSubtype](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/lastfun-tosubtype.md) | 707 | `result-track:677bb8cb1b15ad601f3b15fbe3adfa4c664aca6cad19e27a02a046b888bd34ea` |
| 106 | `theorem` | [dropFun_of_subtype](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/dropfun-of-subtype.md) | 714 | `result-track:8aba939800e381a30c359fcec7186425bfe2022b7da6961d4dd6a61e81d03aba` |
| 107 | `theorem` | [lastFun_of_subtype](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/lastfun-of-subtype.md) | 721 | `result-track:8a47815445bbcb7743a201e5b46f5d150132e0853c7c72f144f0daca3a95b5be` |
| 108 | `theorem` | [dropFun_RelLast'](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/dropfun-rellast.md) | 728 | `result-track:3bd6b92476d04713b0288ff7eb6f87127b4aa57ff8792a1acc49f8c37296b3c7` |
| 109 | `theorem` | [dropFun_prod](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/dropfun-prod.md) | 738 | `result-track:30c1fe7b737f01778403b0f021817398744e0530fb943cfef535891378f6c1a1` |
| 110 | `theorem` | [lastFun_prod](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/lastfun-prod.md) | 745 | `result-track:9e971fbaedb42d0e48c35d76dc8f8b8f433b84e266405829f9838382dd824bdc` |
| 111 | `theorem` | [dropFun_from_append1_drop_last](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/dropfun-from-append1-drop-last.md) | 752 | `result-track:7749d069f692bed4238f61609e998f23b8cabb351693b8cbba86dd0dc3446524` |
| 112 | `theorem` | [lastFun_from_append1_drop_last](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/lastfun-from-append1-drop-last.md) | 758 | `result-track:2bfdb7399288cb902c4cde10f762e17d232e144ced475513e49b44151d928d6b` |
| 113 | `theorem` | [dropFun_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/dropfun-id.md) | 764 | `result-track:dda647f700041a939e99e869a1613f401d985aaea183b68dfc81b11e814fc027` |
| 114 | `theorem` | [prod_map_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/prod-map-id.md) | 769 | `result-track:1ee4bd4d8f24329fd2af42568ac6cd97b1fcc173b1fe39685af570aa4a320077` |
| 115 | `theorem` | [subtypeVal_diagSub](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/subtypeval-diagsub.md) | 778 | `result-track:86c7a3ead7647f78d0bccd772acfb19a8c7965d79fee6e5327b6d78575fa3b79` |
| 116 | `theorem` | [toSubtype_of_subtype](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/tosubtype-of-subtype.md) | 788 | `result-track:a56c5650bbcaa16d1dfc234de1955d192f1a83cd15b571b0535ac344b4b16916` |
| 117 | `theorem` | [subtypeVal_toSubtype](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/subtypeval-tosubtype.md) | 796 | `result-track:a9c42bfab2013294cd396417a048ac46df2df499534c3c8bf147dc7dfb01aa92` |
| 118 | `theorem` | [toSubtype_of_subtype_assoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/tosubtype-of-subtype-assoc.md) | 804 | `result-track:ccbc421b5f7a3d40d953f74884e0fd1488d6d81069475f3434fe21ee9d0fab4a` |
| 119 | `theorem` | [toSubtype'_of_subtype'](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/tosubtype-of-subtype-source-edition-2.md) | 811 | `result-track:b4f3e46454ae2cda9db61426797f7a2c03859cd19485b8e859e14e1b3763a869` |
| 120 | `theorem` | [subtypeVal_toSubtype'](../../../../../../ComputerScience/TheoryOfData/DataStructures/TypeVecAligned.lean/declarations/subtypeval-tosubtype-source-edition-2.md) | 819 | `result-track:ff896df23c31c9a13f09d7712c1fabc2b61b3771fbf9d7e147f75bb79bafddbc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1515a85a7a51cd6ccab8a7c1ffb3017140ec7e0e4d60e355f1c289dba4d099a6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeVec/Variantcbf7d0ee81331edea7eceec140efe59dbe7e62a1ef6f1343a95b4d2e9d8b5220.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeVec/Variantcbf7d0ee81331edea7eceec140efe59dbe7e62a1ef6f1343a95b4d2e9d8b5220.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
