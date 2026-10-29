# Verification target: Cau Seq Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4bb9b5b0db3a0ea03633e1ec0f31c637deec59f2",
  "lexical_observation_count": 151,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant168afdb165f5ee52e06bd48209e8bfc73f3a85659d4a8ee190f25422b2092a6e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4bb9b5b0db3a0ea03633e1ec0f31c637deec59f2`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant168afdb165f5ee52e06bd48209e8bfc73f3a85659d4a8ee190f25422b2092a6e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant168afdb165f5ee52e06bd48209e8bfc73f3a85659d4a8ee190f25422b2092a6e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.AbsoluteValue.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.MinMax` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Pi` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Setoid.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Ring` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rat_add_continuous_lemma](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/rat-add-continuous-lemma.md) | 45 | `result-track:9b0c62ac7a91000fa37ab074fc5a719419154dbbb518653ed0ecaed86a127054` |
| 2 | `theorem` | [rat_mul_continuous_lemma](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/rat-mul-continuous-lemma.md) | 52 | `result-track:7fbf10bcdbfb9962ef8e716da777c630d5e08d059c54e060ffb93ec9cc93a25e` |
| 3 | `theorem` | [rat_inv_continuous_lemma](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/rat-inv-continuous-lemma.md) | 67 | `result-track:0ba9aec0e328e6c2c3800cbda726db37e5902dedd8431444962479dae393361d` |
| 4 | `def` | [IsCauSeq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/iscauseq.md) | 84 | `declaration-track:4aa00873fb2b12f27a03b82a79311c0c5de2874fb434295931f2de71a1cc8602` |
| 5 | `theorem` | [cauchy₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/cauchy-source-edition-3.md) | 96 | `result-track:10a02556f519460462e9d158a3d43991a73571644f1ce5cccf141b10eeae3e02` |
| 6 | `theorem` | [cauchy₃](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/cauchy.md) | 103 | `result-track:04c7c091cb8545e513f8f6230152f60ca27b884a0fa5a23fcf477bc8f3b8a447` |
| 7 | `lemma` | [bounded](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/bounded.md) | 108 | `result-track:1bdf6e8aa11355d3fff94e315caee05969c7806dd47fe3893f9ea4b8f57a7b50` |
| 8 | `lemma` | [bounded'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/bounded-source-edition-3.md) | 121 | `result-track:96f84a9c64f337c5ee59694267272dfe696445c38db08914869f7115b481172f` |
| 9 | `lemma` | [const](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/const-source-edition-2.md) | 126 | `result-track:cb7d72355ef751c08b2cf9ee80cc9f458f69d287287a5f54dd1ac17bb8d368b8` |
| 10 | `theorem` | [add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/add.md) | 129 | `result-track:eef0b7d3121f2e2dd9ec9572a7eb15c6926ce09a97056264edcc868e321ff06c` |
| 11 | `lemma` | [mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/mul.md) | 136 | `result-track:73ccb0804348ce67a6ee1b5345772ea8b741acc98bc97c65596699a6404cdb09` |
| 12 | `lemma` | [_root_.isCauSeq_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/root-iscauseq-neg.md) | 145 | `result-track:cfc4194bd1d09973e1bba8035e9849ebd0606c880522da2e3a6fd2a0cec231d3` |
| 13 | `def` | [CauSeq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/causeq.md) | 154 | `declaration-track:479a891b385440aa3669b6874d024fea34a8537e48387b73d6eeab010340ef53` |
| 14 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/instance-source-edition-12.md) | 166 | `declaration-track:7d6ed51907d10c819f2346d39c0b539c5023d336b3964d09578cf7f3126d20e1` |
| 15 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/ext.md) | 170 | `result-track:3ef21a508dee52567265f03b03cbb000fe3c27b58478e43bd71f3b0d55ba97c3` |
| 16 | `theorem` | [isCauSeq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/iscauseq-source-edition-2.md) | 172 | `result-track:631385c0069a45996776142cc89a4702934e4be3fa80d62d58ad91a5ebfd9cde` |
| 17 | `theorem` | [cauchy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/cauchy-source-edition-4.md) | 175 | `result-track:783806c3f33a4be63d57933038fc82b9024cfe4d66afe460bd77c4e777ca01a6` |
| 18 | `def` | [ofEq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/ofeq.md) | 179 | `declaration-track:c1529cdce9e6b85bf2d5652c10656f9a9a3246c764aa8219929f6f3c4d270d5d` |
| 19 | `theorem` | [cauchy₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/cauchy-source-edition-5.md) | 186 | `result-track:f404a2b70dfdf89322e2cfad8c92a1c3b59ba8c12c95ddbbf496664798c26334` |
| 20 | `theorem` | [cauchy₃](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/cauchy-source-edition-2.md) | 190 | `result-track:06ea10b02003799a93e015306e6c0cf068728c92bb2d6b282ef259fbf095540e` |
| 21 | `theorem` | [bounded](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/bounded-source-edition-2.md) | 193 | `result-track:50fc2e07424b45dc664e3f104ac31770032003523b2f11f1ef6c0674f173b08c` |
| 22 | `theorem` | [bounded'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/bounded-source-edition-4.md) | 195 | `result-track:d2de8d11c5d28c725a3df7f6f86048e3a7f113c8365ab5155234db3d2fbae980` |
| 23 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/instance-source-edition-2.md) | 197 | `declaration-track:1ff4f2ad962c2d842f6fea392af95501259190dcb515574fe8fb2d38f305a252` |
| 24 | `theorem` | [coe_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/coe-add.md) | 201 | `result-track:65396d111420bbe951f78b4b8bb97b4e96918555e1d130a67d20f73d66b69704` |
| 25 | `theorem` | [add_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/add-apply.md) | 205 | `result-track:5ee77bf814efb8fddbb2a6bb6c9e71b480d00ed780fd2081558a124e88f104d3` |
| 26 | `def` | [const](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/const.md) | 210 | `declaration-track:92b3bffd138f7e61f41a8a59dbc2b7726efc91e566703b9f1c2e01e2fe205ca6` |
| 27 | `theorem` | [coe_const](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/coe-const.md) | 216 | `result-track:e1513f9b153441b9cc362a6f78887182a2c8febec9731bde667048bb81fb262d` |
| 28 | `theorem` | [const_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/const-apply.md) | 220 | `result-track:d96f7f870e90da1033d2802bf47f0eb150e7c56304fdcbb1f714a6b75995a274` |
| 29 | `theorem` | [const_inj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/const-inj.md) | 223 | `result-track:e06a48959a252e31fe2b044df76621a93a568580c5786d7633d84b1075eaeaf7` |
| 30 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/instance-source-edition-5.md) | 226 | `declaration-track:352a6eaee23bcf8029d8464b6b8e013f49dd0cc9d28f32f68d2530ce3d975661` |
| 31 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/instance-source-edition-6.md) | 229 | `declaration-track:61c1c274672e9513ad58d1bd93265524e302351f0ff5d30505e25271c13c48f3` |
| 32 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/instance-source-edition-10.md) | 232 | `declaration-track:6e583c7e886532bdd0aab728dba17a6c4d7fb23f6a5fd028c4b43a79ca10717f` |
| 33 | `theorem` | [coe_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/coe-zero.md) | 236 | `result-track:5dcd9db2a59c48578cfd993482803716d3d30f80d617962d1b507b7ed8a7cdbe` |
| 34 | `theorem` | [coe_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/coe-one.md) | 240 | `result-track:c3ff50aec6725c9266f2a1f06bb647328c1f4fad25a9a71b5db19806940082a6` |
| 35 | `theorem` | [zero_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/zero-apply.md) | 244 | `result-track:5bb98090c332d93c2af1024572afca82dc2542c7dfbfe468369e861a9fccf964` |
| 36 | `theorem` | [one_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/one-apply.md) | 248 | `result-track:7d6479a441b3a2258c4c97c65ef2a1ca34e845351d7c1e04d91c0111f1d04981` |
| 37 | `theorem` | [const_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/const-zero.md) | 252 | `result-track:612eabcc118439df6b9b3a8fc0b279f2eb32e8f7d7b91dad9ae51802f7a2c092` |
| 38 | `theorem` | [const_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/const-one.md) | 256 | `result-track:f8d0c0b3ff3d63dad2fe698a4ac90fa08ca6b4697bd53f140488fa986eabbc87` |
| 39 | `theorem` | [const_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/const-add.md) | 259 | `result-track:cb4bb9137c1264bf5bc75f8315ee57403f2a62ebf1d7b3c25a5ca884c879a5ab` |
| 40 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/instance.md) | 262 | `declaration-track:1111c9604c2279df5808964b562f3e9270f9335eeaee74dc8f3f5699ca70f567` |
| 41 | `theorem` | [coe_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/coe-mul.md) | 265 | `result-track:77df461ce6c94d9cfc89e24f1c399bd989c9ee9ec8a2e6d7e1c896120d03f221` |
| 42 | `theorem` | [mul_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/mul-apply.md) | 269 | `result-track:b9937d80e1555b1da58f4bb505a78448a4c833c1170bc6d7c474e348ae1fb8d4` |
| 43 | `theorem` | [const_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/const-mul.md) | 272 | `result-track:dad395a24cb749ba42146accb99494285d400041d19da14af23f1ffc7d18c32c` |
| 44 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/instance-source-edition-8.md) | 275 | `declaration-track:636dc1570083012922b0cd054a35c342265e154f5d9401f732f318022cb1b482` |
| 45 | `theorem` | [coe_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/coe-neg.md) | 278 | `result-track:d48b5d65b9223ed051df08f70eff7eb3e225df800fb1380e9cadd4d57d387e3b` |
| 46 | `theorem` | [neg_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/neg-apply.md) | 282 | `result-track:1c30935cfbf1fc961141582c15c00ea6d478d7923dc2fb68cd1cab5cf74a413f` |
| 47 | `theorem` | [const_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/const-neg.md) | 285 | `result-track:c13d7f77a26e95989f0b3236c06a6911266a54d4cf34715ffbdf98e517dc2500` |
| 48 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/instance-source-edition-11.md) | 288 | `declaration-track:72cf3a03d0a13848376016a84e1bdafa7046e52b7f54797eeedeb00dfffe5e89` |
| 49 | `theorem` | [coe_sub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/coe-sub.md) | 292 | `result-track:26de07ca400b647b636cfe118d27cb13d5f51a379cc6102313d0865c73852939` |
| 50 | `theorem` | [sub_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/sub-apply.md) | 296 | `result-track:52ee589501cae3a99a58228f42fd981ace0a584b50dfca45ee146e3e6ca12d6f` |
| 51 | `theorem` | [const_sub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/const-sub.md) | 299 | `result-track:36441cfeb6f84f2a8055421eaeee7b4c3774ea8e10fe1a16eccbef3d4841a9e8` |
| 52 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/instance-source-edition-13.md) | 306 | `declaration-track:a835a92b26e094901ead7b0deac9de30034f8b1f4fe9e7bc92d5342d6e984c8a` |
| 53 | `theorem` | [coe_smul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/coe-smul.md) | 310 | `result-track:a818a8c4643f2b1113128dc47302c07d2c250fb668cf2b09b608e8bb95172d70` |
| 54 | `theorem` | [smul_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/smul-apply.md) | 314 | `result-track:39b89e115fc8e21c80abc0c5838011183ba1792041a4b1e7e9055600068344d3` |
| 55 | `theorem` | [const_smul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/const-smul.md) | 317 | `result-track:0041419b94dee4ad80e835a9c3209ab59e6f9d16b20905c6a23ff7cf3ede886d` |
| 56 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/instance-source-edition-3.md) | 320 | `declaration-track:2118f52c501a911ee189ed0ef2667fb259461df266607839654f06291f67612d` |
| 57 | `instance` | [addGroup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/addgroup.md) | 325 | `declaration-track:51b3b17e12a4b951cf984b2a3a602cea305e9cb86837591b12eeed253f060886` |
| 58 | `instance` | [instNatCast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/instnatcast.md) | 329 | `declaration-track:122e21944b0be3dd276626c6e719bcef08cb770bdd42e7525dff28682889329e` |
| 59 | `instance` | [instIntCast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/instintcast.md) | 331 | `declaration-track:75e04c9195e45186fb0d6f4df13f914ed80313adebd6fbb09dda27f6b5e08453` |
| 60 | `instance` | [addGroupWithOne](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/addgroupwithone.md) | 333 | `declaration-track:b1149f3cae57b3884db8ba6763548b0b9ea219ccd262513b6473e5ee1db627b5` |
| 61 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/instance-source-edition-9.md) | 341 | `declaration-track:6e4fe403ed4a11b78cc62d7874c74ad478c20cd7d359c66425978cd7a5866a3a` |
| 62 | `theorem` | [coe_pow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/coe-pow.md) | 346 | `result-track:a43a0e7b0c5c22a29c4b702e6db19b286f1263199ebb8652fa5b56fd8e7fad3d` |
| 63 | `theorem` | [pow_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/pow-apply.md) | 350 | `result-track:3c715c57c422c1fad59198de9c80193c9464f9aef0846ce0151c72c11b6eb867` |
| 64 | `theorem` | [const_pow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/const-pow.md) | 353 | `result-track:a6762636373d8d14c2ecab74c13984e1b0cdab301c2dc40f5d4bc77cf43870ae` |
| 65 | `instance` | [ring](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/ring.md) | 356 | `declaration-track:a4c49a48d69db9c9822bcc439087b8f6c63b36bf78d6c0fce4a5e33f2768a3f8` |
| 66 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/instance-source-edition-15.md) | 360 | `declaration-track:c649519dbc219e78b328eed54c9148119a74e885e6f9c415dd6c857e5b1af2a2` |
| 67 | `def` | [LimZero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/limzero.md) | 365 | `declaration-track:6e74c6cc723119939529079fe360d30cc58ee0c2e389c7534e45c2311b19c437` |
| 68 | `theorem` | [add_limZero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/add-limzero.md) | 368 | `result-track:f6ade27b3ad6b060ac3a6d15baea76489303c10a0befec6cb145447f42fad173` |
| 69 | `theorem` | [mul_limZero_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/mul-limzero-right.md) | 374 | `result-track:b3be78123c15e3276a1e8003e021909111d2b7879eac4e78895041ac283cfb46` |
| 70 | `theorem` | [mul_limZero_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/mul-limzero-left.md) | 381 | `result-track:57639b6e444b96d2e2fe71eff579d239f9dd95cbfcad9bed72f508d5b0b2fce7` |
| 71 | `theorem` | [neg_limZero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/neg-limzero.md) | 388 | `result-track:3602ea64d84f84c30cc03d6ae9f8ef6ba5f8117e02e25c9274a87e95f4fb2552` |
| 72 | `theorem` | [sub_limZero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/sub-limzero.md) | 392 | `result-track:8592ef17bfa83856599a46e95ce6c20d94d4a568aa7e6ec71228c9b1a1fc84cc` |
| 73 | `theorem` | [limZero_sub_rev](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/limzero-sub-rev.md) | 395 | `result-track:4eeb91ce7aa46b846200dd19ef944036872fbf6130584ef23ae7d91317b9c61e` |
| 74 | `theorem` | [zero_limZero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/zero-limzero.md) | 398 | `result-track:0527cfad509324f46c0a73b78d9cac130beaef7e05c57d461f65ca0c622d8f51` |
| 75 | `theorem` | [const_limZero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/const-limzero.md) | 401 | `result-track:68e2cbc045e0e3afccbed5d4daa2574a0b43deb80ebca82b5c4bc73eb66dd2f3` |
| 76 | `instance` | [equiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/equiv.md) | 409 | `declaration-track:e10361d9ed04c46a39b5c60da7a42c84a7293c1698abb22992210efa37a28c53` |
| 77 | `theorem` | [add_equiv_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/add-equiv-add.md) | 415 | `result-track:3731dae88a07f77c3e8d5e8dbbb8a41b230d143319049e3afb64912034a7b9a1` |
| 78 | `theorem` | [neg_equiv_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/neg-equiv-neg.md) | 418 | `result-track:edebc3c27e002b9d7a7c4ea21626a0fd958b29d23f74edf193aa9510dc7cb9ad` |
| 79 | `theorem` | [sub_equiv_sub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/sub-equiv-sub.md) | 421 | `result-track:afb7fd8ead17179659f65be2074baaf63757c17f27cd8eb9b0a9535099f5e96d` |
| 80 | `theorem` | [equiv_def₃](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/equiv-def.md) | 424 | `result-track:4147cca9baf20877a53000878e544fc81e87e6721dfe5bbfc558613962b2a7a0` |
| 81 | `theorem` | [limZero_congr](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/limzero-congr.md) | 431 | `result-track:b1ec814042d76210f06ef6610e4a7938b593e479982c7920e10e3f3951a1d244` |
| 82 | `theorem` | [abv_pos_of_not_limZero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/abv-pos-of-not-limzero.md) | 434 | `result-track:08c704a7de4e42062e602b924978508bc8c212a932ec1af5ab2de7bb440f142e` |
| 83 | `theorem` | [of_near](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/of-near.md) | 448 | `result-track:5bebdebb96d895c869b72bce0985025660ac4cefe5559f4a790a876730595fde` |
| 84 | `theorem` | [not_limZero_of_not_congr_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/not-limzero-of-not-congr-zero.md) | 458 | `result-track:6dd2e88feb768e7ad90effd53fcc0d8d74799f24fa9212f595c57aaceed8c024` |
| 85 | `theorem` | [mul_equiv_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/mul-equiv-zero-source-edition-2.md) | 463 | `result-track:9c981d1e94c86c7c9ee3fd772d28205c6329f9398ff91796a972233971024ffd` |
| 86 | `theorem` | [mul_equiv_zero'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/mul-equiv-zero.md) | 468 | `result-track:3e0294d0c1eb4f29ac296eb6f31d63649bde9b80f94bde5e3cb861d8911f876e` |
| 87 | `theorem` | [mul_not_equiv_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/mul-not-equiv-zero.md) | 473 | `result-track:92f789d9c12605dd6f947f317f40c9386c5090d019f971cfdfbbd3b70541199a` |
| 88 | `theorem` | [const_equiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/const-equiv.md) | 491 | `result-track:ce5dd34cdaee7b45cc1d290a794fcdf35ba08b417aa5f3c73c3cbfa36f6f9834` |
| 89 | `theorem` | [mul_equiv_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/mul-equiv-mul.md) | 494 | `result-track:25ec60c4e3b821e447a2919b16a40b3bf01effefb6965a014dd03a917c4c9729` |
| 90 | `theorem` | [smul_equiv_smul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/smul-equiv-smul.md) | 499 | `result-track:2abec94380b53c2e6f0300a7e04d8d65f3dd2bba8348d90cd525180133db7c84` |
| 91 | `theorem` | [pow_equiv_pow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/pow-equiv-pow.md) | 504 | `result-track:535ffb18c2881dfd8d6840a666dc88cd8a6fe0e9d13447e2fa31146b36ebc944` |
| 92 | `theorem` | [one_not_equiv_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/one-not-equiv-zero.md) | 515 | `result-track:92eed7171e854606f8cfc2b3e4a7c8d5871e0c8b19ef02b2eb855bfa0ab036f1` |
| 93 | `theorem` | [inv_aux](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/inv-aux.md) | 531 | `result-track:043898feb92eefe63c7822adf2b3d9685a9d0030f43a6add70d574972992ffe0` |
| 94 | `def` | [inv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/inv.md) | 543 | `declaration-track:8157eab0fea83fc2584530f77849925307590186b0730dd987f1657776d65c22` |
| 95 | `theorem` | [coe_inv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/coe-inv.md) | 547 | `result-track:e18e297a74bf36ec342c14971a315b7fa24aeaafd60d75560b3b92db2942d9d4` |
| 96 | `theorem` | [inv_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/inv-apply.md) | 551 | `result-track:d4eb3e60765bd7b8034d12eb9d0e3d62f468cbb747ba0316cb728cb5f80c9e74` |
| 97 | `theorem` | [inv_mul_cancel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/inv-mul-cancel.md) | 554 | `result-track:48561cb0b6766fb2f0456fc29eb42ae6df7beb01fdbfd862e209b2bd98a87cf2` |
| 98 | `theorem` | [mul_inv_cancel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/mul-inv-cancel.md) | 558 | `result-track:fb085e34d2b2fb527ec6e88a85ada5c8280cbd60571d2320cbef39a17b519e54` |
| 99 | `theorem` | [const_inv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/const-inv.md) | 562 | `result-track:259347d52fa6b24dfedd1617d051dc6fe173764c6171b7eb79b531ff0622218c` |
| 100 | `def` | [Pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/pos.md) | 574 | `declaration-track:460109464cefd5f82cc61250c187e978793a6b4be70d9d8c13839ade91e1a280` |
| 101 | `theorem` | [not_limZero_of_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/not-limzero-of-pos.md) | 577 | `result-track:6db4b56d6342b74f854a3d41e8358957c95101afa11c5b7531d2134653cb27fe` |
| 102 | `theorem` | [const_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/const-pos.md) | 583 | `result-track:fd23eab4aec13d2317d6ce4429cac1e7bf02ec7aa3af28b7ba5109a45ed1c7ac` |
| 103 | `theorem` | [add_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/add-pos.md) | 586 | `result-track:f13cbb4091891746467f2f6768dcc9fbdd7192ec2c8a786fe743572ba207ea1a` |
| 104 | `theorem` | [pos_add_limZero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/pos-add-limzero.md) | 593 | `result-track:81e99ae661c91bfc4adb0f4278f3e56e15cdf43c4dea8711752a324b2a240b14` |
| 105 | `theorem` | [mul_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/mul-pos.md) | 601 | `result-track:e07816c5b4f51da478a58762d11d81afa96729f64a2edba4febdbf18f2cd4e07` |
| 106 | `theorem` | [trichotomy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/trichotomy.md) | 608 | `result-track:d44b2fd583e47cd5ba10c4862504b7bf926aba6f39fa5862ab8c75015c23d0f3` |
| 107 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/instance-source-edition-4.md) | 626 | `declaration-track:34a01cd85ec96932283393be865985dbe32be1a0605b893a44f7e31b302a0f6b` |
| 108 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/instance-source-edition-16.md) | 629 | `declaration-track:e7705e699a0043256611d4c7b1dfa140fd1572878ccb275f2cd5a17f4318e18a` |
| 109 | `theorem` | [lt_of_lt_of_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/lt-of-lt-of-eq.md) | 632 | `result-track:1d227a0c4d8c6f2e0224a4e47098bb8a75a16d9feba460178197e3fff7489bc8` |
| 110 | `theorem` | [lt_of_eq_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/lt-of-eq-of-lt.md) | 637 | `result-track:5871f9e35b4ed7b1efb61e786f8e758ba063acd8ba090e3374e68d9fdd9d38e1` |
| 111 | `theorem` | [lt_trans](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/lt-trans.md) | 641 | `result-track:fc88144e6df06834e5e47732c9981a5318073c447813467851d781f07645ecb1` |
| 112 | `theorem` | [lt_irrefl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/lt-irrefl.md) | 646 | `result-track:d3e21a27e9f02c7da6e5668487a919f5c7d8e27e6874d271c6833a44ad6c09b6` |
| 113 | `theorem` | [le_of_eq_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/le-of-eq-of-le.md) | 649 | `result-track:c43f657b52a2438fd57810e6f4a967864a2bd757b90e6e283437770fb6583108` |
| 114 | `theorem` | [le_of_le_of_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/le-of-le-of-eq.md) | 652 | `result-track:d3a436c801c0c0add19c09f086db94cab48a150830f5a16af82999f4933a5d8f` |
| 115 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/instance-source-edition-14.md) | 655 | `declaration-track:b6c28d79814786428d59ec5a41d65e05523040a2a303e0763e03ec6b6d6adf5d` |
| 116 | `theorem` | [le_antisymm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/le-antisymm.md) | 669 | `result-track:24b16d2b0b6c0638cb580dd1e97a6656ca884ad178a607361b9d392ac30a14fc` |
| 117 | `theorem` | [lt_total](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/lt-total.md) | 672 | `result-track:7f3c92bffc9eccf85612c151790998262053b35b863071c3e89c1d70cce9064c` |
| 118 | `theorem` | [le_total](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/le-total.md) | 676 | `result-track:0b8ce945799a1f694b93350b60e4a68087f59b3f6d877774a7e1dffc0f532ab5` |
| 119 | `theorem` | [const_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/const-lt.md) | 679 | `result-track:5ebd45f275a898ebb10683b7625c3f553eda806a63f1c1dc30437e143c755c63` |
| 120 | `theorem` | [const_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/const-le.md) | 682 | `result-track:c009d6241d828bf79833e2a1fda9e45fe31b2c269ae4ead9f158e5814948f968` |
| 121 | `theorem` | [le_of_exists](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/le-of-exists.md) | 685 | `result-track:ae41d86aab3ceb76ec7e6a3ded6806f5b3357019e4b56baac52e8672a2b7e689` |
| 122 | `theorem` | [exists_gt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/exists-gt.md) | 693 | `result-track:efbc96c40fcf9c38c4482943358820fdfbd3be1fc0d968cb10f2dbee3cc42cef` |
| 123 | `theorem` | [exists_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/exists-lt.md) | 699 | `result-track:a89e7cf2281e577f3a2145c20f3803ba063cd0ac5089a77585000c50acabd619` |
| 124 | `theorem` | [rat_sup_continuous_lemma](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/rat-sup-continuous-lemma.md) | 704 | `result-track:6099ca7012199b091d64fa27912b4e06468e0c1deb81957905032d681ffcbe6b` |
| 125 | `theorem` | [rat_inf_continuous_lemma](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/rat-inf-continuous-lemma.md) | 709 | `result-track:2ec2a0f5f0d72cd07346ed5f93a527f785048d75e9eaeced574fbd31bec633f7` |
| 126 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/instance-source-edition-7.md) | 713 | `declaration-track:6312d800a49ebc4634074e93c8d996220ea103622359771dcbd66823cea99d5f` |
| 127 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/instance-source-edition-17.md) | 720 | `declaration-track:e98d36c417100eb91dbd4c20c16f2d408ffdaf03430953017af0f2972bea871d` |
| 128 | `theorem` | [coe_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/coe-sup.md) | 728 | `result-track:c6266bc323598d682087b4fb195a4abe71edf9354fe4965d43d283fbf77d7055` |
| 129 | `theorem` | [coe_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/coe-inf.md) | 732 | `result-track:e1feb3cb191781721b33ee3437310b7eb31009b15042d72cf9ce15f1c6101f2f` |
| 130 | `theorem` | [sup_limZero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/sup-limzero.md) | 735 | `result-track:e7c480e35e7c8fa61488231d04f581496ddfbdcb47c991e74da292b2fe026553` |
| 131 | `theorem` | [inf_limZero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/inf-limzero.md) | 742 | `result-track:6538b26f0e64ab73cea5f848cd20ccd67f52f56ffd16e19e59a8b44f1240a7dd` |
| 132 | `theorem` | [sup_equiv_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/sup-equiv-sup.md) | 749 | `result-track:a67ac3b5a1e3cf304d363246abbd6ac3ab6fa6bec7b00f7ff5050a2c930c7eb3` |
| 133 | `theorem` | [inf_equiv_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/inf-equiv-inf.md) | 759 | `result-track:418124a6778d98a0f957cc3d1168de0309b928dc25f459ce31edcae52fd2da3b` |
| 134 | `theorem` | [sup_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/sup-lt.md) | 769 | `result-track:7f0c505b1b29dfe2ff6aa8367443fc7bc09117cf2efe7741151e65031e6a4314` |
| 135 | `theorem` | [lt_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/lt-inf.md) | 775 | `result-track:b290214a590be18510f7cf2c98e2cf1bcb6c91090f95d89e464648c63e22132d` |
| 136 | `theorem` | [sup_idem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/sup-idem.md) | 782 | `result-track:39619552a3477da10a81a49e5239273641b1f87f63184c01e210b321ac42d84b` |
| 137 | `theorem` | [inf_idem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/inf-idem.md) | 785 | `result-track:65f4536e2418d065e83345d4a1cde5d5a6cc779728ba71a93d29c92a2bc001e4` |
| 138 | `theorem` | [sup_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/sup-comm.md) | 787 | `result-track:aa0b7692e619872f88b22617e534df8f01c26800264bc10376cdb92580a3551a` |
| 139 | `theorem` | [inf_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/inf-comm.md) | 789 | `result-track:8e6d610761a7e0fedf8d032834c2a949413ab2c629f122d914ef1905066a5655` |
| 140 | `theorem` | [sup_eq_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/sup-eq-right.md) | 791 | `result-track:5fd98aca25b55d15898590cf0b65a03ee927e5bd124aaeb4b12773e49539512a` |
| 141 | `theorem` | [inf_eq_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/inf-eq-right.md) | 803 | `result-track:3bf4a1176de538b04f380dca8eec6afcba1d9fb3abf732dfb6f9e7d873166579` |
| 142 | `theorem` | [sup_eq_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/sup-eq-left.md) | 814 | `result-track:413b1178125c42afef311edca97e057bf4e3501eee7875cd316c521a523b6683` |
| 143 | `theorem` | [inf_eq_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/inf-eq-left.md) | 817 | `result-track:2f2d52651c51025becc9ef19720f0fe3492ee647eecf50c55b9302c1ec0d36fa` |
| 144 | `theorem` | [le_sup_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/le-sup-left.md) | 820 | `result-track:a1a00558e2a0cb492565a69f2a62c87ef9b8bb4a71052da569ff67a339febf03` |
| 145 | `theorem` | [inf_le_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/inf-le-left.md) | 823 | `result-track:15486ea8b4da1d90d8e62693124c67e89d7575cb79db41f5278fb5addfb043d2` |
| 146 | `theorem` | [le_sup_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/le-sup-right.md) | 826 | `result-track:77ca8608ed3831ccf31d2eca20cc8bbf0a780249f87a4e47adfd68b5886da892` |
| 147 | `theorem` | [inf_le_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/inf-le-right.md) | 829 | `result-track:839bc350c082425c5b46dd4b4219f39d76bf4515552b37566731f1fba83ee4b8` |
| 148 | `theorem` | [sup_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/sup-le.md) | 832 | `result-track:589c8378220fcba57b42ec493b057c2ba3e73e88a245a575943015840a834a72` |
| 149 | `theorem` | [le_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/le-inf.md) | 843 | `result-track:d28d75777be5be418286f23bc4d62b91d4369ef2d4cda3415425be514e8a6118` |
| 150 | `theorem` | [sup_inf_distrib_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/sup-inf-distrib-left.md) | 857 | `result-track:da857f71ca89e21e924be8d2154e33dbca74d7ab238d58457a56677b06d6c7c4` |
| 151 | `theorem` | [sup_inf_distrib_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/CauSeqBasic.lean/declarations/sup-inf-distrib-right.md) | 860 | `result-track:6d3cc28b1e1b5b0b3375850e199ef7efa646322d0fb8589121c6ed6929389e4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1a7dff2dff166e0fccea05e044f15e077f36cf4a83b76bbfcab4e2b4ab8347f2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant168afdb165f5ee52e06bd48209e8bfc73f3a85659d4a8ee190f25422b2092a6e.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant168afdb165f5ee52e06bd48209e8bfc73f3a85659d4a8ee190f25422b2092a6e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
