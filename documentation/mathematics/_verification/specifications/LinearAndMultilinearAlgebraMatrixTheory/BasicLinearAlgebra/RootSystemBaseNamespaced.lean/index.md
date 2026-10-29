# Verification target: Root System Base Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "006a0a2da02669687773e0a31fde9d6e03bfa504",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Base/Variant3716b6b6ac9810752dbc89d372f9d10e44a14f46693df0bcd32597bc84db13f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemBaseNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemBaseNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `006a0a2da02669687773e0a31fde9d6e03bfa504`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Base/Variant3716b6b6ac9810752dbc89d372f9d10e44a14f46693df0bcd32597bc84db13f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Base/Variant3716b6b6ac9810752dbc89d372f9d10e44a14f46693df0bcd32597bc84db13f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.RootSystem.IsValuedIn` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Base](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemBaseNamespaced.lean/declarations/base.md) | 62 | `declaration-track:6dd719f99baf6fa65b4556a57ac7706609232726b80e7d59b37562d271417a1d` |
| 2 | `def` | [flip](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemBaseNamespaced.lean/declarations/flip.md) | 79 | `declaration-track:414994ac04d5b5ece817c32001350b123e3295025e298e18a91901c12c27eacc` |
| 3 | `lemma` | [root_ne_neg_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemBaseNamespaced.lean/declarations/root-ne-neg-of-ne.md) | 88 | `result-track:7f55c0724a2cdf9eb11144f99bdbb28ddb4fb78213c43fb0da7040dd5724bf4c` |
| 4 | `lemma` | [root_mem_span_int](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemBaseNamespaced.lean/declarations/root-mem-span-int.md) | 97 | `result-track:56b421e6826025e56b1cff39f218bc60ea174cb48ad44c5cbd575aee7d7ab3d8` |
| 5 | `lemma` | [coroot_mem_span_int](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemBaseNamespaced.lean/declarations/coroot-mem-span-int.md) | 107 | `result-track:a45a6dcbb161146ceae422cf2810818966ac012f7239822ae1f6135ec34658b6` |
| 6 | `lemma` | [span_int_root_support](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemBaseNamespaced.lean/declarations/span-int-root-support.md) | 112 | `result-track:31f69c702a937d8bed3619613df4a71bb5c5cdda16a31b524f97cd358e6ce32a` |
| 7 | `lemma` | [span_int_coroot_support](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemBaseNamespaced.lean/declarations/span-int-coroot-support.md) | 119 | `result-track:0384065f9b709952b49d200f8d1a0aa23160f7eb3c19d81b8f82e78a60ca9664` |
| 8 | `lemma` | [span_root_support](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemBaseNamespaced.lean/declarations/span-root-support.md) | 124 | `result-track:f696439b8155e17e7a9c8260740b3f09449c5b2f9e7b7e2870c02ccad8978560` |
| 9 | `lemma` | [span_coroot_support](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemBaseNamespaced.lean/declarations/span-coroot-support.md) | 129 | `result-track:27c091a7f68c17a676cb49cc3a9691739a122a0660551993388025b760bdffcb` |
| 10 | `lemma` | [eq_one_or_neg_one_of_mem_support_of_smul_mem_aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemBaseNamespaced.lean/declarations/eq-one-or-neg-one-of-mem-support-of-smul-mem-aux.md) | 134 | `result-track:c2d7a87adf14632a4fca0149b0e66bb406e2542c3a7fc289a213035fd277924d` |
| 11 | `lemma` | [eq_one_or_neg_one_of_mem_support_of_smul_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemBaseNamespaced.lean/declarations/eq-one-or-neg-one-of-mem-support-of-smul-mem.md) | 159 | `result-track:01a49ffbca6a2e5e20ccd52b962bc67c8f1274da10c15d32ecc6f5bed15f4be0` |
| 12 | `lemma` | [pos_or_neg_of_sum_smul_root_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemBaseNamespaced.lean/declarations/pos-or-neg-of-sum-smul-root-mem.md) | 179 | `result-track:7bbb019283b428656f1ca5f4125dbde4258536bd3e74821bee83ad8888426172` |
| 13 | `lemma` | [sub_notMem_range_root](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemBaseNamespaced.lean/declarations/sub-notmem-range-root.md) | 207 | `result-track:e8b60b22991a6eb13121d7a17d6104f59d548e0787786d6965298954724ef2a0` |
| 14 | `lemma` | [sub_notMem_range_coroot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemBaseNamespaced.lean/declarations/sub-notmem-range-coroot.md) | 226 | `result-track:b6360771d355f5943da681ab3d412148be39f43358310d83b2ede536ace8757b` |
| 15 | `def` | [toWeightBasis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemBaseNamespaced.lean/declarations/toweightbasis.md) | 240 | `declaration-track:e76e762354dfd531ee24caa3a28731d721d1e91c9382b871ce2c4d45ce08f870` |
| 16 | `lemma` | [toWeightBasis_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemBaseNamespaced.lean/declarations/toweightbasis-apply.md) | 247 | `result-track:5630e5604dbb25de7e0c8949f83aa69bb661dad01983a55cd904ab2fd4554e6c` |
| 17 | `def` | [toCoweightBasis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemBaseNamespaced.lean/declarations/tocoweightbasis.md) | 252 | `declaration-track:739eac4ab8bada7fed7a93abc1cf48e70c04c2c4aac10c0942a9ed7df8a75dc7` |
| 18 | `lemma` | [toCoweightBasis_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemBaseNamespaced.lean/declarations/tocoweightbasis-apply.md) | 256 | `result-track:4622982e278d50d5155c204ffe254d8f0100c15585432fdbfd62528514514880` |
| 19 | `lemma` | [exists_root_eq_sum_nat_or_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemBaseNamespaced.lean/declarations/exists-root-eq-sum-nat-or-neg.md) | 263 | `result-track:7e89a39d7b6328da09610e4d9ed3130912b27f660b865abcc599ed26569284cb` |
| 20 | `lemma` | [exists_root_eq_sum_int](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemBaseNamespaced.lean/declarations/exists-root-eq-sum-int.md) | 280 | `result-track:d8014b8516dba90b098f6193423c2873ada8938c0e4a2bc133dbdbca3223a4c6` |
| 21 | `lemma` | [exists_coroot_eq_sum_int](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemBaseNamespaced.lean/declarations/exists-coroot-eq-sum-int.md) | 286 | `result-track:50cd3710dc1eddc79988678853141bf0a07187aa0de8760eb0061e649c065b84` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fb6ef2c37f0b4866e116742388ef81763bc35e8e3734b42b9d507f6fc6bb6323 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Base/Variant3716b6b6ac9810752dbc89d372f9d10e44a14f46693df0bcd32597bc84db13f6.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Base/Variant3716b6b6ac9810752dbc89d372f9d10e44a14f46693df0bcd32597bc84db13f6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
