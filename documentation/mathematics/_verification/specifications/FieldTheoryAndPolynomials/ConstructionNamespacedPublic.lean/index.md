# Verification target: Construction Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0fd60394cccf4618d01efbad3ab77ca6d6d4fd43",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Construction/Variant26d9c188d057f58ae0d0981647f3a3f54dba3112f807016ba3008059aac33dbc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0fd60394cccf4618d01efbad3ab77ca6d6d4fd43`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Construction/Variant26d9c188d057f58ae0d0981647f3a3f54dba3112f807016ba3008059aac33dbc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Construction/Variant26d9c188d057f58ae0d0981647f3a3f54dba3112f807016ba3008059aac33dbc.lean.json)

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
| 1 | `def` | [factor](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/declarations/factor.md) | 59 | `declaration-track:3a7769fe5a5bc841fd3c624e4b70f2f847db2c6ba1fc6aa48811dbcc6c6d4b35` |
| 2 | `theorem` | [irreducible_factor](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/declarations/irreducible-factor.md) | 62 | `result-track:d7017b5b8f7ba1f9bd4b34a982bc66d5df2362fe2858a879d38fed8f74d61d3e` |
| 3 | `theorem` | [fact_irreducible_factor](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/declarations/fact-irreducible-factor.md) | 69 | `result-track:c5b2fc6d8b4c5d647ce3bcc6de678b30ffc1426dee392cb2b3fc75d1ab7cffa3` |
| 4 | `theorem` | [factor_dvd_of_not_isUnit](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/declarations/factor-dvd-of-not-isunit.md) | 74 | `result-track:a212047488709ecda3146e39d65b8d25573898b4aafce78c5e658d81e78e9693` |
| 5 | `theorem` | [factor_dvd_of_degree_ne_zero](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/declarations/factor-dvd-of-degree-ne-zero.md) | 79 | `result-track:19a28c06c3b0df3b13e43cfeaab996e91e39f8f5c71cdace19332ff8d7a38bc0` |
| 6 | `theorem` | [factor_dvd_of_natDegree_ne_zero](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/declarations/factor-dvd-of-natdegree-ne-zero.md) | 82 | `result-track:7250101f9b27a720f0176b46be317a541cb9283dd65f04610f266114fbc7bfc8` |
| 7 | `lemma` | [isCoprime_iff_aeval_ne_zero](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/declarations/iscoprime-iff-aeval-ne-zero.md) | 85 | `result-track:cdad75f6cc45a173f4bef668cfb10b61438bc616f2f54412e0bc25dad86e1918` |
| 8 | `def` | [removeFactor](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/declarations/removefactor.md) | 97 | `declaration-track:783aeeac26055927cf914ab5b8609a53a4e3dba0cb9780fb3f5dee247e143fda` |
| 9 | `theorem` | [X_sub_C_mul_removeFactor](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/declarations/x-sub-c-mul-removefactor.md) | 100 | `result-track:e03ff77a4265746f05d6e374e29a2a074964b95d74f286e8838de9f41fed5f91` |
| 10 | `theorem` | [natDegree_removeFactor](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/declarations/natdegree-removefactor-source-edition-2.md) | 107 | `result-track:cdea59da9e775272c6f9397ff86b6a35295131c7239fc200d4257efc34105412` |
| 11 | `theorem` | [natDegree_removeFactor'](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/declarations/natdegree-removefactor.md) | 110 | `result-track:4e2f918fc0a1604a32a394f37275eace2cf9d54bcb603b5bbe55bbd9a7e73d1f` |
| 12 | `def` | [SplittingFieldAuxAux](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/declarations/splittingfieldauxaux.md) | 120 | `declaration-track:27c3dd187c07d0c2108f0eb0aebe6ea3f6698d54d43355b8dcfe7c7c87a4417c` |
| 13 | `def` | [SplittingFieldAux](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/declarations/splittingfieldaux.md) | 133 | `declaration-track:0ae1c3106b0f6c3eec8bc1693ab0813cc52db138b3cbe4e7a03b6ac21fbadf8a` |
| 14 | `instance` | [SplittingFieldAux.field](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/declarations/splittingfieldaux-field.md) | 136 | `declaration-track:80d7dfc707e43b3c186df55a451013b1fad809ec22fa03c88e23a32064aada18` |
| 15 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 140 | `declaration-track:87334bc58c32fed4e51bcefc1cb0b0e698a1787fdfac85310505236e78a6d43f` |
| 16 | `instance` | [SplittingFieldAux.algebra](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/declarations/splittingfieldaux-algebra.md) | 143 | `declaration-track:0fb0cff47d5005d007ff930460baf6c4ee512156451787fe4f66d08e0e0349b1` |
| 17 | `theorem` | [succ](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/declarations/succ.md) | 149 | `result-track:42055ac2f45538e30fff78bdea41a76edfd5e7f14f482504e66770ccd15d5285` |
| 18 | `instance` | [algebra'''](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/declarations/algebra-source-edition-2.md) | 153 | `declaration-track:6cf3ad03d455c3c850d04cc064475c60728fccc3bdfce40597452cd046cecb69` |
| 19 | `instance` | [algebra'](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/declarations/algebra.md) | 157 | `declaration-track:0e36c5c9dcfdd5eb912808a722667147a78c4b367d2fa35cba081e089c911f63` |
| 20 | `instance` | [algebra''](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/declarations/algebra-source-edition-3.md) | 160 | `declaration-track:948804e54cf9eded00f21707014a164190bc4396282af71805fee2a69edb2b01` |
| 21 | `instance` | [scalar_tower'](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/declarations/scalar-tower.md) | 163 | `declaration-track:a2dc3b1dac13294de98c08acf7167edb8876046046eaea511f82ab5fe50014a3` |
| 22 | `theorem` | [algebraMap_succ](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/declarations/algebramap-succ.md) | 167 | `result-track:8237c5a25c76449bf3f48c08759132f1b5eccd3343e3f531d9eece237e5f97fa` |
| 23 | `theorem` | [splits](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/declarations/splits.md) | 174 | `result-track:200cdb26758db046594320ae2df48cce671a449acd2ca001b5cafb9f775283a9` |
| 24 | `theorem` | [adjoin_rootSet](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/declarations/adjoin-rootset-source-edition-2.md) | 189 | `result-track:f4734f89d98c2a9b04c320f63800ab98386118b6e32c271d84fccc7c619426f2` |
| 25 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 214 | `declaration-track:d03703ba7ea0fa8558a1e5bba85631dd2bdc9aca504e26e03e6a4337bddd6f91` |
| 26 | `def` | [SplittingField](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/declarations/splittingfield.md) | 221 | `declaration-track:a8b17e80561997549a0390f317695e23aaeaa84e802402c5dfef75a7577492fc` |
| 27 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 233 | `declaration-track:b951366b0303fb391bf30f8fa2ddca8415ab0f16084d72ffd43124fbb0496f07` |
| 28 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 238 | `declaration-track:9e52e9b38072ae4ea37929edaca3c94a38af39ce2ef6ac4a8c157f3fcd92ec9a` |
| 29 | `def` | [algEquivSplittingFieldAux](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/declarations/algequivsplittingfieldaux.md) | 242 | `declaration-track:8dbcddfc4aa0882565a500a9471ab3f64969f32379f13a1347ec29c4c7238c28` |
| 30 | `instance` | [instGroupWithZero](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/declarations/instgroupwithzero.md) | 245 | `declaration-track:ff420f8c45b4933008d689b63add1fe2fd5d6748d3dddfdd8fd76cc4733e0ac4` |
| 31 | `instance` | [instField](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/declarations/instfield.md) | 252 | `declaration-track:a7e7aafb80e1c09edf7390e768613291f631dab1ae8369ee0cc79768494c4477` |
| 32 | `instance` | [instCharZero](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/declarations/instcharzero.md) | 267 | `declaration-track:ba86bb0508df8b440b3f081b2a499778b0e94b0da4f0269fc13ebca2e9a403b7` |
| 33 | `instance` | [instCharP](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/declarations/instcharp.md) | 270 | `declaration-track:872b67668998aa9f5ee87820752a4cc4c1fc4d11676c8b499576188cba8dd829` |
| 34 | `instance` | [instExpChar](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/declarations/instexpchar.md) | 273 | `declaration-track:e1b4ba534e7c3e156a082c39295e02026fdf0c5b56b71873a964f1047aabffaf` |
| 35 | `instance` | [Construction Namespaced Public](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/declarations/splittingfield-source-line-276-occurrence-2.md) | 276 | `declaration-track:fe98b30ce25e93239244e589ee91ccd86127ac7d80ae7fbfef29dc66f471b469` |
| 36 | `theorem` | [splits](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/declarations/splits-source-edition-2.md) | 281 | `result-track:f540be5a4b8d6471eccfa2949bd6f3c0c504110cd074d60ad93f979e920582e5` |
| 37 | `def` | [lift](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/declarations/lift.md) | 287 | `declaration-track:0b4213813e3fa55b8d1de769f6956fa9b7e78dff8e11bedf67970432477c398a` |
| 38 | `theorem` | [adjoin_rootSet](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/declarations/adjoin-rootset.md) | 290 | `result-track:69f2f6398b2206317406bbcef1f0651608940a62af88adb122f3b34e9ac5f678` |
| 39 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/declarations/instance.md) | 303 | `declaration-track:0d40e07199c35315e9993bd554f0fa6f928fa599595b530e6c5eb2020ce0ebd4` |
| 40 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 306 | `declaration-track:96726526b08a8e0c37a8aa7f509ed7bc3a81f04ccd7e03f23dbf29a383fce717` |
| 41 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 309 | `declaration-track:3f78ca43ccc6363384d298a7bfbe1b385af9196004cf5197f9b419d15657b3b0` |
| 42 | `def` | [algEquiv](../../../../FieldTheoryAndPolynomials/ConstructionNamespacedPublic.lean/declarations/algequiv.md) | 313 | `declaration-track:03004fd73c4ee66910ac65ea08c8094cce77667c474a04a890092c282fb1737c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e2e25cf05482baecdc9dfe3a0439e01697fb28c228bd2119c00683548b7184d9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Construction/Variant26d9c188d057f58ae0d0981647f3a3f54dba3112f807016ba3008059aac33dbc.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Construction/Variant26d9c188d057f58ae0d0981647f3a3f54dba3112f807016ba3008059aac33dbc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
