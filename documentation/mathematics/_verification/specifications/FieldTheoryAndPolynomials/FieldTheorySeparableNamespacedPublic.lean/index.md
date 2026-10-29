# Verification target: Field Theory Separable Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bea99b75a7a74dfd1384b24093c889e4b8ff43b9",
  "lexical_observation_count": 90,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Separable/Variantd122ebbc7f1b0d733343452e1a7e8dcbc7d62472f0c829f3907fb4c2a7f5ce5c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bea99b75a7a74dfd1384b24093c889e4b8ff43b9`.

Source path: `GRWTSK/Algebra/Separable/Variantd122ebbc7f1b0d733343452e1a7e8dcbc7d62472f0c829f3907fb4c2a7f5ce5c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Separable/Variantd122ebbc7f1b0d733343452e1a7e8dcbc7d62472f0c829f3907fb4c2a7f5ce5c.lean.json)

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
| 1 | `def` | [Separable](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/separable.md) | 52 | `declaration-track:45f593188ad20fdec81233b9265448693496eb674f3e896ea735636adaa85162` |
| 2 | `theorem` | [separable_def](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/separable-def-source-edition-2.md) | 55 | `result-track:979bc620237a3b41b4ba41a035c635a3a717c499a56b70c33e7a07a455691f35` |
| 3 | `theorem` | [separable_def'](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/separable-def.md) | 58 | `result-track:81810438fdc2bffb96ae6dbf7aaf9229702d360c1b91745498e5a5d5d8cf6881` |
| 4 | `theorem` | [not_separable_zero](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/not-separable-zero.md) | 61 | `result-track:d10049b3400135639529ce0b10586718930aff6cca905b1d28cf82efba92b5d3` |
| 5 | `theorem` | [Separable.ne_zero](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/separable-ne-zero.md) | 65 | `result-track:f2e1f678bcf51587b097c01fced6f479028112ec9bdfc5b3823a5e6523548350` |
| 6 | `theorem` | [separable_one](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/separable-one.md) | 69 | `result-track:90ec2d5077758f937014ac03a0f7f807050116fc758780cb9890eef43ffca768` |
| 7 | `theorem` | [separable_of_subsingleton](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/separable-of-subsingleton.md) | 73 | `result-track:fc70bd44c137131b23c135693184a352438377ed8be6a7c22a8a1aa2e4a7c524` |
| 8 | `theorem` | [separable_X_add_C](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/separable-x-add-c.md) | 76 | `result-track:2ddf19913c5ecb322edceeb63bb4420a99d361797e5a7ada9d5e4bbbb85c7022` |
| 9 | `theorem` | [separable_X](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/separable-x.md) | 80 | `result-track:d4a2e29673851a67fea098f09a6877e935ada3f10193372e836a1a5c275effbe` |
| 10 | `theorem` | [separable_C](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/separable-c.md) | 84 | `result-track:4d4acc9131112a0ac6e1b0c7dc59b6a4859c3149d3a805ed1f3e74a2d03cd2b4` |
| 11 | `theorem` | [Separable.of_mul_left](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/separable-of-mul-left.md) | 87 | `result-track:61b51be1e4d8a316d811849ced09ff0306b6c0c78b1fc3384269e619e288f1ef` |
| 12 | `theorem` | [Separable.of_mul_right](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/separable-of-mul-right.md) | 91 | `result-track:b10ebf7a5f87ff781fb4545693c6cc768bfeaa0c2d3d9e57f1a6946b258a5c05` |
| 13 | `theorem` | [Separable.of_dvd](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/separable-of-dvd.md) | 95 | `result-track:91fc2a23bde5d7dae854c9a1ff78608b079d5f1a85b1b8405067384280617dab` |
| 14 | `theorem` | [separable_gcd_left](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/separable-gcd-left.md) | 99 | `result-track:895c0bb0b03d731cef7754f281122f212451fdd969531d6d7001d5924fe3f74b` |
| 15 | `theorem` | [separable_gcd_right](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/separable-gcd-right.md) | 104 | `result-track:94f202539bea095c992ce9de97054c9b53a87c7fe8a368aaa34e4caf854ee1cb` |
| 16 | `theorem` | [Separable.isCoprime](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/separable-iscoprime.md) | 109 | `result-track:91015c002380fb3514ccf949b68f3d551c40b37f5b93c60d4356408a6e04b1d2` |
| 17 | `theorem` | [Separable.of_pow'](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/separable-of-pow-source-edition-2.md) | 113 | `result-track:a253decceeaa9898e9721a775f23e072241bb5c4c3bd614c3f2498cc23b9449f` |
| 18 | `theorem` | [Separable.of_pow](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/separable-of-pow.md) | 121 | `result-track:99f483c4743d52360af7627f40475cabf98abc83a351c22f2d7054c441813229` |
| 19 | `theorem` | [Separable.map](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/separable-map.md) | 125 | `result-track:4086f6065469f35052cef03f37ea7399cecaf922cbdcdb97c34c3149e6069dfa` |
| 20 | `theorem` | [Field Theory Separable Namespaced Public](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/separable-source-line-131-occurrence-2.md) | 131 | `result-track:838c3d6374c949146e4f98c5c48f33ac5f675a9aceba1bc52b27797de3b5bd2d` |
| 21 | `theorem` | [Field Theory Separable Namespaced Public](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/separable-iff.md) | 135 | `result-track:7996c9bb0e54fe65347bcdeca342fc611c330a95e1a596812ba0065b9dfd626f` |
| 22 | `theorem` | [Separable.mul_unit](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/separable-mul-unit.md) | 138 | `result-track:f989f6989ea3a77e616b89d0bbf812808e074f7469877858c9cf8ee2d8711ba7` |
| 23 | `theorem` | [Separable.unit_mul](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/separable-unit-mul.md) | 141 | `result-track:9e3b9d485ad868bf2f306f471158e764f939bac579e184c5b649d82bb00d34f9` |
| 24 | `theorem` | [Separable.eval₂_derivative_ne_zero](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/separable-eval-derivative-ne-zero.md) | 144 | `result-track:778eefdb46b0f5f032bb52390c7a9568c2efe82ee94c22f4bafc13d77b8f1f29` |
| 25 | `theorem` | [Separable.aeval_derivative_ne_zero](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/separable-aeval-derivative-ne-zero.md) | 152 | `result-track:9af083f9d06d30f79f5aaa9aa0d6bbf9ab9d9e8192baad1864c5f5d73d073f37` |
| 26 | `theorem` | [isUnit_of_self_mul_dvd_separable](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/isunit-of-self-mul-dvd-separable.md) | 159 | `result-track:33ad59ad95ebc8de79b3d5ab4c85f3693166cbff8b55c73d96c420f256bf7b8b` |
| 27 | `theorem` | [emultiplicity_le_one_of_separable](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/emultiplicity-le-one-of-separable.md) | 172 | `result-track:b71a7dabaa98bff6a73c2cd79b2b5682d59a82f227774c84c1aa263c31f838bb` |
| 28 | `theorem` | [Separable.squarefree](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/separable-squarefree.md) | 184 | `result-track:bb641b22ac5502460d04297ffd2fd4cbd059d9ad9818bae96f9471a61e075b9c` |
| 29 | `theorem` | [separable_X_sub_C](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/separable-x-sub-c.md) | 194 | `result-track:07ed8a558a139fcc01f702f0dfaf0976389cc55d19d02430d8d960e7b4c41abd` |
| 30 | `theorem` | [Separable.mul](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/separable-mul.md) | 197 | `result-track:56e372bde024d23b42957ae30c9d8bb5ba6d12bcdcd8f88101e99a6a509af605` |
| 31 | `theorem` | [separable_prod'](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/separable-prod-source-edition-2.md) | 203 | `result-track:f72aba96ec68dd1b66e81895cef4cbb690e10413abcfd6f736102d889d94307a` |
| 32 | `theorem` | [separable_prod](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/separable-prod.md) | 214 | `result-track:f5b1f81d0c620c31aaef0f568b8ae7ade24c40d46e20a7196ec3bceebddb071f` |
| 33 | `theorem` | [Separable.inj_of_prod_X_sub_C](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/separable-inj-of-prod-x-sub-c.md) | 218 | `result-track:a778fd1b04219e5a0bf7831f147c52a65f2487cfdd44458687a3f8e5829e9b0f` |
| 34 | `theorem` | [Separable.injective_of_prod_X_sub_C](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/separable-injective-of-prod-x-sub-c.md) | 228 | `result-track:9e2fb50cf5277517f9875c54ba6113f0a3da72c68acb071834bd5e6ed2ae68ff` |
| 35 | `theorem` | [nodup_of_separable_prod](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/nodup-of-separable-prod.md) | 232 | `result-track:8b243b8a7e455410ffa3754d3d29314cd357522d4ffef78a9cb8339d4d9955f2` |
| 36 | `theorem` | [separable_X_pow_sub_C_unit](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/separable-x-pow-sub-c-unit.md) | 240 | `result-track:38784daaae2187fcea3c37e6f441aa32dbc7ecab0f6c30de9aca97fe056652c8` |
| 37 | `theorem` | [separable_C_mul_X_pow_add_C_mul_X_add_C](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/separable-c-mul-x-pow-add-c-mul-x-add-c.md) | 259 | `result-track:05ebbddca6368296955189eb06247e36395e209cfd2aa944b5d3f09c1824c4f9` |
| 38 | `theorem` | [separable_C_mul_X_pow_add_C_mul_X_add_C'](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/separable-c-mul-x-pow-add-c-mul-x-add-c-source-edition-2.md) | 272 | `result-track:55c84f2ce3fa7fc1a58b7f250a5fac2e1e52d4ad4f08c7dbf35525c0b54c0e99` |
| 39 | `theorem` | [rootMultiplicity_le_one_of_separable](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/rootmultiplicity-le-one-of-separable.md) | 277 | `result-track:a389f32aff1069743a1ddf27572973d06a33d58e524158d2c7fec6387c54ca13` |
| 40 | `theorem` | [count_roots_le_one](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/count-roots-le-one.md) | 292 | `result-track:7bf8b40de442e9ac550bdfa9ad122d7470aab6abc4f4b08e4900939c9db879cf` |
| 41 | `theorem` | [nodup_roots](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/nodup-roots.md) | 297 | `result-track:53fb5e7a3c07f47b6b7582e8e0bd665ab060d63cb6a329fef91ce2faca025461` |
| 42 | `theorem` | [separable_iff_derivative_ne_zero](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/separable-iff-derivative-ne-zero.md) | 307 | `result-track:313fbeec3c2f794292809192e3fc2f8d66574bee9198460e5a364a2aa540808d` |
| 43 | `theorem` | [separable_map](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/separable-map-source-edition-2.md) | 319 | `result-track:f5f850425395cb45d5538b35ce619baa2df6b322fb647a31c36f22afaa002aca` |
| 44 | `theorem` | [separable_prod_X_sub_C_iff'](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/separable-prod-x-sub-c-iff-source-edition-2.md) | 326 | `result-track:9d2ec874b9f782b4da72eb5a3ccdec53031dfa50c7945e6b45539abd9180795e` |
| 45 | `theorem` | [separable_prod_X_sub_C_iff](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/separable-prod-x-sub-c-iff.md) | 337 | `result-track:12db25fcefd8af3c612bb5755128c5a1f29b1607119555148cbba3f516c1eeda` |
| 46 | `theorem` | [separable_or](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/separable-or.md) | 345 | `result-track:2999de7dc9a6005b375eed043f18dda119f87cf34df306778959fcdea209a871` |
| 47 | `theorem` | [exists_separable_of_irreducible](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/exists-separable-of-irreducible.md) | 362 | `result-track:ca8f2001d7458f9ab34e24682c014e740669ef818b63676eb31d016a5fff019e` |
| 48 | `theorem` | [isUnit_or_eq_zero_of_separable_expand](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/isunit-or-eq-zero-of-separable-expand.md) | 387 | `result-track:d369e02032001cef9141cdbad0cfa65286c3db26f8635ff5ec0df5e4ec6419c4` |
| 49 | `theorem` | [unique_separable_of_irreducible](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/unique-separable-of-irreducible.md) | 398 | `result-track:d43e49a92fb6029536fc22290d8a6f799ec455127d2e98c945345a07b03f5a23` |
| 50 | `theorem` | [separable_X_pow_sub_C](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/separable-x-pow-sub-c-source-edition-2.md) | 422 | `result-track:714b01f5de88f0618a7ccbfa80b24950bbd45a2e1b9d43e5ffbd4200770fced5` |
| 51 | `theorem` | [separable_X_pow_sub_C'](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/separable-x-pow-sub-c.md) | 427 | `result-track:1e032620eface06b770f7cc87b6a496e3d8d7f5068a671dcd4e6f09759f580b5` |
| 52 | `theorem` | [X_pow_sub_C_separable_iff](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/x-pow-sub-c-separable-iff.md) | 434 | `result-track:0d6b76af52332f28e4176c246a3a219c4b55473bf18fe12a0b81caf9fb371d90` |
| 53 | `theorem` | [X_pow_sub_one_separable_iff](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/x-pow-sub-one-separable-iff.md) | 443 | `result-track:10fedce0cae1a09afcc6a7dbc75ed9110ca4e3f5fc5fc3b93ccb36e334adadea` |
| 54 | `theorem` | [card_rootSet_eq_natDegree](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/card-rootset-eq-natdegree.md) | 450 | `result-track:fad8d6852ac1cbd59e52bdf32163c977836029fba2f2c8a9b2d902517cc69133` |
| 55 | `theorem` | [nodup_roots_iff_of_splits](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/nodup-roots-iff-of-splits.md) | 459 | `result-track:8e39f0bc94284ccd1d8c1b1e46567905e0b275129c4487e262bfdedb1b12c7e2` |
| 56 | `theorem` | [nodup_aroots_iff_of_splits](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/nodup-aroots-iff-of-splits.md) | 471 | `result-track:673a39ec3ee515d40abe22a23895ce56e51f4f43d7705f0f499493d2ba502b1a` |
| 57 | `theorem` | [card_rootSet_eq_natDegree_iff_of_splits](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/card-rootset-eq-natdegree-iff-of-splits.md) | 475 | `result-track:cd87b2ae33831dba59212b070b29a33ec906cf168e5184ada39b7635f9fa2283` |
| 58 | `theorem` | [eq_X_sub_C_of_separable_of_root_eq](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/eq-x-sub-c-of-separable-of-root-eq.md) | 485 | `result-track:ff760db11eca010e2451766ecd520b245d984d3b0c06a69b2263292445145422` |
| 59 | `theorem` | [exists_finset_of_splits](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/exists-finset-of-splits.md) | 504 | `result-track:5dd25a742571e78f409743e89c08bd613cab0fe8e82f2e77d78c3899535cc2c8` |
| 60 | `theorem` | [Field Theory Separable Namespaced Public](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/separable-source-line-518-occurrence-2.md) | 518 | `result-track:d435abfc2e684eae33ef21abfd7b95478e5648b4752f4b3674f472437c0e502c` |
| 61 | `def` | [IsSeparable](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/isseparable.md) | 547 | `declaration-track:268390be644e63c998b2eb1bb925c443d0673146fd2929ff1a0b209d6fb58a3f` |
| 62 | `class` | [Algebra.IsSeparable](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/algebra-isseparable.md) | 557 | `declaration-track:d73dd3f257250f814d763c79456b4a41eb1aad8621788db7fef86eb4333008bb` |
| 63 | `theorem` | [Algebra.IsSeparable.isSeparable](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/algebra-isseparable-isseparable.md) | 562 | `result-track:48102362bd3513f740b491dc9402c3295d35065a4b6fbe51e2e2e90c579807c0` |
| 64 | `theorem` | [IsSeparable.isIntegral](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/isseparable-isintegral.md) | 568 | `result-track:488dd039c007ff4aab01af96d8f281026a3d436a8a1d762019e35017a82c22ca` |
| 65 | `theorem` | [Algebra.IsSeparable.isIntegral](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/algebra-isseparable-isintegral.md) | 574 | `result-track:8ecdcc94cc7988c910fbaff856385cfe6d7152f8828986d3efeffb6d70b1d744` |
| 66 | `instance` | [Algebra.IsSeparable.isAlgebraic](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/algebra-isseparable-isalgebraic.md) | 578 | `declaration-track:49929ec60a236909b5071a73e8be4feeb145ede0a07b77cb1b687c4bfd44d750` |
| 67 | `theorem` | [Algebra.isSeparable_iff](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/algebra-isseparable-iff.md) | 584 | `result-track:70d2b2ebdce1808dac0083af687c95ec48e84df2b1dbcee4d0e29e0ba9de42b0` |
| 68 | `lemma` | [isSeparable_map_iff](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/isseparable-map-iff.md) | 591 | `result-track:3d4ad5787f272ece12697460cf369a74d214b96f2fc41acd367fed522f549978` |
| 69 | `lemma` | [IsSeparable.map](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/isseparable-map.md) | 595 | `result-track:69a2be06483bea70bb3041efac61a4d94ac07b530db146d4597afed70ac95b91` |
| 70 | `lemma` | [Subalgebra.isSeparable_iff](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/subalgebra-isseparable-iff.md) | 599 | `result-track:73cf57e361fb79b487af517953a5c91ff7c6fc60c4c5ce2aaaa113efadfbd34b` |
| 71 | `theorem` | [AlgEquiv.isSeparable_iff](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/algequiv-isseparable-iff.md) | 612 | `result-track:925a89199bf16752b5f8c230932335cac760b67fb53cedefd2d8dfdfcbb9b8f7` |
| 72 | `theorem` | [AlgEquiv.Algebra.isSeparable](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/algequiv-algebra-isseparable.md) | 616 | `result-track:1919f8f2b48ca2bfbe78deba89c78365e69462f5d9ad1f979564d41aba2fe28d` |
| 73 | `theorem` | [AlgEquiv.Algebra.isSeparable_iff](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/algequiv-algebra-isseparable-iff.md) | 619 | `result-track:9291da0baea5dbb9be0dace37ce3aa8d918df8de3d29e4637ce722ead841f38e` |
| 74 | `theorem` | [IsSeparable.tower_top](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/isseparable-tower-top.md) | 632 | `result-track:b59899b5e7c682f8814ce0d6aa1cffeef036252bf76f4beadb3353b115323647` |
| 75 | `theorem` | [Algebra.isSeparable_tower_top_of_isSeparable](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/algebra-isseparable-tower-top-of-isseparable.md) | 640 | `result-track:001427d3e9dbaf7bace7ee8bf80f85481bd4874c582606c4f5856409d2b278b8` |
| 76 | `theorem` | [isSeparable_algebraMap](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/isseparable-algebramap.md) | 657 | `result-track:fa08b9ea3e8c8e1ed6ba69dc076cda920eb571e4c0672ff7db68d3a3627a5cb4` |
| 77 | `instance` | [Algebra.isSeparable_self](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/algebra-isseparable-self.md) | 661 | `declaration-track:9e32d8a03713b1f339115e24a33a811bb2ff62ddeeddf7c50f75072b85bf33ba` |
| 78 | `theorem` | [IsSeparable.of_integral](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/isseparable-of-integral.md) | 666 | `result-track:9d2655eca549b7e03bc45542ca725c81789a1988c4636dfd5623a79b647825bb` |
| 79 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/instance.md) | 672 | `declaration-track:c7f673a6e4fb553803507b57645d672b02dc2904450b4abad90e091ee99e2f14` |
| 80 | `lemma` | [IsSeparable.of_algHom](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/isseparable-of-alghom.md) | 681 | `result-track:0ac6d0aaee23b32014fe95ffa26d1c19832a908c111f57dca5aee90171d8fbac` |
| 81 | `theorem` | [IsSeparable.tower_bot](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/isseparable-tower-bot.md) | 691 | `result-track:cef79f78ff8dedacd1a4e4d2ff5a63147655e93e8fcedd0670856e8ea9617a78` |
| 82 | `theorem` | [Algebra.isSeparable_tower_bot_of_isSeparable](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/algebra-isseparable-tower-bot-of-isseparable.md) | 698 | `result-track:b13be021bd8c933e74208ebee3a662f50e93a20f95ec4f63a253cb1583080cd3` |
| 83 | `theorem` | [Algebra.IsSeparable.of_algHom](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/algebra-isseparable-of-alghom.md) | 705 | `result-track:d709a699c9a9c0467d12b16e2d8d80e203185e905ae531780b872bb08c4f7649` |
| 84 | `instance` | [isSeparable_tower_bot](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/isseparable-tower-bot-source-edition-2.md) | 713 | `declaration-track:f9b38cce49b11c5e1ebdb438150696bfda8eda9d4b30d3cbe1b9e89c29fbed88` |
| 85 | `instance` | [isSeparable_tower_top](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/isseparable-tower-top-source-edition-2.md) | 716 | `declaration-track:d45e29f3310f136299f5c32f452ffc34e86e90962b99338c143746f598da7679` |
| 86 | `lemma` | [IsSeparable.of_equiv_equiv](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/isseparable-of-equiv-equiv.md) | 732 | `result-track:3c70af45101c31cb338ddf01415183fc08914fc497b353d793827498d208b3b1` |
| 87 | `lemma` | [Algebra.IsSeparable.of_equiv_equiv](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/algebra-isseparable-of-equiv-equiv.md) | 748 | `result-track:5e27b1f75f9ed86e5fa96f575f61dca071ef196bebe42039cba5f6051f74db33` |
| 88 | `lemma` | [Algebra.IsSeparable.iff_of_equiv_equiv](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/algebra-isseparable-iff-of-equiv-equiv.md) | 752 | `result-track:8e1b78df58c07651a8ed673599acabb49999f18f43dbf08e0a6fa65b0248ac49` |
| 89 | `theorem` | [AlgHom.natCard_of_powerBasis](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/alghom-natcard-of-powerbasis.md) | 767 | `result-track:41ad25052df3ed23cf9df89785369c470a41e0bfa5aced1cb157303be8d2ab71` |
| 90 | `theorem` | [AlgHom.card_of_powerBasis](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableNamespacedPublic.lean/declarations/alghom-card-of-powerbasis.md) | 776 | `result-track:12825cd4609c3d0abbbbdf7e2cdabe8e6ddd3ba378c7d3b836ae3e938943e659` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0b904f2814f7946d5b78cbd4ae18e8dab26cbc3efd544621225e92476734b5e6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Separable/Variantd122ebbc7f1b0d733343452e1a7e8dcbc7d62472f0c829f3907fb4c2a7f5ce5c.lean","GRWTSK/_verification/specifications/Algebra/Separable/Variantd122ebbc7f1b0d733343452e1a7e8dcbc7d62472f0c829f3907fb4c2a7f5ce5c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
