# Verification target: Countable Countable Iff Nonempty Encodable

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a92f2fa5308414a24919605f916589c02304c64e",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant659b77443450f23be00b51f1795c4494fd7fff5db7f90007a9e5265d6d0a79ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a92f2fa5308414a24919605f916589c02304c64e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant659b77443450f23be00b51f1795c4494fd7fff5db7f90007a9e5265d6d0a79ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant659b77443450f23be00b51f1795c4494fd7fff5db7f90007a9e5265d6d0a79ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Countable.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Subsingleton` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.List` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Preorder.Finite` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Countable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/countable.md) | 45 | `declaration-track:418d5f2852018415a54dc99655bd969b7d19eecee91a5efb6fc30d3fafeb4d44` |
| 2 | `theorem` | [countable_coe_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/countable-coe-iff.md) | 48 | `result-track:73ec5d874608e50e44198cdcaa2880e9210cfe6a8a13b9fe5346e9b60cfdf885` |
| 3 | `theorem` | [to_countable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/to-countable.md) | 51 | `result-track:87233a05b98c76f6b83e98c40bdb92a428c48f73a73ec971fdaeedc995594a6f` |
| 4 | `theorem` | [countable_iff_exists_injective](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/countable-iff-exists-injective.md) | 56 | `result-track:9336b5c9e1e6d4df24b0995aca46b687ee4a2b4186a7bfdb9baa31192681c872` |
| 5 | `theorem` | [countable_iff_exists_injOn](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/countable-iff-exists-injon.md) | 62 | `result-track:529038ee1b3a640919aa9bf307a52a8948260227e4f9f30a51a113ee781df5ec` |
| 6 | `theorem` | [countable_iff_nonempty_encodable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/countable-iff-nonempty-encodable.md) | 65 | `result-track:4ce80c50b2ed3c6f77d35f9e78c24a5ce009c6f28bd586479101a469fac4d165` |
| 7 | `def` | [Countable.toEncodable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/countable-toencodable.md) | 71 | `declaration-track:803bb8b89cc65e168d550473681543bed1b76ba3d199f8c398148a34c94ba0ee` |
| 8 | `def` | [enumerateCountable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/enumeratecountable.md) | 78 | `declaration-track:dc3a215887b121f5903756ae8e936b09e40bf5166697aa921606824c0eb2de9a` |
| 9 | `theorem` | [subset_range_enumerate](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/subset-range-enumerate.md) | 83 | `result-track:0bf7f4373234ed8e2f35035c3256a10aacbe9746f9374bede28f9d6a2c526850` |
| 10 | `lemma` | [range_enumerateCountable_subset](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/range-enumeratecountable-subset.md) | 89 | `result-track:ecbd99bd41c117a6ee7f768f7e9c89289219016cae5c083bce10ddae81d6ff29` |
| 11 | `lemma` | [range_enumerateCountable_of_mem](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/range-enumeratecountable-of-mem.md) | 97 | `result-track:27d9a0a751ffee5c291e0fea41baae48b80f7e44b59c943eea59d4a62a88f2f5` |
| 12 | `lemma` | [enumerateCountable_mem](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/enumeratecountable-mem.md) | 103 | `result-track:64c561d6ce9c0a8e1c0c537a14ade2cd6a07b58c90973148f5d10b41dd92493c` |
| 13 | `theorem` | [Countable.mono](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/countable-mono.md) | 111 | `result-track:c38b7ac1288ab997d156473990db88bbc00238d4b60033db811948ea02217e45` |
| 14 | `theorem` | [countable_range](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/countable-range.md) | 114 | `result-track:d4c89f7077848c835d3f591bd4655d047d8995ed9140feeb5be38495a66c9111` |
| 15 | `theorem` | [countable_iff_exists_subset_range](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/countable-iff-exists-subset-range.md) | 117 | `result-track:d0aaf1adddaf86af0fce2b4cb6170f8480b4b0fd8aceed79a67d3e563b585a86` |
| 16 | `theorem` | [countable_iff_exists_surjective](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/countable-iff-exists-surjective.md) | 127 | `result-track:4090eb7bbe1a3f236a5493dc35bdcaf40c3a31f374eca50e4f590b6444a17f5e` |
| 17 | `theorem` | [countable_univ_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/countable-univ-iff.md) | 133 | `result-track:0038f7f674b5a07c45eacd12779c8c1353320ea90f7296fd7323b0f69e262020` |
| 18 | `theorem` | [countable_univ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/countable-univ.md) | 136 | `result-track:bce37dc56f8ab5f5a421e122567ef8d28ccc9419c18aac1a288c3d047040d492` |
| 19 | `theorem` | [not_countable_univ_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/not-countable-univ-iff.md) | 139 | `result-track:114a883ed1b5ad8123977e5f0175225b9c2d8569cee1117e37cef6fa9b3b78e3` |
| 20 | `theorem` | [not_countable_univ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/not-countable-univ.md) | 142 | `result-track:a342f91fa959c30d1341bd4cb326eedf522e785f2e105701ea61ceeeb1763bf5` |
| 21 | `theorem` | [Countable.exists_eq_range](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/countable-exists-eq-range.md) | 147 | `result-track:8f5aeb3c59c2d3e2be1b7858b5f96eeddea09d1fbb527fb9ec4dba003ad059bd` |
| 22 | `theorem` | [countable_empty](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/countable-empty.md) | 153 | `result-track:3efa71d21ff2f79f8925cf7771398b5b2af7357d6cd90e52f8d5842d80bedbe0` |
| 23 | `theorem` | [countable_singleton](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/countable-singleton.md) | 155 | `result-track:f3c62dbf7c40f82039fa20a6c12ddd82765c30c7c94b17400c7519c83a6769cd` |
| 24 | `theorem` | [Countable.image](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/countable-image.md) | 157 | `result-track:c3c1e85d6daf580a303e72f5709d40aa8669339a261b4fb6f1ad3680ffc3601b` |
| 25 | `theorem` | [MapsTo.countable_of_injOn](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/mapsto-countable-of-injon.md) | 162 | `result-track:0f6fad637238689189b904dab415afffb0c705f4ab8c69a554aa5d8b657e2124` |
| 26 | `theorem` | [Countable.preimage_of_injOn](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/countable-preimage-of-injon.md) | 168 | `result-track:8a4443efa8fb997e155772553705ce6081febfebd31c62850069b2c5d6f7a6d4` |
| 27 | `theorem` | [Countable.preimage](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/countable-preimage.md) | 172 | `result-track:268eafa773c9b477a13ab4e0ab98f85be3536d280db097f886e651bb66bc0df8` |
| 28 | `theorem` | [exists_seq_iSup_eq_top_iff_countable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/exists-seq-isup-eq-top-iff-countable.md) | 176 | `result-track:8e6e4d60e68da7e7435ad12adb807cfaf0f637d5cf491eacfdc1e78f8e606df4` |
| 29 | `theorem` | [exists_seq_cover_iff_countable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/exists-seq-cover-iff-countable.md) | 193 | `result-track:d65faaf726b9debe1b8ff8c054c22be0048e6dfba72313c0e554605d34dccbc8` |
| 30 | `theorem` | [countable_of_injective_of_countable_image](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/countable-of-injective-of-countable-image.md) | 198 | `result-track:9248a90f25ea46e1c4aff16efec4936060919b2068b0e2fbd8c5253e196af1ac` |
| 31 | `theorem` | [countable_iUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/countable-iunion.md) | 202 | `result-track:557453bc79d2a5a887f24af3dfd206a1fc5973ec5b3330abbe60317c42149e11` |
| 32 | `theorem` | [countable_iUnion_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/countable-iunion-iff.md) | 209 | `result-track:d857e12940f44480fb11f8e4a6e81f7d5779da81abde48ecbf287ccb6aab2924` |
| 33 | `theorem` | [Countable.biUnion_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/countable-biunion-iff.md) | 213 | `result-track:da88bfb7a5e2b0498f8cc56159c52ad19bf8547c7fbbdf559c93a0562ae843bb` |
| 34 | `theorem` | [Countable.sUnion_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/countable-sunion-iff.md) | 218 | `result-track:308036bb258ce6b839476c0dc0b795e8d7fae28de50c4e32545ea3669a7b29b3` |
| 35 | `theorem` | [countable_union](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/countable-union.md) | 226 | `result-track:1f1f1fdd1dcc02aefaec08ad4d4a37676a199038d29a2098a523957e3c4f42cf` |
| 36 | `theorem` | [Countable.union](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/countable-union-source-edition-2.md) | 229 | `result-track:92be49acad35740ddb56c63fd1b3edbdb02dbdab4042dfc7c32732acf616d560` |
| 37 | `theorem` | [Countable.of_diff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/countable-of-diff.md) | 232 | `result-track:2148baeaa7f10bf6c34242cf0efe06676ad2f1d2a68a3a678951fd6f9efd555e` |
| 38 | `theorem` | [countable_insert](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/countable-insert.md) | 236 | `result-track:4a6113d45a79f0e5fa5d18f0e7b18edd7cfb18ed0c3dcf7ce580943f84abcedc` |
| 39 | `theorem` | [Countable.insert](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/countable-insert-source-edition-2.md) | 239 | `result-track:f8500833373b6a5b3ed6d65f47c65b64e7d64791185c00f3a24bef0b5310d3b6` |
| 40 | `theorem` | [Finite.countable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/finite-countable.md) | 242 | `result-track:c4313d421c69387f372627f2240ca134e1724d5eb0129ff4c4053244419e2c3c` |
| 41 | `theorem` | [Countable.of_subsingleton](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/countable-of-subsingleton.md) | 246 | `result-track:c9cb712f1025c6d356233502e13b5edb808231f91bb8a9ece901967e2003c7c8` |
| 42 | `theorem` | [Subsingleton.countable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/subsingleton-countable.md) | 249 | `result-track:67e7b19bc654e9bd9dae08efb02bab4639438253edd72ff014525a19c897e686` |
| 43 | `theorem` | [countable_isTop](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/countable-istop.md) | 252 | `result-track:de966a20a2507607a2093a24be63b6618d00fa3715161811321887ad90e52543` |
| 44 | `theorem` | [countable_isBot](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/countable-isbot.md) | 255 | `result-track:1c6467a2ea1b8452d1429973f8bf885ad20282d188e8ecad82c65e958e86bb6f` |
| 45 | `theorem` | [countable_setOf_finite_subset](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/countable-setof-finite-subset.md) | 259 | `result-track:37763087724d180a66c46d1c30d381465e6910dfb2e59bed2eac50a54a34d0e2` |
| 46 | `theorem` | [Countable.setOf_finite](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/countable-setof-finite.md) | 269 | `result-track:250996bb817e6e1e5fc8c672a71d06fa122485a16528ace7bd9c926705c79c2d` |
| 47 | `theorem` | [countable_univ_pi](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/countable-univ-pi.md) | 272 | `result-track:6f79831cf3232da9d3701096b0d780efc189cd7a1ea117cb7a3c0eca8574c129` |
| 48 | `theorem` | [countable_pi](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/countable-pi.md) | 276 | `result-track:3cd11d94544a62ccfe8b79db94285b366a27294cd406754710c11b2a95782260` |
| 49 | `theorem` | [Countable.prod](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/countable-prod.md) | 280 | `result-track:388f915c5ef9b97fcc6a13309e95e2606459bc2a329e0f5511bbd9192b0abc23` |
| 50 | `theorem` | [Countable.image2](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/countable-image2.md) | 284 | `result-track:03bea5ec69bf66e460f772cfb4141549590d23b4eb70ba8a51e35ca30d20ff43` |
| 51 | `theorem` | [countable_setOf_nonempty_of_disjoint](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/countable-setof-nonempty-of-disjoint.md) | 291 | `result-track:9b9715d2de7ead856609715d8e48761e129aaef72539c97a1351483406a96feb` |
| 52 | `theorem` | [Finset.countable_toSet](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableCountableIffNonemptyEncodable.lean/declarations/finset-countable-toset.md) | 312 | `result-track:b0fc28156f40362822a66fb5f4821034688944faa01f669f4c93c087e7097134` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4af827b9c118b6efa7f2e08f4263740804474cc10107c178358c5d588fbe6f5d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant659b77443450f23be00b51f1795c4494fd7fff5db7f90007a9e5265d6d0a79ec.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant659b77443450f23be00b51f1795c4494fd7fff5db7f90007a9e5265d6d0a79ec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
