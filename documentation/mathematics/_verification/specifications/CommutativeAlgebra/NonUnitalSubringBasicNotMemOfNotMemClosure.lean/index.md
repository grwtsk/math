# Verification target: Non Unital Subring Basic Not Mem Of Not Mem Closure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da1c88454e7583b1e58fafb99481ab694d1f41cb",
  "lexical_observation_count": 116,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant8bd7c6bec0d4117b4a60eef18f1bcaa721c9b2d0070d8f7371177a86d38d5d9d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/index.md) · [Full source](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da1c88454e7583b1e58fafb99481ab694d1f41cb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant8bd7c6bec0d4117b4a60eef18f1bcaa721c9b2d0070d8f7371177a86d38d5d9d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant8bd7c6bec0d4117b4a60eef18f1bcaa721c9b2d0070d8f7371177a86d38d5d9d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.BigOperators` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subsemigroup.Center` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.NonUnitalSubring.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.NonUnitalSubsemiring.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [list_sum_mem](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/list-sum-mem.md) | 78 | `result-track:8d7e938e66e4458b2019a4367bc7816a35d72e033dd36de7e3e42aac37a968c2` |
| 2 | `theorem` | [multiset_sum_mem](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/multiset-sum-mem.md) | 83 | `result-track:8d942e86b76739b4d2c04c7bd8aa0d2b4c23c1bb0f0976a048379ba8ac467df6` |
| 3 | `theorem` | [sum_mem](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/sum-mem.md) | 89 | `result-track:5a20d4df46cce33b3967ee47149a776dec7c64f42aa770aa13ca2d3745682e2f` |
| 4 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/instance-source-edition-4.md) | 97 | `declaration-track:726f6de2471bde508d8462a8e630304884ae1e337b0a03e6004ce9a743c12109` |
| 5 | `theorem` | [mem_top](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/mem-top.md) | 101 | `result-track:8fe4048b4fbc2e0387c87b709b8c1a278d05e81e07d0a67707525b563478b29b` |
| 6 | `theorem` | [coe_top](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/coe-top.md) | 105 | `result-track:489e0a8cadb50efcad0fb7de3f76f7171a727d8be2fdf9cd0d1f8e67fb5a57cc` |
| 7 | `def` | [topEquiv](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/topequiv.md) | 110 | `declaration-track:f6cb2911eca2bae06678bc8ec5597850c80310cf0447b18ab908652cd4927e78` |
| 8 | `def` | [comap](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/comap.md) | 128 | `declaration-track:e71b56a8571137f96a7d2effb14530c3f8f6c51dc98fe7eeec374cdf96d55608` |
| 9 | `theorem` | [coe_comap](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/coe-comap.md) | 135 | `result-track:3f657d13b121742d8d269675cb6ff66db7da28b6036811188e1b195a5166d0de` |
| 10 | `theorem` | [mem_comap](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/mem-comap.md) | 139 | `result-track:a4580c6a4d6aee0426b5d110ce1b1bff3aba9a50f110f0a52983a83edd8107de` |
| 11 | `theorem` | [comap_comap](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/comap-comap.md) | 142 | `result-track:eab7b2098b4fd0a164f2c0bdbb2b9a085c1532b3a62874787efb21473382e8d3` |
| 12 | `def` | [map](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/map.md) | 149 | `declaration-track:43f6fa7578e865501d3ebb2f6e1f9ef79549a92e5f7b96e7605dfd7795b8a855` |
| 13 | `theorem` | [coe_map](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/coe-map.md) | 156 | `result-track:5e9351fb41bb230b2d966dbff1a3e2ce9f47a61512453f42a542b0fc2af79789` |
| 14 | `theorem` | [mem_map](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/mem-map.md) | 160 | `result-track:24e68909fdda5b8f412d31bac3ade9b676044b95631d51abbed2de52a4dfc9f6` |
| 15 | `theorem` | [map_id](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/map-id.md) | 164 | `result-track:76a351067c34167691d8a5336661fd51d195fc2c6c57bf2535f2568d186c5f17` |
| 16 | `theorem` | [map_map](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/map-map.md) | 167 | `result-track:b8243d297cbc71407c4afdd9b9eadb6f6aaa06c5fb93631e7fccdbc2c264b6a2` |
| 17 | `theorem` | [map_le_iff_le_comap](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/map-le-iff-le-comap.md) | 170 | `result-track:6d07c0cf3c7e0ec802a703ec96c6d1a0855ead73dfb372aedf510bb6e4043385` |
| 18 | `theorem` | [gc_map_comap](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/gc-map-comap.md) | 174 | `result-track:309c56cb83c0ef7edba9d5cb7aa2a670f9063dafc9a691a7ac218ae37173bcf9` |
| 19 | `def` | [equivMapOfInjective](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/equivmapofinjective.md) | 179 | `declaration-track:47633180cb5d00abe59f539c38c72e81c65e9042ecd3ca10ff19ebd295973eb9` |
| 20 | `theorem` | [coe_equivMapOfInjective_apply](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/coe-equivmapofinjective-apply.md) | 188 | `result-track:ff2919d7d62f555230cbb2216b77a332143c006f7de53c5b60723c55270e0dfd` |
| 21 | `def` | [range](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/range.md) | 204 | `declaration-track:4aa42e2d866f32d4fda718536d3caf3fae0ec5dbdb800abbf2cb14e66808755b` |
| 22 | `theorem` | [coe_range](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/coe-range.md) | 209 | `result-track:ca29f346882d98de8287424ab73968e050b02c2ff21e7cca2e34d11a0e364268` |
| 23 | `theorem` | [mem_range](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/mem-range.md) | 213 | `result-track:102e274fa8348ebf35bace1fcf99a86c3088d21fb9ef168120a533eb29c519ec` |
| 24 | `theorem` | [range_eq_map](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/range-eq-map.md) | 216 | `result-track:a9a78b20fad634638f66347ca010a57d8fbb7272edb30fd90fb8251b46854722` |
| 25 | `theorem` | [mem_range_self](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/mem-range-self.md) | 218 | `result-track:caf9cacad9ec2388b2a0f19556b814b8989f3f89c0bf48dbe8959e963a6ebc27` |
| 26 | `theorem` | [map_range](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/map-range.md) | 221 | `result-track:f3af3ca8517ebcb22d6cb413def9ab3f61926966e0d406fe2e4eeab350bfd428` |
| 27 | `instance` | [fintypeRange](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/fintyperange.md) | 227 | `declaration-track:05837b42906c4e3d29512f722812064890d851cee2ae972b8feeef4f2c3334c9` |
| 28 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/instance-source-edition-5.md) | 241 | `declaration-track:e29bbf247dd0383c96ecdc6a1bac58b2e2084df04002966d86cfcf4ab871921d` |
| 29 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/instance-source-edition-3.md) | 244 | `declaration-track:69efba0476ddd877d8252105ac5f9090793b1265a56a7361bbca26f0dead5098` |
| 30 | `theorem` | [coe_bot](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/coe-bot.md) | 247 | `result-track:9eb88765f958c36661e437494f0f72d772ac6122458ef7d7ed656de44b63fadb` |
| 31 | `theorem` | [mem_bot](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/mem-bot.md) | 250 | `result-track:7fc110b79e824c0f6b891d623d3ef2e49336bbd961e8bcea571a4cfbb179656f` |
| 32 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/instance.md) | 256 | `declaration-track:5b9f84cd8b0a6bb8d201192fbccf3e5bc7e7e3fa09d07d039a7b23cc019a6ab8` |
| 33 | `theorem` | [coe_inf](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/coe-inf.md) | 262 | `result-track:9cda82b7f8878caee0daa5a70e1fc24b2d0216e94d72d1981d03398763400cfb` |
| 34 | `theorem` | [mem_inf](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/mem-inf.md) | 267 | `result-track:1fbcf94497ac012467fc9a10ec78da389f1044fabfb9a15d944ff07d08dccddd` |
| 35 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/instance-source-edition-6.md) | 270 | `declaration-track:f58733cf6e75e3b068e14a36a26d4277551fe18215cc69650946bf8e98a99fb8` |
| 36 | `theorem` | [coe_sInf](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/coe-sinf.md) | 276 | `result-track:b189e5a948c6c92ef5e03d0b1b02c4eda97b84c256ad65f4f39bf1e339ac420c` |
| 37 | `theorem` | [mem_sInf](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/mem-sinf.md) | 280 | `result-track:c308e24076184e6a1cc9a134eb4e4d9b09bf502a54ca369cc0a4e3cb3ee91c4f` |
| 38 | `theorem` | [coe_iInf](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/coe-iinf.md) | 284 | `result-track:ee3103b9be0adaed386f9fe0cf2d358d30a562b514595599bd8c8004d5a863e7` |
| 39 | `theorem` | [mem_iInf](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/mem-iinf.md) | 287 | `result-track:44a1902fcae7cabc7e89a1ac2682610dc4913a3b781a197e09d2d955d679c13c` |
| 40 | `theorem` | [sInf_toSubsemigroup](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/sinf-tosubsemigroup.md) | 291 | `result-track:e8b03ef75e480caa62f24a9e75794ee4d0804117d0d3618191e99b9d502dddd8` |
| 41 | `theorem` | [sInf_toAddSubgroup](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/sinf-toaddsubgroup.md) | 296 | `result-track:e59d8b7695607960628de0e4c1ea2f99f9437fef27fc266bda89f351ced568c8` |
| 42 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/instance-source-edition-2.md) | 301 | `declaration-track:5e85ed013bdfe6bfb8aa2fc6b2736f150c77018f00e96d5321c400616bd41887` |
| 43 | `theorem` | [eq_top_iff'](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/eq-top-iff.md) | 314 | `result-track:44b9985efe7550ae881a4f6337a8acfe9afd525bbef20f015fa5026734df4610` |
| 44 | `def` | [center](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/center.md) | 328 | `declaration-track:537f1878598f7e8fdf1cb136bf31220b90ab6dd9a4a6b2abc9c63107308f5266` |
| 45 | `theorem` | [coe_center](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/coe-center.md) | 332 | `result-track:548fd958a1468a30f9a546e670bf0af7e6511277a0e4090dcb50cc984b00de76` |
| 46 | `theorem` | [center_toNonUnitalSubsemiring](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/center-tononunitalsubsemiring.md) | 336 | `result-track:da8ec7a5af927130ebb1780c3fc25ba4a1fdb851467ffd0ff6f27712bade05c9` |
| 47 | `instance` | [center.instNonUnitalCommRing](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/center-instnonunitalcommring.md) | 341 | `declaration-track:24cfd0024052b20ab199ce6ce201cc3b21b0eeb1d3c00e6b889750f3a0a431c7` |
| 48 | `def` | [centerCongr](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/centercongr.md) | 348 | `declaration-track:b78a2eeceae61546e2ada6dd24ba1d4606f9dc80ac5aa3acc00a160d73c57b71` |
| 49 | `def` | [centerToMulOpposite](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/centertomulopposite.md) | 353 | `declaration-track:0d046436cb34ac1263e57909b0a8a5107d750b55b864c5906c3356a30ac91e74` |
| 50 | `example` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/example.md) | 362 | `declaration-track:271d989bf25102f33ef8903e911e6a31b268ae61c7c90751a07340a4a0104dd3` |
| 51 | `theorem` | [mem_center_iff](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/mem-center-iff.md) | 366 | `result-track:c642c2169c4edb81a44fd64a59e30558017d99e13f2296b8501e6e48b5b64918` |
| 52 | `instance` | [decidableMemCenter](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/decidablememcenter.md) | 368 | `declaration-track:2eeebed9c19cdca9997aba2bbb8c17046fb9ef70a78f2850d5792c487da4faa2` |
| 53 | `theorem` | [center_eq_top](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/center-eq-top.md) | 372 | `result-track:7a527c0caa8198712dbc434783d9d43af226fe42e0b57d8ad0cfefc1079e18ab` |
| 54 | `def` | [closure](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/closure.md) | 386 | `declaration-track:bfd25940d530afbe36648fe93867f1ee7ce3f5095a96ac6c618629448eb7e139` |
| 55 | `theorem` | [mem_closure](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/mem-closure.md) | 389 | `result-track:b2bfae047c4c09646fcbe5b17021df8d1d5f4aa8c2d687e854b8cf2476fcdff0` |
| 56 | `theorem` | [subset_closure](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/subset-closure.md) | 394 | `result-track:972f218523de4750985541908025bf1c0b732a0e9cb572245846dd752cc855dd` |
| 57 | `theorem` | [notMem_of_notMem_closure](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/notmem-of-notmem-closure.md) | 396 | `result-track:2eca73a192e1d3fde52b7db9594c2cee18137c65551b9e189303a6a2e150369b` |
| 58 | `theorem` | [closure_le](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/closure-le.md) | 403 | `result-track:76f3a4e0eba45d130c8aba6254648e1f0320325511d57571072b82d6095e5978` |
| 59 | `theorem` | [closure_mono](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/closure-mono.md) | 409 | `result-track:226ba342a9e596d57c0cff005ac4b1f59199d0f119ed31f4fcd969744990c535` |
| 60 | `theorem` | [closure_eq_of_le](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/closure-eq-of-le.md) | 412 | `result-track:9517dcc6720a476dbe2f4bc24495146946a8a1a65cf0ff7b1c57b2f11fc2c89a` |
| 61 | `theorem` | [closure_induction](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/closure-induction.md) | 420 | `result-track:61b90dcfa0890070e4c1f734c2a045f9e6b58c114acfaee59a4eb06fbe0d461d` |
| 62 | `theorem` | [closure_induction₂](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/closure-induction-source-edition-2.md) | 436 | `result-track:6d168407ba6903fb6b667de942d459b9c18392f5861b1fffd2db5d813a058e2e` |
| 63 | `theorem` | [mem_closure_iff](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/mem-closure-iff.md) | 459 | `result-track:d6598cd327008f7b3334ec7e2e5624d91c62fe8fac8c903aa41518dadbaa27ee` |
| 64 | `def` | [closureNonUnitalCommRingOfComm](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/closurenonunitalcommringofcomm.md) | 487 | `declaration-track:7a969093970bb0c715341938545b2492e49a885708ed318fcaae86947a682fee` |
| 65 | `def` | [gi](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/gi.md) | 506 | `declaration-track:892deacacac48126db01f9b8e565229eeae17d9c937943acbdc0b52c60a401f1` |
| 66 | `theorem` | [closure_eq](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/closure-eq.md) | 514 | `result-track:0191332fe5a784469b9e703cec2c356a4029f28080b87893a4409434e7494ab5` |
| 67 | `theorem` | [closure_empty](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/closure-empty.md) | 518 | `result-track:746675c56ff962a5c107f7b42648170fcf5b610f829912d2fe99892603dc609b` |
| 68 | `theorem` | [closure_univ](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/closure-univ.md) | 522 | `result-track:579c0254dca3c71d994f806171805541dce4c601e4744a62f4105420dd81a4e8` |
| 69 | `theorem` | [closure_union](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/closure-union.md) | 525 | `result-track:2f739e68fdeafa7e62784b85056c30845912161e47cd679a071110e393c6cba7` |
| 70 | `theorem` | [closure_iUnion](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/closure-iunion.md) | 528 | `result-track:50e2aafa3a1765fc60c5aeb119cc099652d8d2bac54d78de7b31677b5643eb16` |
| 71 | `theorem` | [closure_sUnion](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/closure-sunion.md) | 531 | `result-track:b73299acadcc40994c1cd85d1587d4c6b4e63004b44859d2f34c936dfe384b14` |
| 72 | `theorem` | [map_sup](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/map-sup.md) | 534 | `result-track:4601e6684547e5e333b638d9f0ff164b58f136c79b1b13008cf448e71bac81c8` |
| 73 | `theorem` | [map_iSup](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/map-isup.md) | 537 | `result-track:c9be0c58a865b1aa004649a95b6f183d699dedb10e1d17a1ecf1f6b983661031` |
| 74 | `theorem` | [map_inf](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/map-inf.md) | 541 | `result-track:4160eaad1bf248e4d3b53071e49dedf5830acee21c2833f5c357ddb2befbdb4c` |
| 75 | `theorem` | [map_iInf](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/map-iinf.md) | 544 | `result-track:91688f063ab3263a29be9d45e3d713e59c8b92c0a3fadc460394b0a1d6a728f6` |
| 76 | `theorem` | [comap_inf](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/comap-inf.md) | 549 | `result-track:4d369ae1a5526a0abb8d628f5680391204d0dc88181f3278afcefa7ce2ae72dc` |
| 77 | `theorem` | [comap_iInf](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/comap-iinf.md) | 552 | `result-track:33698b1910016f2e9f8cf85609a3ddf62f9c7ce86fa7614a5dab8a17ce96f567` |
| 78 | `theorem` | [map_bot](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/map-bot.md) | 557 | `result-track:abd556c7b334658d1b60c2764e87c51d52089def31dcae5b19002c437cf83028` |
| 79 | `theorem` | [comap_top](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/comap-top.md) | 561 | `result-track:9192df9bf01f0ac03b09d59213ab2cbfef8750312311ff77100908e912099acf` |
| 80 | `def` | [prod](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/prod.md) | 566 | `declaration-track:42d4ca51e41da8fc8f3a90a59f521cb8b0c7ed05a06c0a566037faba78114c4d` |
| 81 | `theorem` | [coe_prod](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/coe-prod.md) | 571 | `result-track:2ab6fad3cb4c159effdd0233234b311fa609ef7d93b4b4f16b6ee560a1fca546` |
| 82 | `theorem` | [mem_prod](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/mem-prod.md) | 575 | `result-track:7e5b403ec5d1df8857e8e640959c2a08a80638279b53c699dff5e33beb24ae07` |
| 83 | `theorem` | [prod_mono](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/prod-mono.md) | 580 | `result-track:004f6cf79ce7a66ec6403b6d3273a81f8537c408f2344ca263bedb93cfb075e0` |
| 84 | `theorem` | [prod_mono_right](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/prod-mono-right.md) | 584 | `result-track:4a6a5a00b45d0220a9f201246baaba0ae94eda160dd218802a328df474f87d05` |
| 85 | `theorem` | [prod_mono_left](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/prod-mono-left.md) | 588 | `result-track:792d2dbadabcfc1cea1e44ef4c2040571cfc406ef0495da24d6e3b4bc92e6f2d` |
| 86 | `theorem` | [prod_top](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/prod-top.md) | 591 | `result-track:8bacbb15a8b7ce5fc483af6cd760f5c013537a16abe10456c987a959de62b177` |
| 87 | `theorem` | [top_prod](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/top-prod.md) | 595 | `result-track:9b29102440d3deee82918d65227e91842097b59d5d214073f3b620ebb69d1a4f` |
| 88 | `theorem` | [top_prod_top](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/top-prod-top.md) | 600 | `result-track:69a67c325a23854df0837384e5cfdfcca4aff70f567fda7b978701e25fda9ee4` |
| 89 | `def` | [prodEquiv](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/prodequiv.md) | 604 | `declaration-track:0e0f905b6b6957333b73f4121bf2b0a9b4d71cb3a20c7427c986a92bba040066` |
| 90 | `theorem` | [mem_iSup_of_directed](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/mem-isup-of-directed.md) | 612 | `result-track:6fbaf804f37e0d8e66b9c27962bd59cf132c23051eac7183e81139b687a48e7b` |
| 91 | `theorem` | [coe_iSup_of_directed](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/coe-isup-of-directed.md) | 621 | `result-track:2c86eab5ab3b4c369abeab8849eb23073544b85dcae16086050cea0c201c50df` |
| 92 | `theorem` | [mem_sSup_of_directedOn](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/mem-ssup-of-directedon.md) | 625 | `result-track:3fe8122ee30f008546864ab6f01e92a1a7906fb24a31668d9a51a637e5d017f4` |
| 93 | `theorem` | [coe_sSup_of_directedOn](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/coe-ssup-of-directedon.md) | 631 | `result-track:bee93fc1c8445fc945d0363adbe35e8b346269d3d49325f3fe569f4a7909c2f3` |
| 94 | `theorem` | [mem_map_equiv](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/mem-map-equiv.md) | 635 | `result-track:2fba8994a31b3981cb9997973d73089aa9b3d369c6f5b923c3cb0775e8178d86` |
| 95 | `theorem` | [map_equiv_eq_comap_symm](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/map-equiv-eq-comap-symm.md) | 639 | `result-track:945f541bd26a9023eb63c701808c4d98e6356d00ab85bdbe6904e31aac8082ca` |
| 96 | `theorem` | [comap_equiv_eq_map_symm](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/comap-equiv-eq-map-symm.md) | 643 | `result-track:31cf56f6cbbab1df130314179c640809d12ffda96f525bbb5ffe8aa817a2287c` |
| 97 | `def` | [rangeRestrict](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/rangerestrict.md) | 659 | `declaration-track:3875547495ae1fb240ab9b113a699234f38d5cb3181577672c7c7cfd82e21364` |
| 98 | `theorem` | [coe_rangeRestrict](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/coe-rangerestrict.md) | 663 | `result-track:c25927df3a91a49cea1b51f6a7bda20d399ab0b9cb204a846bcd502f6c964086` |
| 99 | `theorem` | [rangeRestrict_surjective](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/rangerestrict-surjective.md) | 666 | `result-track:ecea6a048ba156ca34171d5522ee553243d6c36c66f7c46e545e5f1ae78eaae5` |
| 100 | `theorem` | [range_eq_top](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/range-eq-top.md) | 671 | `result-track:1d51124d981b309b19ccab5151b7b809a490d8e3f629407e0e722facd04556b8` |
| 101 | `theorem` | [range_eq_top_of_surjective](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/range-eq-top-of-surjective.md) | 679 | `result-track:2058f72b0463dd3bd03e1daf11b6412d6d91da2e2fb69189b1da75818a472bd7` |
| 102 | `def` | [eqLocus](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/eqlocus.md) | 687 | `declaration-track:13b32fab4113270c003c01f7e8cddb76041ad839b49ac934a19973b80d482b48` |
| 103 | `theorem` | [eqLocus_same](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/eqlocus-same.md) | 691 | `result-track:e8b794775cb3daf2bea51a808a7046895e54516a7d4a31b3282a1ee3d28f0b5c` |
| 104 | `theorem` | [eqOn_set_closure](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/eqon-set-closure.md) | 696 | `result-track:70d0f33c2269be873cb27c0b732a5ba0879bd7b2676e7897175c2fb707c51ff9` |
| 105 | `theorem` | [eq_of_eqOn_set_top](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/eq-of-eqon-set-top.md) | 700 | `result-track:195441eb9b5a97c4e223e977059804079de3b35156af6b91be321351a5bb84fb` |
| 106 | `theorem` | [eq_of_eqOn_set_dense](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/eq-of-eqon-set-dense.md) | 703 | `result-track:9ea70aa712a4565a066395f6d771f93cdfc6020b92b930db6dca083d59301b71` |
| 107 | `theorem` | [closure_preimage_le](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/closure-preimage-le-source-edition-2.md) | 707 | `result-track:b1ee31a2d8553326dd9ce646e08c688f11887dd7e5c4f34e21f20c790b65f6ba` |
| 108 | `theorem` | [map_closure](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/map-closure.md) | 712 | `result-track:26a2d557929a5a412a21c4de945e16040dae42527b040470afa8ee5528b4a820` |
| 109 | `theorem` | [range_subtype](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/range-subtype.md) | 726 | `result-track:073c7ade38be24d99a1a8c4cd65a454d48b236bc9cc64a4b163b8e6271d1a4f7` |
| 110 | `theorem` | [range_fst](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/range-fst.md) | 729 | `result-track:c944323f981667ca921f4b76a43e8a79ef859654c44fd475a025c974ec89fdf2` |
| 111 | `theorem` | [range_snd](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/range-snd.md) | 732 | `result-track:e45ecc80deceadc1082ee2fceb4d767f9032d472293f7f96238ebb240e2cb05f` |
| 112 | `def` | [nonUnitalSubringCongr](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/nonunitalsubringcongr.md) | 743 | `declaration-track:b6f70ec37bb2ad36bc696fa274e8f557ee3cf4118c3ae3e8cf00e30b2b5c543d` |
| 113 | `def` | [ofLeftInverse'](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/ofleftinverse.md) | 751 | `declaration-track:7ca0d9cff122c8c68ae5026f9428e217a833588281dce41612e55032d7450cd1` |
| 114 | `theorem` | [ofLeftInverse'_apply](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/ofleftinverse-apply.md) | 762 | `result-track:780733fb844d38eeb79c1784fc0b29711a0baa76357e1b3216b767a6b04a29df` |
| 115 | `theorem` | [ofLeftInverse'_symm_apply](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/ofleftinverse-symm-apply.md) | 767 | `result-track:bc7906090313019c55b83cf49e4dfec065c2b43f6bf7746de5d15be868c4f36b` |
| 116 | `theorem` | [closure_preimage_le](../../../../CommutativeAlgebra/NonUnitalSubringBasicNotMemOfNotMemClosure.lean/declarations/closure-preimage-le.md) | 779 | `result-track:01b4af70573a58a43654a6e51d82c31dd22011b8388d2570bc893273c4675c45` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cca9923df67d258c0db899c0447dbfff56879abf13fe23f80b640e213718f9ee -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant8bd7c6bec0d4117b4a60eef18f1bcaa721c9b2d0070d8f7371177a86d38d5d9d.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant8bd7c6bec0d4117b4a60eef18f1bcaa721c9b2d0070d8f7371177a86d38d5d9d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
