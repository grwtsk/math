# Verification target: Algebra Polynomial Splits

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d40608a998a73335ef23ba962082ff8a7702857e",
  "lexical_observation_count": 78,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Splits/Variant5d08c22c15f51dac86b928563d83686b7693daf5ba657b2526c028a72e137a55.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d40608a998a73335ef23ba962082ff8a7702857e`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Splits/Variant5d08c22c15f51dac86b928563d83686b7693daf5ba657b2526c028a72e137a55.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Splits/Variant5d08c22c15f51dac86b928563d83686b7693daf5ba657b2526c028a72e137a55.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.FieldDivision` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Lifts` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Prime` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Tower` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Splits](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits.md) | 44 | `declaration-track:3413b2d1a16d0d621270527acaa4be6c64cfa7a7abd4e57c4838a72b19b6e951` |
| 2 | `theorem` | [splits_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-zero.md) | 48 | `result-track:f8c8e09bfe162de4a61e62d27c82dfb546faa556bc5e6396100d2e07a92e00be` |
| 3 | `theorem` | [splits_of_map_eq_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-of-map-eq-c.md) | 51 | `result-track:c0f364363a438ec8a8425014b08bdfe0bb77ccbc11efbdd0eacecfd76ae65b4d` |
| 4 | `theorem` | [splits_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-c.md) | 65 | `result-track:4d1eb4e6ee614866f18b6cb48a9ba11bb061bc73fad928287adcd4c6eabdd596` |
| 5 | `theorem` | [splits_of_map_degree_eq_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-of-map-degree-eq-one.md) | 68 | `result-track:e1cdae0b3719b510521ead8b034e47b590b1e26f204417a15f1fd376de6b3277` |
| 6 | `theorem` | [splits_of_degree_le_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-of-degree-le-one.md) | 75 | `result-track:71e83ff0e4ddb1df8386bfa8d07f85e4da70aee4293ef5d23062a5556f99302c` |
| 7 | `theorem` | [splits_of_degree_eq_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-of-degree-eq-one.md) | 82 | `result-track:b5b50c6750f43c06516cbc13d8a0a0d52f7c73d3cd98c59acbeeaf0f746c1921` |
| 8 | `theorem` | [splits_of_natDegree_le_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-of-natdegree-le-one.md) | 85 | `result-track:5190f051448690218effdc204414ea4719329e0b5e1ade1921b2863a20c42563` |
| 9 | `theorem` | [splits_of_natDegree_eq_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-of-natdegree-eq-one.md) | 88 | `result-track:ecdc5a5279da8aac5b66c0f433d07cbe09412ee1aafbd95396b0e8f63c7de7cf` |
| 10 | `theorem` | [splits_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-mul.md) | 91 | `result-track:382707aef702dd98bb8c41db076b09096b4613bb293c1ffcfff270331847b824` |
| 11 | `theorem` | [splits_of_splits_mul'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-of-splits-mul-source-edition-2.md) | 101 | `result-track:f636b8e38264d17fdba83eb26d8b2511a0d50099d369e40529dfe5b9cb8344c0` |
| 12 | `theorem` | [splits_map_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-map-iff.md) | 108 | `result-track:79497bd27552fb578e95376716580fa7b3b1817ed5ec5033f5e06d147d7cf75c` |
| 13 | `theorem` | [splits_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-one.md) | 111 | `result-track:fa6343532e755e954a08e8a9a0d53835498cb3c9a323f9692444fb6a741adef3` |
| 14 | `theorem` | [splits_of_isUnit](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-of-isunit.md) | 114 | `result-track:aa776b8af916eead30f9b04ed597f421cc04c0b922bff525ceabaf9a62b61364` |
| 15 | `theorem` | [splits_X_sub_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-x-sub-c.md) | 117 | `result-track:4ee0fcdd91013397df96c42976e96b6d3b9dfa8212cfa4ad187b427bd4a6bb7a` |
| 16 | `theorem` | [splits_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-x.md) | 120 | `result-track:b0966f64d1d8fda6d29b3e6a754fa7707c8960cb398dcdaf7a762617d11ad3ca` |
| 17 | `theorem` | [splits_prod](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-prod.md) | 123 | `result-track:d7d468a20bbdf71c4f6ae730273e3dcca12dcb9adb8ae93176f2ea5c030a5eb2` |
| 18 | `theorem` | [splits_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-pow.md) | 130 | `result-track:4f380f1c64491fe0df9863029a4a05e8824ce2cca0173b867fa5c800df325dea` |
| 19 | `theorem` | [splits_X_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-x-pow.md) | 134 | `result-track:8a0e709c47fb6a17c09f594aa0a08c4aceaf3e3f4fb12f325d1232896eaca9d2` |
| 20 | `theorem` | [splits_id_iff_splits](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-id-iff-splits.md) | 137 | `result-track:417936cbfdf78e73d115cd3e7fc75fa88a062a4b65364287d12784e41a62a713` |
| 21 | `theorem` | [Splits.comp_of_map_degree_le_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-comp-of-map-degree-le-one.md) | 142 | `result-track:2a56489d993a54c660e03ed848de7f2aa459ff7a4f0a409bc348a120d08efc86` |
| 22 | `theorem` | [splits_iff_comp_splits_of_degree_eq_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-iff-comp-splits-of-degree-eq-one.md) | 169 | `result-track:ed1a9232108edfbb7cb3849dd6f0a7895abe93de68c3d4995f375fe39a78948a` |
| 23 | `theorem` | [Splits.comp_of_degree_le_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-comp-of-degree-le-one.md) | 190 | `result-track:f79190dbfbd03ab2d3dd9d8fff26defb8351521dc20affc3eca557e6102a8022` |
| 24 | `theorem` | [Splits.comp_X_sub_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-comp-x-sub-c.md) | 194 | `result-track:d864cd32101982e9ff7b1db70aa96c372a6a093c1f6925b701271d209081b04f` |
| 25 | `theorem` | [Splits.comp_X_add_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-comp-x-add-c.md) | 198 | `result-track:cb06aef099f49a78ac357411d65a730f88af3af01c0f2b3246757810031f9223` |
| 26 | `theorem` | [Splits.comp_neg_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-comp-neg-x.md) | 202 | `result-track:90c2a5cf8c93c90571758c14dbcc15b1720ba2ed66b146648b3ca9b01ebb0e3c` |
| 27 | `theorem` | [exists_root_of_splits'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/exists-root-of-splits.md) | 207 | `result-track:9f98d2ab04bba626c764ebc1a2a0753e780e3bd02130c2fe51eebd9c3caebe6e` |
| 28 | `theorem` | [roots_ne_zero_of_splits'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/roots-ne-zero-of-splits-source-edition-2.md) | 219 | `result-track:d4ba566597ec883fc16960fdd53b55b8b6a63b71e9b7cf41410018c96b230211` |
| 29 | `def` | [rootOfSplits'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/rootofsplits-source-edition-2.md) | 229 | `declaration-track:971161df99d14fd3d344cb0248fe79fa585103b62898b250898ff29f93ae96b0` |
| 30 | `theorem` | [map_rootOfSplits'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/map-rootofsplits-source-edition-2.md) | 232 | `result-track:bfbb3262e9f31e1f5d330df740a5f4e17911a1a54f996cad5774f95d77dd945f` |
| 31 | `theorem` | [natDegree_eq_card_roots'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/natdegree-eq-card-roots.md) | 236 | `result-track:0a3fda51e3e7b1ef05ce14ebb858f1e97c724b035a7ed7107fd79603c4f90023` |
| 32 | `theorem` | [degree_eq_card_roots'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/degree-eq-card-roots.md) | 253 | `result-track:3759586d3186726b73cbd05b1fd57637f86dbecccc61c4183b60c8f516e5e566` |
| 33 | `theorem` | [aeval_root_of_mapAlg_eq_multiset_prod_X_sub_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/aeval-root-of-mapalg-eq-multiset-prod-x-sub-c.md) | 259 | `result-track:19984e8a03c37f4488389fc93dddd97fd018e87deba4d5166ef1837a0012c62a` |
| 34 | `theorem` | [splits_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-iff.md) | 270 | `result-track:aaad36dffe4df895b597033cc06e757f366e49dcd7289e6f78381797710719e9` |
| 35 | `theorem` | [Splits.def](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-def.md) | 275 | `result-track:b03dc38a5688b81a0a1d5b753b999857e8a314f8d31e09e065e9db863f273095` |
| 36 | `theorem` | [splits_of_splits_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-of-splits-mul.md) | 279 | `result-track:b1a27616b262d55a988c3a0c68246d9334af40419456ae3e259f2dfb9d084183` |
| 37 | `theorem` | [splits_of_splits_of_dvd](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-of-splits-of-dvd.md) | 283 | `result-track:a4211e630d8f6c4f00583a9230786690c7e3d189979e8ac00b35b4572f4c65e7` |
| 38 | `theorem` | [splits_of_splits_gcd_left](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-of-splits-gcd-left.md) | 288 | `result-track:c18cbc8f4b5a51f00b5d668fa8dc4d8b99f02be6f473668bfb3f480e0944cca0` |
| 39 | `theorem` | [splits_of_splits_gcd_right](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-of-splits-gcd-right.md) | 292 | `result-track:68c94a8e7c4ec34f7b8f1721f1579766660cda1d6b6d01d46e2dbf491546036b` |
| 40 | `theorem` | [splits_mul_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-mul-iff.md) | 296 | `result-track:adc0e40f1cae5fdfefac7776bcb136f0f511ccee538a85a01dffe9b16fce543c` |
| 41 | `theorem` | [splits_prod_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-prod-iff.md) | 300 | `result-track:233bc62ac036163de29b0b125f034ac1ff1913706c8c8242740d711563053424` |
| 42 | `theorem` | [degree_eq_one_of_irreducible_of_splits](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/degree-eq-one-of-irreducible-of-splits.md) | 310 | `result-track:f12e2ae2093d70b8e48ea3cc27a1eb6c48eb3ba7f8761639b3b43f92f6f8804a` |
| 43 | `theorem` | [exists_root_of_splits](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/exists-root-of-splits-source-edition-2.md) | 318 | `result-track:d488f5b7319275122e6d5e8eb407c669b35210d5e39e330495463d908ea724d0` |
| 44 | `theorem` | [roots_ne_zero_of_splits](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/roots-ne-zero-of-splits.md) | 322 | `result-track:57b9da3c883a837f4f4d7c10744064aebb50a8a40ddd18117df02a0ed01fdf25` |
| 45 | `def` | [rootOfSplits](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/rootofsplits.md) | 328 | `declaration-track:8c9b06792e2d52c27c38614254d9e40ba77ead8b52404f8facbeeb016eb988d7` |
| 46 | `theorem` | [rootOfSplits'_eq_rootOfSplits](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/rootofsplits-eq-rootofsplits.md) | 332 | `result-track:1180edaaade6712e4bc61603f3ff6c71b8058c5c1b89b2a3ffd00e7d970d7634` |
| 47 | `theorem` | [map_rootOfSplits](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/map-rootofsplits.md) | 336 | `result-track:58109f6234aab7a73cdb4f6bffbcd9adb850f4e3220572dc8136ad7722e269f6` |
| 48 | `theorem` | [natDegree_eq_card_roots](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/natdegree-eq-card-roots-source-edition-2.md) | 340 | `result-track:a6a89e4dcd8abe2f014f16e3e407a4a9ad4124af6c82ad2f2a568e4729add59b` |
| 49 | `theorem` | [degree_eq_card_roots](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/degree-eq-card-roots-source-edition-2.md) | 344 | `result-track:cb4637c02f7d052f3ab9057179d7ddb6553bd02244dea89a15ac4e21c566c5df` |
| 50 | `theorem` | [roots_map](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/roots-map.md) | 348 | `result-track:dfc26b1065abc1fcfe2c8aaf7a9d6be3203bb36bd380535b85e3c4ad9af0f561` |
| 51 | `theorem` | [Splits.mem_subfield_of_isRoot](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-mem-subfield-of-isroot.md) | 353 | `result-track:cc2ac63161733a1abc24cb268be741195b91c08aa66ecf5c01ef8c06b715d68d` |
| 52 | `theorem` | [image_rootSet](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/image-rootset.md) | 360 | `result-track:d479e0489e419ed36eda81c6048c3f96e31f6c81a2cb11517cc9fd1ec0c160a1` |
| 53 | `theorem` | [adjoin_rootSet_eq_range](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/adjoin-rootset-eq-range.md) | 367 | `result-track:20dced5d2405a59ad60f8e4373b3308909c3f506760bb0c37df7ecb02c8e4ee6` |
| 54 | `theorem` | [eq_prod_roots_of_splits](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/eq-prod-roots-of-splits.md) | 373 | `result-track:31a1720a1dd4eaded43f9c334bf9f514b52dc01e0153ea6e875d5a5502a3444e` |
| 55 | `theorem` | [eq_prod_roots_of_splits_id](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/eq-prod-roots-of-splits-id.md) | 379 | `result-track:c87c3003a2d6ae02f3d65af6995c4f28fb50991a852a2ded5358e632fd62359f` |
| 56 | `theorem` | [Splits.dvd_of_roots_le_roots](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-dvd-of-roots-le-roots.md) | 383 | `result-track:46b8b28cf6032c9e91f5c7e73a2998e28ef33ee3b23bf39c8e9fc248a9d25123` |
| 57 | `theorem` | [Splits.dvd_iff_roots_le_roots](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-dvd-iff-roots-le-roots.md) | 390 | `result-track:916717531cdcc93915e468781ef3fd89357e2cccca1fdb53a17ea43de2c53eb0` |
| 58 | `theorem` | [aeval_eq_prod_aroots_sub_of_splits](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/aeval-eq-prod-aroots-sub-of-splits.md) | 395 | `result-track:d283d485eebd2fd0015b10873d475187658909221052352046fbfdb06458199e` |
| 59 | `theorem` | [eval_eq_prod_roots_sub_of_splits_id](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/eval-eq-prod-roots-sub-of-splits-id.md) | 401 | `result-track:b69814102792975a007d08e7a46a8ccf1d5a56fde4a31279ae45a61d0c32718c` |
| 60 | `theorem` | [eq_prod_roots_of_monic_of_splits_id](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/eq-prod-roots-of-monic-of-splits-id.md) | 407 | `result-track:c5e6897342aca60fcfd78b3bf0dd1b7e529e24184fd11bb16fff394f107533ca` |
| 61 | `theorem` | [aeval_eq_prod_aroots_sub_of_monic_of_splits](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/aeval-eq-prod-aroots-sub-of-monic-of-splits.md) | 412 | `result-track:9f603496f665e978b644f6f96c853c4ab9aeaf9a6fc108942f75b9530ce5399c` |
| 62 | `theorem` | [eval_eq_prod_roots_sub_of_monic_of_splits_id](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/eval-eq-prod-roots-sub-of-monic-of-splits-id.md) | 417 | `result-track:56ef84b78acdffb9eb481b4f3a1e8ba71caacb2936b0111dfa3ec79f768629ff` |
| 63 | `theorem` | [eq_X_sub_C_of_splits_of_single_root](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/eq-x-sub-c-of-splits-of-single-root.md) | 422 | `result-track:13d1effb994aceaf2a38b4a7e4735398ab75fea02e0b89044c3952490feb6854` |
| 64 | `theorem` | [mem_lift_of_splits_of_roots_mem_range](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/mem-lift-of-splits-of-roots-mem-range.md) | 429 | `result-track:7f39e5582d212f4f30217c6baa1fafa3324707a7a16558ea090627e936bf6476` |
| 65 | `theorem` | [splits_of_natDegree_eq_two](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-of-natdegree-eq-two.md) | 440 | `result-track:bb949e13480ae834ac38c77f568f09fe33fa128a27fd4db7752d74607133a055` |
| 66 | `theorem` | [splits_of_degree_eq_two](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-of-degree-eq-two.md) | 450 | `result-track:4e75860684db1ebec22a74ba18bdee99e1a8e4b017d6bea542210a332a642624` |
| 67 | `theorem` | [splits_of_exists_multiset](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-of-exists-multiset.md) | 462 | `result-track:1cbc8fbfcd12f4e8a6fd578b53bfbc62a104cec7e20b207526cea7cb2b29b680` |
| 68 | `theorem` | [splits_of_splits_id](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-of-splits-id.md) | 478 | `result-track:b0d2dc7026236b0397cbc0c4bfc15098fe472063fe14391ca83c301e4afcb85d` |
| 69 | `theorem` | [splits_iff_exists_multiset](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-iff-exists-multiset.md) | 490 | `result-track:4b9974b632c1bcea72700e638a961cb912cea6f2fb5d69cb97e2523dcece1c0d` |
| 70 | `theorem` | [splits_of_comp](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-of-comp.md) | 496 | `result-track:5f165390949ad0732f0c20544325daf2e97430a06058df9f02827db3ff98d083` |
| 71 | `theorem` | [splits_id_of_splits](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-id-of-splits.md) | 506 | `result-track:90c25768de2fb31226db2c44b2ab17361dbae6e13dbb0a95de993ec1572d4e2b` |
| 72 | `theorem` | [splits_comp_of_splits](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-comp-of-splits.md) | 510 | `result-track:b761f85fa527dc8d20c5819034d948027d53a837c0f0119ed8307951a9f8ad69` |
| 73 | `theorem` | [splits_of_algHom](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-of-alghom.md) | 516 | `result-track:972bfb3693751136c82841da8ccb9d3fcfa90f44ad843ccc6d66ed54019320bd` |
| 74 | `theorem` | [splits_of_isScalarTower](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-of-isscalartower.md) | 521 | `result-track:3e0f41f0791a314e886fbd1acc9ee0fe11436c8685a6d1a5d271534b1f4bb3c8` |
| 75 | `theorem` | [splits_iff_card_roots](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/splits-iff-card-roots.md) | 526 | `result-track:7d02115aba2884c6eabb02e19ec4bfbf244304f638bacfedb76b9e4dc292c38e` |
| 76 | `theorem` | [aeval_root_derivative_of_splits](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/aeval-root-derivative-of-splits.md) | 537 | `result-track:4ea7978eba222884d279b02a5e746cb8790408e92c92f1bcd66044ff226a5d2d` |
| 77 | `theorem` | [prod_roots_eq_coeff_zero_of_monic_of_splits](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/prod-roots-eq-coeff-zero-of-monic-of-splits.md) | 548 | `result-track:ba69668b3ffc9680710ad64ab04ee8d948cc0dd88d2db85923c99c006b392671` |
| 78 | `theorem` | [sum_roots_eq_nextCoeff_of_monic_of_split](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialSplits.lean/declarations/sum-roots-eq-nextcoeff-of-monic-of-split.md) | 561 | `result-track:c6fafeb40917c5911305ca5591f7e0c02adaac65b35acaade3270bf628006de6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b112dcc63f830e8d1abc2f45aa442784414fe466a628cbf6dc092c4ec99a2e1a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Splits/Variant5d08c22c15f51dac86b928563d83686b7693daf5ba657b2526c028a72e137a55.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Splits/Variant5d08c22c15f51dac86b928563d83686b7693daf5ba657b2526c028a72e137a55.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
