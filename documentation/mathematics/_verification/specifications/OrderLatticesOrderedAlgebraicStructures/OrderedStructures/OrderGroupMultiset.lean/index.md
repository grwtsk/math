# Verification target: Order Group Multiset

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38fc0774ba0261b8a8758a29bddd0a976925facb",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variantd299908428ab2b11436326c4abb9be87cf73f6aa7bbffc5c490d2c732736b815.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderGroupMultiset.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderGroupMultiset.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38fc0774ba0261b8a8758a29bddd0a976925facb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variantd299908428ab2b11436326c4abb9be87cf73f6aa7bbffc5c490d2c732736b815.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Multiset/Variantd299908428ab2b11436326c4abb9be87cf73f6aa7bbffc5c490d2c732736b815.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Hom.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Nat.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.ExistsOfLE` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Sub.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Fold` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instAddLeftMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderGroupMultiset.lean/declarations/instaddleftmono.md) | 28 | `declaration-track:d2e7c410b35bf30cbe0a54a192457b77b7be7a0a9c309952ffedf72eaf8f2ba6` |
| 2 | `instance` | [instAddLeftReflectLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderGroupMultiset.lean/declarations/instaddleftreflectle.md) | 30 | `declaration-track:4121ab9dd98d052ba4c27f4fcbd917e352ed5c75b9f8696032ddb039c7d8ea7f` |
| 3 | `instance` | [instAddCancelCommMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderGroupMultiset.lean/declarations/instaddcancelcommmonoid.md) | 33 | `declaration-track:74198e2126d6c89fe9c3ebd2fbd28a17c4f94bf78a7005b7d08dccd6a45eeae9` |
| 4 | `lemma` | [mem_of_mem_nsmul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderGroupMultiset.lean/declarations/mem-of-mem-nsmul.md) | 41 | `result-track:ed8ba02ad611c55ed8fed6c32e7b67e214a34a6a1d2571f6abd55739f6085c70` |
| 5 | `lemma` | [mem_nsmul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderGroupMultiset.lean/declarations/mem-nsmul.md) | 49 | `result-track:a3b8c2fc7d2bd978606aa3697b388d3589bf434c4ff915bdc4bc49b7d2c86fc6` |
| 6 | `lemma` | [mem_nsmul_of_ne_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderGroupMultiset.lean/declarations/mem-nsmul-of-ne-zero.md) | 57 | `result-track:cfac37d27d8ca9ab89e37bbdff1ae19961a213f1dd184c9807408384a3f6fa3e` |
| 7 | `lemma` | [nsmul_cons](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderGroupMultiset.lean/declarations/nsmul-cons.md) | 60 | `result-track:d847211ecf116ffa6a1f5c250aaf187dac46ec669dfbe4b156d0cf2619fd068f` |
| 8 | `def` | [cardHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderGroupMultiset.lean/declarations/cardhom.md) | 68 | `declaration-track:f284d9e77bfac66dad27d27cd386c218118f16fb8fdda33c19a96224c5421ec3` |
| 9 | `lemma` | [card_nsmul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderGroupMultiset.lean/declarations/card-nsmul.md) | 74 | `result-track:cbb08d22e8189f5c04b21ea977f44f1c8b3bf03dcdf48cff1e4dc9a94d9515d8` |
| 10 | `def` | [replicateAddMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderGroupMultiset.lean/declarations/replicateaddmonoidhom.md) | 80 | `declaration-track:4848fe6a851b48643f6de7c5e1e9fc779620539f24950057838b7c137af174c4` |
| 11 | `lemma` | [nsmul_replicate](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderGroupMultiset.lean/declarations/nsmul-replicate.md) | 85 | `result-track:3e32254c96d33dc412973c78c1852fdd44e45f339c4a55ad19457367253fee6f` |
| 12 | `lemma` | [nsmul_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderGroupMultiset.lean/declarations/nsmul-singleton.md) | 88 | `result-track:0f06f25bcb013b3c47caa21006ca982ddaa5036546cc9880ad5dfd669265acdb` |
| 13 | `def` | [mapAddMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderGroupMultiset.lean/declarations/mapaddmonoidhom.md) | 95 | `declaration-track:62cccdb936f752edf5279d87815e3a420625a48d655fbb4086a29f1591bbe476` |
| 14 | `lemma` | [coe_mapAddMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderGroupMultiset.lean/declarations/coe-mapaddmonoidhom.md) | 101 | `result-track:6a3711558009dc3f58f5668b015b04495d03c3cece3814218b3aa03044d8ad02` |
| 15 | `lemma` | [map_nsmul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderGroupMultiset.lean/declarations/map-nsmul.md) | 103 | `result-track:e5640ce8c7bff606d0d14071c049a04a01880c300504949c77d18a8042937546` |
| 16 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderGroupMultiset.lean/declarations/instance-source-edition-2.md) | 111 | `declaration-track:2c19d39162d0823865636b80b0d44c8a3c9e94765e0daae919824d3aa7f8a6b4` |
| 17 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderGroupMultiset.lean/declarations/instance.md) | 113 | `declaration-track:1811dee54c753a3dfd80ee693e041662e4336d8a6f8351b66e89ac68d57fef03` |
| 18 | `lemma` | [filter_nsmul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderGroupMultiset.lean/declarations/filter-nsmul.md) | 124 | `result-track:7ad89b2c3e1e12fb3dcf08e01bf77e989446d3d16aced22d02958ad9ed3f94ec` |
| 19 | `lemma` | [countP_nsmul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderGroupMultiset.lean/declarations/countp-nsmul.md) | 138 | `result-track:3eb52731823b5351f4ba6fd2bca78c1ad78c240010cd2241723e844b4ae05e3e` |
| 20 | `def` | [countPAddMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderGroupMultiset.lean/declarations/countpaddmonoidhom.md) | 143 | `declaration-track:447385c252a419370bc67fec4f228f369b380fc347876afc91a836581d006bbf` |
| 21 | `lemma` | [coe_countPAddMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderGroupMultiset.lean/declarations/coe-countpaddmonoidhom.md) | 148 | `result-track:5854ae8634d733124f854d29eafdb096ea52f366c7c6adeabf24c0d2f3975406` |
| 22 | `lemma` | [dedup_nsmul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderGroupMultiset.lean/declarations/dedup-nsmul.md) | 152 | `result-track:adf1e9f16d7b4e4e810d77e43e307c34814c5b3ed8670c31a613330b193dedac` |
| 23 | `lemma` | [Nodup.le_nsmul_iff_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderGroupMultiset.lean/declarations/nodup-le-nsmul-iff-le.md) | 155 | `result-track:526a85c60d041dcb0b8ef30adca859e76f13cef44f7877a0b065277961c6138c` |
| 24 | `def` | [countAddMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderGroupMultiset.lean/declarations/countaddmonoidhom.md) | 165 | `declaration-track:0f46e50273099ac81ea820532124f5d004914243c7f9e9439a5c45065d01835f` |
| 25 | `lemma` | [coe_countAddMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderGroupMultiset.lean/declarations/coe-countaddmonoidhom.md) | 169 | `result-track:a3e2850838de6edf75ca525155226f203147e7947ce6268a53b50cf8d33ced45` |
| 26 | `lemma` | [count_nsmul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderGroupMultiset.lean/declarations/count-nsmul.md) | 172 | `result-track:3705fa122a60fedee25b8267592da089d1bfa50ff02bdadb893341fa05a4a262` |
| 27 | `lemma` | [addHom_ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderGroupMultiset.lean/declarations/addhom-ext.md) | 179 | `result-track:df0d27c73c8357e5b4819088e309011be77cc90dadcc90557d0f491f95d3d46d` |
| 28 | `theorem` | [le_smul_dedup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderGroupMultiset.lean/declarations/le-smul-dedup.md) | 187 | `result-track:8e84bb9a90bc6f3c449b4124b1f258076f1cb3cfe0f9f20f0bcc56085bac367e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=75d795d8824c4db3e3fbda99cc3a9bad4b108e7e4857727983a0d76a4972d66a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variantd299908428ab2b11436326c4abb9be87cf73f6aa7bbffc5c490d2c732736b815.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Multiset/Variantd299908428ab2b11436326c4abb9be87cf73f6aa7bbffc5c490d2c732736b815.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
