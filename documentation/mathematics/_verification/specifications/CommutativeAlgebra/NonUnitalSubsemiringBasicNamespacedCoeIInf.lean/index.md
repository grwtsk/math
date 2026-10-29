# Verification target: Non Unital Subsemiring Basic Namespaced Coe IInf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7d28404fa34364b37b18306d434c5f84bf15d5b",
  "lexical_observation_count": 122,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant8f3c62a97bf0223c6abb8a2c595c8634c5b39f0b37e8054e8603d817cf13bfb1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/index.md) · [Full source](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7d28404fa34364b37b18306d434c5f84bf15d5b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant8f3c62a97bf0223c6abb8a2c595c8634c5b39f0b37e8054e8603d817cf13bfb1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant8f3c62a97bf0223c6abb8a2c595c8634c5b39f0b37e8054e8603d817cf13bfb1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.Membership` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subsemigroup.Membership` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subsemigroup.Operations` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Center` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Center` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Centralizer` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Opposite` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Prod` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Submonoid.Basic` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Range` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Submonoid.Center` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subsemigroup.Centralizer` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.NonUnitalSubsemiring.Defs` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [toSubsemigroup_strictMono](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/tosubsemigroup-strictmono.md) | 43 | `result-track:98fee3eb666166651dd79fd77c17ecb20f24b322b07be5944f060fc499aca611` |
| 2 | `theorem` | [toSubsemigroup_mono](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/tosubsemigroup-mono.md) | 47 | `result-track:26ccbed104c4b1b0345b6b8461acfe462e0bdc186815c8802bed4db9cb8715a4` |
| 3 | `theorem` | [toAddSubmonoid_strictMono](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/toaddsubmonoid-strictmono.md) | 51 | `result-track:6254c068159664580fa9424ce817bdc67168ad1ff038e5de5de6a63ed8e3b18d` |
| 4 | `theorem` | [toAddSubmonoid_mono](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/toaddsubmonoid-mono.md) | 55 | `result-track:0cd318dd72984faa32505fa1e01c0a0733617713fed1cda09a0b1cc25bf717ae` |
| 5 | `def` | [topEquiv](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/topequiv.md) | 69 | `declaration-track:4eaf6c256bbc1f95dda02c6f1617e7cc99a4d62cb85e0cab925b0f15e72c686e` |
| 6 | `def` | [comap](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/comap.md) | 74 | `declaration-track:6f6fe7fbf1bb1fa9b8e099b6b91a95d858792d3a1e8a19f9cb6bfcf9e0141114` |
| 7 | `theorem` | [coe_comap](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/coe-comap.md) | 79 | `result-track:31e8279d0ff922ed19320e0705a83df4454e2bd5863cb26e8183b79567a5388e` |
| 8 | `theorem` | [mem_comap](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/mem-comap.md) | 83 | `result-track:352fb3e4648af238a14f2f4baa706c531dd2a6f92ae359a88f55182b9052b6e2` |
| 9 | `theorem` | [comap_comap](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/comap-comap.md) | 87 | `result-track:b861a363b7f12c8d5320a6262b5c9c65af5c33e196d08823299e50c291b50e49` |
| 10 | `def` | [map](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/map.md) | 93 | `declaration-track:3d53a2b30190809167ff9cc817961e53ec87daa3856164dbcf0d5ddb93af0444` |
| 11 | `theorem` | [coe_map](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/coe-map.md) | 97 | `result-track:17cc2b62ce60526cfd52682c88311344745b70bbd9277343848296102d196740` |
| 12 | `theorem` | [mem_map](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/mem-map.md) | 101 | `result-track:30f1b2c14b74fafa046a92ed6afb67bf52a9d20562af67ea991482027526426b` |
| 13 | `theorem` | [map_id](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/map-id.md) | 105 | `result-track:930b5b9dac2873314994068f60d4b65ce743fdd4ea81bfd3fed0c96987c3946a` |
| 14 | `theorem` | [map_map](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/map-map.md) | 109 | `result-track:1ce33ac5f7ec46acc6ecfcb754ae5a3776b94f471fa41a60865c1fe0dc2d0bd7` |
| 15 | `theorem` | [map_le_iff_le_comap](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/map-le-iff-le-comap.md) | 113 | `result-track:4a30b281110397ce29173c0dae0f931d85aa895dc8271732a9f8b0be9064825b` |
| 16 | `theorem` | [gc_map_comap](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/gc-map-comap.md) | 117 | `result-track:c120011a25fb570c3cafada8a0a4eb908e88825f1496d982cf6d08d38f822c07` |
| 17 | `def` | [equivMapOfInjective](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/equivmapofinjective.md) | 122 | `declaration-track:81cdc5d76784b96ed3134c04424afb7b5c0381cf236f1c2c72c81bada7d4e1cf` |
| 18 | `theorem` | [coe_equivMapOfInjective_apply](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/coe-equivmapofinjective-apply.md) | 129 | `result-track:8c99abef5c9e293ddbb2d93b65735acafcf75e5533e06ec184b5c7d2c3bfa280` |
| 19 | `def` | [srange](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/srange.md) | 145 | `declaration-track:c897bef7fe9be6e609d722b6e5c0447180889226ff8f47e5020f587b162a7e3a` |
| 20 | `theorem` | [coe_srange](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/coe-srange.md) | 149 | `result-track:ee1a17568ce22f1233b80b856572e361dccfc58c96810370933ae5bd50ad7341` |
| 21 | `theorem` | [mem_srange](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/mem-srange.md) | 153 | `result-track:262dfe8fb8cd3912e2df73bef8a403ee330095df738778e2ef4bd85f00b591e6` |
| 22 | `theorem` | [srange_eq_map](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/srange-eq-map.md) | 156 | `result-track:d249e94ab16fa4ddbfe0430146f3f78a98c97c6f2215f620cdbf4db5257e2a8a` |
| 23 | `theorem` | [mem_srange_self](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/mem-srange-self.md) | 160 | `result-track:2460f03a3292c17bbe8bf071872334c59e65ab80dd2a452d96fdea07c829f58e` |
| 24 | `theorem` | [map_srange](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/map-srange.md) | 163 | `result-track:6816ff6b0a8b50a359de3f93a85fe22fa3e3f4ae86ed466962afe4fce5ac0535` |
| 25 | `instance` | [finite_srange](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/finite-srange.md) | 167 | `declaration-track:d1585a4805f8a411520822a0316fdd84d1c8a67a43ef4f5ac1dc673ce2807106` |
| 26 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/instance-source-edition-2.md) | 174 | `declaration-track:ba9de3571fb1edc64de546a4e5b6e983a624537bc07dafd20bb0b5d630156191` |
| 27 | `theorem` | [coe_sInf](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/coe-sinf.md) | 180 | `result-track:eb5b65cb4b866f6b215fb840e07e0d88a392db0f7f97b36dfa596a0860dc7414` |
| 28 | `theorem` | [mem_sInf](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/mem-sinf.md) | 184 | `result-track:ef7b93dc6dc34b19adf84de85961bcea84f6154da18fc465db3e1f13923287e7` |
| 29 | `theorem` | [coe_iInf](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/coe-iinf.md) | 188 | `result-track:c3687418994caf7d39dfdede34b5bd07c89656402cbc9126bbaa43f22b7de47c` |
| 30 | `theorem` | [mem_iInf](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/mem-iinf.md) | 192 | `result-track:4e2e5989fd614ef4d0324c47d68b9bbf478b43ede5b6d48bb49f70f576d86547` |
| 31 | `theorem` | [sInf_toSubsemigroup](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/sinf-tosubsemigroup.md) | 197 | `result-track:19d6847d2482a74d61c5415ab4cf536827dd80c66bef236e298c3fa6a5674ad8` |
| 32 | `theorem` | [sInf_toAddSubmonoid](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/sinf-toaddsubmonoid.md) | 202 | `result-track:b0eb02ac3b44d119775999d31bbbab487b1f8091ff3742d9095ffba6622c9ff4` |
| 33 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/instance.md) | 207 | `declaration-track:414a73f9f8ef61c255d5ae3fc9add56bf44cc73403913095e43513ab32efa428` |
| 34 | `theorem` | [eq_top_iff'](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/eq-top-iff.md) | 219 | `result-track:9ac69764c78aefca5bba4db8da1a5783c3ad0a92811c9d3df6ec11aa0a3cdac9` |
| 35 | `def` | [center](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/center.md) | 228 | `declaration-track:ceecea6f60aabaea949ebdcf706ec300e46150e201b6f9796019d8992956fcdc` |
| 36 | `theorem` | [coe_center](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/coe-center.md) | 233 | `result-track:92575d1a93f548e9838ab3080ca734880f1611318d6a5ec92275b6bcc51cb83e` |
| 37 | `theorem` | [center_toSubsemigroup](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/center-tosubsemigroup.md) | 237 | `result-track:9ecf2fabcb77e8325b37664995a2c4b349bf65aa7026e4f6e9a6e81128744746` |
| 38 | `instance` | [center.instNonUnitalCommSemiring](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/center-instnonunitalcommsemiring.md) | 242 | `declaration-track:8a55b282f51ed9cdfb337bf1e9af2f27fe99ca3d37e3e4ea6f45df25d15f32a8` |
| 39 | `lemma` | [Non Unital Subsemiring Basic Namespaced Coe IInf](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-tosubsemigro.md) | 249 | `result-track:39b802f55dd7b9374f438857ea0f056eca20aaeb6986e3f3b7888f3d463d07a7` |
| 40 | `def` | [centerCongr](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/centercongr.md) | 261 | `declaration-track:d88ce835bd12ca5db80ab2e9dd8b0292b8e8269560214605cb41359ba4e6259e` |
| 41 | `def` | [centerToMulOpposite](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/centertomulopposite.md) | 267 | `declaration-track:8e07bd1675be14219ea43390359c3a9d3e7c1896e46cd2ede9e6e50896d198d0` |
| 42 | `example` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/example.md) | 276 | `declaration-track:482bdd03eb3771d7b7d615f13f13273995aa23b863e56dc5897285e3010b3ada` |
| 43 | `theorem` | [mem_center_iff](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/mem-center-iff.md) | 281 | `result-track:a215bfc4bd2e85abc755de2e36180ad79329af09912490d38645c71240491f7a` |
| 44 | `instance` | [decidableMemCenter](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/decidablememcenter.md) | 285 | `declaration-track:2ae29e0b41141d64697816b416c7d2764ffd0c7367c890295ce957ab20fd6f94` |
| 45 | `theorem` | [center_eq_top](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/center-eq-top.md) | 289 | `result-track:00c3f27506b2a467b6c1db5b9598d35a9cb53fdd86ef5896a0a5133ee9aaa172` |
| 46 | `def` | [centralizer](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/centralizer.md) | 297 | `declaration-track:5767cc5ff8f1c2abf66d400676f4b9690a416aef86930b1714b22728be8e207f` |
| 47 | `theorem` | [coe_centralizer](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/coe-centralizer.md) | 304 | `result-track:52e292b503c3031228d5eacb3cc899bfa71bc7fa2a139bb9bd1338b52de570ad` |
| 48 | `theorem` | [centralizer_toSubsemigroup](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/centralizer-tosubsemigroup.md) | 308 | `result-track:fa4229ed75439a35df404318290039e61446ecc477ca1d5aeb0fd3171586a1bf` |
| 49 | `theorem` | [mem_centralizer_iff](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/mem-centralizer-iff.md) | 312 | `result-track:bc2c89cce425c5d3a008b7f75ed3a128039b886ac92b78c3548173aa153810fe` |
| 50 | `theorem` | [center_le_centralizer](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/center-le-centralizer.md) | 316 | `result-track:88af8beb127a3777fa75741322c5a84a1057dbb48c62c8eb69864c8bab22b9af` |
| 51 | `theorem` | [centralizer_le](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/centralizer-le.md) | 319 | `result-track:9884148d818adfe593ae9bf4d7d978d64d9783a4fe2a57c4619477d778d6a4dc` |
| 52 | `theorem` | [centralizer_eq_top_iff_subset](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/centralizer-eq-top-iff-subset.md) | 324 | `result-track:a4f89f6ed9299befa7ff8d5fb9d04e09767fef868a812ffecdf7fac28aac8094` |
| 53 | `theorem` | [centralizer_univ](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/centralizer-univ.md) | 329 | `result-track:5f761f3d48dcc5c47f00d3e98740ce7dfb3bf90c468e6e9d7f6f1090b2a7c5d4` |
| 54 | `def` | [closure](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/closure.md) | 335 | `declaration-track:ecf1e1e28eab39558e33ca404425221fcbaffe863587f824a10292621aa282e8` |
| 55 | `theorem` | [mem_closure](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/mem-closure.md) | 338 | `result-track:6f22c63669506a258c13f4421af6b0542d34e69330afd2b92c69f62b6e9ec4b4` |
| 56 | `theorem` | [subset_closure](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/subset-closure.md) | 344 | `result-track:bddf2a2832a34a27248d9b6978b56b1323ad42d8df13cca8aac3152d2feef2a8` |
| 57 | `theorem` | [notMem_of_notMem_closure](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/notmem-of-notmem-closure.md) | 346 | `result-track:7cf673871c599b551085b7188f1228814a08a02748c6d30c3c595f7f5e1a850c` |
| 58 | `theorem` | [closure_le](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/closure-le.md) | 353 | `result-track:29ecf92c69fbe2222fbb35f21a0befa1676e2f2a5363dc7d9eab77f66895444a` |
| 59 | `theorem` | [closure_mono](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/closure-mono.md) | 359 | `result-track:e5d5c4b1ca97ee765327591692ef05cafbf82e5e261c156638998fb7ab4778b3` |
| 60 | `theorem` | [closure_eq_of_le](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/closure-eq-of-le.md) | 362 | `result-track:030675827c02aaedadb913569772a45607563663a3c242454797a84e4e2d96bf` |
| 61 | `lemma` | [closure_le_centralizer_centralizer](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/closure-le-centralizer-centralizer.md) | 366 | `result-track:c6fd8eb00ed4b57f09d2b05b286a636729e03936fd0a8e23671aaea70c79ac7d` |
| 62 | `abbrev` | [closureNonUnitalCommSemiringOfComm](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/closurenonunitalcommsemiringofcomm.md) | 372 | `declaration-track:6312b78518cedd45f1c094b1dcd12c0eabd7cae0d5505274e4d6d6af84d7c589` |
| 63 | `theorem` | [mem_map_equiv](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/mem-map-equiv.md) | 381 | `result-track:a30bf54f421bba05fcc67b530c3e96a7c70412b1d2db97c5dbf3bd7c672e738e` |
| 64 | `theorem` | [map_equiv_eq_comap_symm](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/map-equiv-eq-comap-symm.md) | 385 | `result-track:45ad33c382fb06e78772ed7b8849fc926201799c23b215742f8aad9129d2471f` |
| 65 | `theorem` | [comap_equiv_eq_map_symm](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/comap-equiv-eq-map-symm.md) | 389 | `result-track:5e0d541a84ff5e1fc881af51d5f593cc20711a93db6e630cb16e4d0f94bfee69` |
| 66 | `def` | [nonUnitalSubsemiringClosure](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/nonunitalsubsemiringclosure.md) | 398 | `declaration-track:d9158cd96166a4831e5a6f1a8baa3862b1f00dabf9129b5b212133d11c7c50e6` |
| 67 | `theorem` | [nonUnitalSubsemiringClosure_coe](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/nonunitalsubsemiringclosure-coe.md) | 401 | `result-track:5900a5de19e6230408016c6232c3be1d61d314086067cd43e4044f24ce8fa9c2` |
| 68 | `theorem` | [nonUnitalSubsemiringClosure_toAddSubmonoid](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/nonunitalsubsemiringclosure-toaddsubmonoid.md) | 405 | `result-track:797393876c3061d5bf3eff36241b1dbec41b858c677c35ca4ef0775a8487f20b` |
| 69 | `theorem` | [nonUnitalSubsemiringClosure_eq_closure](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/nonunitalsubsemiringclosure-eq-closure.md) | 411 | `result-track:8ac3596647ca309002a93aa25a902a2fa1eaf18b519c9d1d9fe0fb4a176ab34b` |
| 70 | `theorem` | [closure_subsemigroup_closure](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/closure-subsemigroup-closure.md) | 426 | `result-track:14676ba9acbfbb2b35482e0439105ea2232c391836be0cc1449d2373a29a694f` |
| 71 | `theorem` | [coe_closure_eq](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/coe-closure-eq.md) | 434 | `result-track:55a3295f10a54c17aab750f32c79bd567e1e554e00bb54cf9262547b414ffd86` |
| 72 | `theorem` | [mem_closure_iff](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/mem-closure-iff.md) | 439 | `result-track:0e8f5a8caf3ac38254a1493dba9b6d8b0c3ded3743abd09ab95e00933b1c0a09` |
| 73 | `theorem` | [closure_addSubmonoid_closure](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/closure-addsubmonoid-closure.md) | 444 | `result-track:5f63390b1b46ac164c82cb5ad8dde87bb9073b080cee5373ccc9c00bd4e78f85` |
| 74 | `theorem` | [closure_induction](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/closure-induction.md) | 458 | `result-track:a6eb9fd26f40d90b4a4700700197c83f91d4a4a0062209f1b0a22cda6c26766c` |
| 75 | `theorem` | [closure_induction₂](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/closure-induction-source-edition-2.md) | 472 | `result-track:cd8604f7f0b1a209ad12fbde4cb23e4d97f9080e37469c95fc55f031d4c24ac4` |
| 76 | `def` | [gi](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/gi.md) | 493 | `declaration-track:205cbf9697828b1137185bc9f842d8268c57ce30f9dbe0375fd62fea7d46d27c` |
| 77 | `theorem` | [closure_eq](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/closure-eq.md) | 504 | `result-track:65e0456a91ffb4da603d56c5c1f856cd58f6da7161d254fb0f0809c53cf5c655` |
| 78 | `theorem` | [closure_empty](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/closure-empty.md) | 508 | `result-track:9cde64bbf509bb19546358c663ca3a616b9c7e02cd16d2fb0679c9deac80625d` |
| 79 | `theorem` | [closure_univ](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/closure-univ.md) | 512 | `result-track:909d255288f22ce37d226219d59d0405ab3af62a206b412f8ded6920f0b074fa` |
| 80 | `theorem` | [closure_union](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/closure-union.md) | 515 | `result-track:52031ceb8e2c02aae3916972f8f0c333693ed9b236fc4db73521d7807d69681f` |
| 81 | `theorem` | [closure_iUnion](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/closure-iunion.md) | 518 | `result-track:524b24ffdbc3019c736f49ff06ba756655cdccb93f90cbd0953c0ae6b02274a4` |
| 82 | `theorem` | [closure_sUnion](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/closure-sunion.md) | 521 | `result-track:3056079995fcf02d976f4193b044d1123f33d76dcd6ba49cef7f42b7a3b9cbd0` |
| 83 | `theorem` | [map_sup](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/map-sup.md) | 524 | `result-track:c476a54a6e2f3a41a7df06e280c28f6e23c07868b636e04768583c46e6f50c53` |
| 84 | `theorem` | [map_iSup](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/map-isup.md) | 528 | `result-track:9f4ba261fd5cef36e39101057934bfed1543228dca69dcb8c90584b8897e0415` |
| 85 | `theorem` | [map_inf](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/map-inf.md) | 532 | `result-track:501555ec4a00544c97a74e172722a38ec117afd164bb9d2b5da1b3f5a6aa0370` |
| 86 | `theorem` | [map_iInf](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/map-iinf.md) | 536 | `result-track:c54b31fbd373b28862ace8aa57c7d38c62e91fa536b9ed90f289d35903f9af2e` |
| 87 | `theorem` | [comap_inf](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/comap-inf.md) | 542 | `result-track:fa3f503b00c85184c48955cd45733f1993cc127a10aacbd13b48edddef6db8f2` |
| 88 | `theorem` | [comap_iInf](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/comap-iinf.md) | 546 | `result-track:f5675615ac8095b029bc7691adfbdb3cf0e2c85ca9da28e2c593a74331147833` |
| 89 | `theorem` | [map_bot](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/map-bot.md) | 551 | `result-track:1af6396c27c7e562697d7b3eecee7382fa3750d31b85667d879a1e306031b217` |
| 90 | `theorem` | [comap_top](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/comap-top.md) | 555 | `result-track:5bd63699321b4ab50a4796d305c46c33823cca45bf6991c920f1162047711755` |
| 91 | `def` | [prod](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/prod.md) | 560 | `declaration-track:a6819cdc1c5d9eae082305e5775e8e33ca219ccbaca540a9b821f7e6df044684` |
| 92 | `theorem` | [coe_prod](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/coe-prod.md) | 565 | `result-track:68907aa4dec270eb30fac4345a471725533c36c828a18ae4800908229afca30e` |
| 93 | `theorem` | [mem_prod](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/mem-prod.md) | 569 | `result-track:7a7be324fefbd73b8e46a068518d0b24e99f52a0b9f8838dfb819ad814d569ea` |
| 94 | `theorem` | [prod_mono](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/prod-mono.md) | 574 | `result-track:c43012801185b0f9c64220fc38f1b6f79e2cec8bfb34b61f0e6b4a642e0a1fc2` |
| 95 | `theorem` | [prod_mono_right](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/prod-mono-right.md) | 578 | `result-track:dae14cf9c578f6333c8252acc4d3219c502cd778afef47a0cc13028f4aa99ee6` |
| 96 | `theorem` | [prod_mono_left](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/prod-mono-left.md) | 582 | `result-track:fb04b87695bb684215fab51a3a7e35811d0bccb9d57996b4de2a21d260ed7265` |
| 97 | `theorem` | [prod_top](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/prod-top.md) | 585 | `result-track:0f17311dbfa56295df9c09259e18bf746641a2bef18bfcd553be4e80fd80646c` |
| 98 | `theorem` | [top_prod](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/top-prod.md) | 589 | `result-track:df438f68e18148cc4c3ded5c338156949dd34e81527c8c5010cc6b28306eba20` |
| 99 | `theorem` | [top_prod_top](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/top-prod-top.md) | 594 | `result-track:391b0c33a652b2cf982b1fec09a2f01c300b504b585198a1ba582aa2d5734848` |
| 100 | `def` | [prodEquiv](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/prodequiv.md) | 598 | `declaration-track:78350b5aaa71e8bda1165007ff78484b679b7bd8a9117049364f5474242cbf11` |
| 101 | `theorem` | [mem_iSup_of_directed](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/mem-isup-of-directed.md) | 603 | `result-track:3c91c9ede1002378ac7fbf8fc905b628919b41326728923c0c88792c4669680e` |
| 102 | `theorem` | [coe_iSup_of_directed](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/coe-isup-of-directed.md) | 614 | `result-track:e3e0a00725f767ddba5bfa8a0099c0653f9229275c6ae949af3a267ed74af754` |
| 103 | `theorem` | [mem_sSup_of_directedOn](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/mem-ssup-of-directedon.md) | 618 | `result-track:9d96e23dc0dbfd221bf7a9e3983fb16680b964e1b954c8dd0e9de1c82a63bff9` |
| 104 | `theorem` | [coe_sSup_of_directedOn](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/coe-ssup-of-directedon.md) | 623 | `result-track:ea82a090fb6f338c82bf21667b5ddab40bc3af256ff028b8f4856bc2ed16b3b6` |
| 105 | `theorem` | [eq_of_eqOn_stop](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/eq-of-eqon-stop.md) | 633 | `result-track:99570302741c105b0417cb16bc0d8e3c531c4f7ca04004a28eca4b14102e2c2b` |
| 106 | `def` | [srangeRestrict](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/srangerestrict.md) | 648 | `declaration-track:3fb6441a3d60e838cba66344767ef34492d5b528e2fe10838a36780712d6ece8` |
| 107 | `theorem` | [coe_srangeRestrict](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/coe-srangerestrict.md) | 652 | `result-track:abeda53339c87216a486cd1f0bfe75ab7a727d23ddcdbc557686e58de9c0ff12` |
| 108 | `theorem` | [srangeRestrict_surjective](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/srangerestrict-surjective.md) | 655 | `result-track:db5049e929225cbfa7edd6b097e4c72e2ced96d3c7365dc2e066df3bea32d2e8` |
| 109 | `theorem` | [srange_eq_top_iff_surjective](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/srange-eq-top-iff-surjective.md) | 661 | `result-track:45d82912a997fe9e5ddebd252edf1f7fe2406f6f37390970b81673a76eec7996` |
| 110 | `theorem` | [srange_eq_top_of_surjective](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/srange-eq-top-of-surjective.md) | 670 | `result-track:7a325a8a5c1cb06841af1294d37c4994530c23c2de6728b25b99226d9d30e70a` |
| 111 | `theorem` | [eqOn_sclosure](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/eqon-sclosure.md) | 678 | `result-track:adad4f2203f68a74005afba711e2c4eb545b20fc1ef746d230023e9d99293933` |
| 112 | `theorem` | [eq_of_eqOn_sdense](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/eq-of-eqon-sdense.md) | 682 | `result-track:ce0de6522f46c0d6132321ec2b1b3316b72e9dccc174e0efe023583189322deb` |
| 113 | `theorem` | [sclosure_preimage_le](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/sclosure-preimage-le.md) | 686 | `result-track:2f4bf2ee932f1247db35b556896dbfee74099a3dac1b9f7c3b77a879659da99d` |
| 114 | `theorem` | [map_sclosure](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/map-sclosure.md) | 692 | `result-track:64153b8c2df59bf187aa68812899f339eebccbaa66d7aeb9db876eee11ed834e` |
| 115 | `theorem` | [srange_subtype](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/srange-subtype.md) | 703 | `result-track:652fb4c3d382c5c8ededbe46293be8d11981330af072bf5d7174711e877f5812` |
| 116 | `theorem` | [range_fst](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/range-fst.md) | 709 | `result-track:8f6f41aa98ea34003262176d6b712af6fc1d04c50650762b7d79c591da509250` |
| 117 | `theorem` | [range_snd](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/range-snd.md) | 713 | `result-track:ef139fde9580c61422c7ed207f7e63597c8734d271c8f61ed34c002293001e00` |
| 118 | `def` | [nonUnitalSubsemiringCongr](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/nonunitalsubsemiringcongr.md) | 727 | `declaration-track:eda148bc730691a4275e562e3e791da4186fb59faaf26abc8b88d1e18c0a26ae` |
| 119 | `def` | [sofLeftInverse'](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/sofleftinverse.md) | 734 | `declaration-track:2a4f2be7876744268ebc633e26e700222bbd5c85c3a77438a5e2163e324bc4fc` |
| 120 | `theorem` | [sofLeftInverse'_apply](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/sofleftinverse-apply.md) | 745 | `result-track:4dd104c032d09391879c8b800832a2a6b1c10ca4b761728e400221eb4d1cf428` |
| 121 | `theorem` | [sofLeftInverse'_symm_apply](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/sofleftinverse-symm-apply.md) | 750 | `result-track:816fabe121a936fa6f71cc04cc61a5978eb42d0cbcdd473e7054815c59d10164` |
| 122 | `def` | [nonUnitalSubsemiringMap](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedCoeIInf.lean/declarations/nonunitalsubsemiringmap.md) | 758 | `declaration-track:c13ccfaffc063693c2cf532fdc8ae5925c96817d1faeaca4cadf0952d56efe61` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=15a3c17b0cd9e13dc067733dad5a666e3948656fdf11fdda21e88309af8741b2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant8f3c62a97bf0223c6abb8a2c595c8634c5b39f0b37e8054e8603d817cf13bfb1.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant8f3c62a97bf0223c6abb8a2c595c8634c5b39f0b37e8054e8603d817cf13bfb1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
