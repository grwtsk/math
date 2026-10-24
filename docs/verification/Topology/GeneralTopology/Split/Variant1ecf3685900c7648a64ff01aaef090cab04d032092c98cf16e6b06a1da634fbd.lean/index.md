# Verification target: GRWTSK.Topology.GeneralTopology.Split.Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb538b796d39d195a00650b3ca3fffc6e05bf965",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb538b796d39d195a00650b3ca3fffc6e05bf965`.

Source path: `GRWTSK/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.BoxIntegral.Partition.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [splitLower](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/splitlower--56355defecb3e1c5bb92cec3.md) | 59 | `declaration-track:56355defecb3e1c5bb92cec3f029791683117c41be63304f1fac107a49a04d16` |
| 2 | `theorem` | [coe_splitLower](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/coe-splitlower--f7fb97bd493f40485c4b2133.md) | 64 | `result-track:f7fb97bd493f40485c4b2133fac01a4baca22e63432416f3f414bbf76df71ec7` |
| 3 | `theorem` | [splitLower_le](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/splitlower-le--fe8dbee847886923d707ae73.md) | 72 | `result-track:fe8dbee847886923d707ae732c1b26b82010142612ca2ea7f1d1fd3b1d729260` |
| 4 | `theorem` | [splitLower_eq_bot](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/splitlower-eq-bot--502f2f0aa0693fe4c0625f47.md) | 77 | `result-track:502f2f0aa0693fe4c0625f471dab1b97ad7d46a4131af7b393e277367efb6b57` |
| 5 | `theorem` | [splitLower_eq_self](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/splitlower-eq-self--177456d0e01beb5ba2f75711.md) | 83 | `result-track:177456d0e01beb5ba2f7571133c1d465540fd72fe8ddcb2748c66f4d2ec98e32` |
| 6 | `theorem` | [splitLower_def](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/splitlower-def--42ac5b9cff6d41c5180766d6.md) | 87 | `result-track:42ac5b9cff6d41c5180766d6811cb5dcb836aa2922ee97ceb1ea209110945e16` |
| 7 | `def` | [splitUpper](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/splitupper--5f59007c1e76ac848608b840.md) | 99 | `declaration-track:5f59007c1e76ac848608b8404e7ab4c0a5841dec2a34cde1ac9038a86e6f560d` |
| 8 | `theorem` | [coe_splitUpper](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/coe-splitupper--e52dfd5cbd690e4c24fe99fa.md) | 104 | `result-track:e52dfd5cbd690e4c24fe99fafb77c9cf2da676ab26394f7f3013eb78eb7e1103` |
| 9 | `theorem` | [splitUpper_le](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/splitupper-le--c568071877ec478177ffb306.md) | 113 | `result-track:c568071877ec478177ffb30664bb86db2ea442dba4355bf4ba6bd5a111590255` |
| 10 | `theorem` | [splitUpper_eq_bot](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/splitupper-eq-bot--6d2688fedddd2d70292f31a4.md) | 118 | `result-track:6d2688fedddd2d70292f31a40a3a059bf056502920854166b19901d515930e6a` |
| 11 | `theorem` | [splitUpper_eq_self](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/splitupper-eq-self--fb8586e3ca294a8bca0f0b98.md) | 124 | `result-track:fb8586e3ca294a8bca0f0b98fbb3816502a9009850fa7de1c0c69bba64b23e23` |
| 12 | `theorem` | [splitUpper_def](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/splitupper-def--4e5e77f0fe856a8953b260eb.md) | 128 | `result-track:4e5e77f0fe856a8953b260ebc2f93787abc729328fd83613bb5dc064d71b1dd0` |
| 13 | `theorem` | [disjoint_splitLower_splitUpper](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/disjoint-splitlower-splitupper--9529a648f520b01bffba8ab8.md) | 136 | `result-track:9529a648f520b01bffba8ab8455b297268863cbe5765a12ac85cce87fa6027af` |
| 14 | `theorem` | [splitLower_ne_splitUpper](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/splitlower-ne-splitupper--0a8a63cc6c6f7d5da60dc336.md) | 144 | `result-track:0a8a63cc6c6f7d5da60dc336b1aad5f92411fefe49b9e0f4266c21e8415f9743` |
| 15 | `def` | [split](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/split--9b4fd7361837d6b375df46a5.md) | 161 | `declaration-track:9b4fd7361837d6b375df46a569d5f3fb522c808d828874a05dd4065c91f3d95b` |
| 16 | `theorem` | [mem_split_iff](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/mem-split-iff--79e0f482b086c7f46ec76243.md) | 175 | `result-track:79e0f482b086c7f46ec76243acbb3a1363c1c539896c58f6124827b5ad639660` |
| 17 | `theorem` | [mem_split_iff'](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/mem-split-iff--05c9b825e5fb3d8a527c3fa3.md) | 179 | `result-track:05c9b825e5fb3d8a527c3fa352cf87dbb93d29df7fe5e652cef8d5b0d766dd5a` |
| 18 | `theorem` | [iUnion_split](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/iunion-split--cc393707c82b1704d4640141.md) | 185 | `result-track:cc393707c82b1704d464014160caba678d8633a09bebe23e51596242af163b91` |
| 19 | `theorem` | [isPartitionSplit](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/ispartitionsplit--7e3b478f26072ce338349d78.md) | 189 | `result-track:7e3b478f26072ce338349d78e20e8320eb0abed33f70386e0ec8626b5a5a9595` |
| 20 | `theorem` | [sum_split_boxes](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/sum-split-boxes--df9bd327689aa4a06a631357.md) | 194 | `result-track:df9bd327689aa4a06a631357efd07d3ee7fd3b98aaebb82790f25873d11f5bad` |
| 21 | `theorem` | [split_of_not_mem_Ioo](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/split-of-not-mem-ioo--44a270fb64698414275fe909.md) | 201 | `result-track:44a270fb64698414275fe909cc9cc411f7c82efc29105c3882c376a8933f09c1` |
| 22 | `theorem` | [coe_eq_of_mem_split_of_mem_le](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/coe-eq-of-mem-split-of-mem-le--b865e57f69739c2e342e46e3.md) | 211 | `result-track:b865e57f69739c2e342e46e34dfcbe568557da9ecead053cd81d51da8c5e3e29` |
| 23 | `theorem` | [coe_eq_of_mem_split_of_lt_mem](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/coe-eq-of-mem-split-of-lt-mem--71cafa088249521a697ecd43.md) | 218 | `result-track:71cafa088249521a697ecd4336f238d26029c1c6299c746b5355f3bffc0bd8ed` |
| 24 | `theorem` | [restrict_split](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/restrict-split--1618a376accedb0ab66ab152.md) | 226 | `result-track:1618a376accedb0ab66ab152c26c1d9b482b3e1427ca21519a103aef5559bd99` |
| 25 | `theorem` | [inf_split](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/inf-split--f3e144b341f3ce70fa430c50.md) | 234 | `result-track:f3e144b341f3ce70fa430c50cd430d869e3e3daf08825173439eea297d98dcf4` |
| 26 | `def` | [splitMany](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/splitmany--b3af16ef847552dee9dfc74e.md) | 241 | `declaration-track:b3af16ef847552dee9dfc74efdf4252a25dfc347aa12cb9492ffdd52eb7ed186` |
| 27 | `theorem` | [splitMany_empty](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/splitmany-empty--04d7bbab9f6efa64fa04245e.md) | 246 | `result-track:04d7bbab9f6efa64fa04245e1311d0ec83ed75a308097dd02ae83910881e951c` |
| 28 | `theorem` | [splitMany_insert](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/splitmany-insert--7875b267ac89f5dd18eb7d13.md) | 251 | `result-track:7875b267ac89f5dd18eb7d133937a16ddfcf274404a4260fd14e5e9942db8aba` |
| 29 | `theorem` | [splitMany_le_split](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/splitmany-le-split--500f6e2a80385104fdf9e337.md) | 256 | `result-track:500f6e2a80385104fdf9e337b2dab1c140d5a6530faf25ee2e74c0c677ae7359` |
| 30 | `theorem` | [isPartition_splitMany](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/ispartition-splitmany--3064016155070268b2969a03.md) | 261 | `result-track:3064016155070268b2969a03164d10157f8410853df66a24d89a23607f4ae278` |
| 31 | `theorem` | [iUnion_splitMany](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/iunion-splitmany--ddfb9ebb7059b91ed2075c62.md) | 267 | `result-track:ddfb9ebb7059b91ed2075c6211fe3d25e01359fd7b0d338767c6fa708b65837b` |
| 32 | `theorem` | [inf_splitMany](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/inf-splitmany--12e525ef2613520348bcf168.md) | 271 | `result-track:12e525ef2613520348bcf16808e86b732c8303c8aba3f3d9b4451f58915efe24` |
| 33 | `theorem` | [not_disjoint_imp_le_of_subset_of_mem_splitMany](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/not-disjoint-imp-le-of-subset-of-mem-splitmany--56edaab1dc7253fdd2cc258a.md) | 282 | `result-track:56edaab1dc7253fdd2cc258af94e67b53d557c14e59ebb95cfece26b5a5b6758` |
| 34 | `theorem` | [eventually_not_disjoint_imp_le_of_mem_splitMany](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/eventually-not-disjoint-imp-le-of-mem-splitmany--64522482dc31190a31904b49.md) | 307 | `result-track:64522482dc31190a31904b49026fcfbfa9440379bb72f15a89356156f83d0dc3` |
| 35 | `theorem` | [eventually_splitMany_inf_eq_filter](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/eventually-splitmany-inf-eq-filter--da1a5607477ef7a96bcf97e1.md) | 318 | `result-track:da1a5607477ef7a96bcf97e123a07c003d4bbfcb9622d7cff150852f4fedd2b6` |
| 36 | `theorem` | [exists_splitMany_inf_eq_filter_of_finite](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/exists-splitmany-inf-eq-filter-of-finite--ee2e165fa87102246d35c90f.md) | 334 | `result-track:ee2e165fa87102246d35c90f5afdfef19e974fff524c9d58e92b17acc8d5bcd6` |
| 37 | `theorem` | [IsPartition.exists_splitMany_le](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/ispartition-exists-splitmany-le--b952363e3424ebd0210d4286.md) | 343 | `result-track:b952363e3424ebd0210d42867652a5c59666680dcab4efb43309172b12661a1a` |
| 38 | `theorem` | [exists_iUnion_eq_diff](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/exists-iunion-eq-diff--8d926c41b460b05926d9b619.md) | 352 | `result-track:8d926c41b460b05926d9b6197497f50347eb77f276e6ff4c665bcd32b3251d1a` |
| 39 | `def` | [compl](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/compl--c5027397b74a9388f68fa61e.md) | 361 | `declaration-track:c5027397b74a9388f68fa61ebaa96c5ee3ba5d9a261da8e0e422d5e18d6f8c0f` |
| 40 | `theorem` | [iUnion_compl](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/iunion-compl--0f94caff224f66047048104a.md) | 366 | `result-track:0f94caff224f66047048104a58d32927ca3ca4c4d40c27a7e1fd58c0ca8bfa39` |
| 41 | `theorem` | [compl_congr](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/compl-congr--4754c5b82100b9181e624a61.md) | 372 | `result-track:4754c5b82100b9181e624a61e931020d9af3e51da2a42929e79a67b5828a6ab9` |
| 42 | `theorem` | [IsPartition.compl_eq_bot](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/ispartition-compl-eq-bot--55dbdb67f632de414b3f4cf1.md) | 378 | `result-track:55dbdb67f632de414b3f4cf1214d21c8e8edd7741cf67f6c5e489af84008c16d` |
| 43 | `theorem` | [compl_top](../../../../../mathematics/Topology/GeneralTopology/Split/Variant1ecf3685900c7648a64ff01aaef090cab04d032092c98cf16e6b06a1da634fbd.lean/declarations/compl-top--66afd544c67af9f84947f0a9.md) | 383 | `result-track:66afd544c67af9f84947f0a9aa8d6660c06fbd63795b592f2d281c612c4c1c9e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
