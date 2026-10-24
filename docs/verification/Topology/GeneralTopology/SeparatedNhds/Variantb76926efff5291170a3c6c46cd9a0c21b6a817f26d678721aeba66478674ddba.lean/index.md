# Verification target: GRWTSK.Topology.GeneralTopology.SeparatedNhds.Variantb76926efff5291170a3c6c46cd9a0c21b6a817f26d678721aeba66478674ddba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a45f35ba3911f8e9166effdfc42401853cc9c270",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SeparatedNhds/Variantb76926efff5291170a3c6c46cd9a0c21b6a817f26d678721aeba66478674ddba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantb76926efff5291170a3c6c46cd9a0c21b6a817f26d678721aeba66478674ddba.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantb76926efff5291170a3c6c46cd9a0c21b6a817f26d678721aeba66478674ddba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a45f35ba3911f8e9166effdfc42401853cc9c270`.

Source path: `GRWTSK/Topology/GeneralTopology/SeparatedNhds/Variantb76926efff5291170a3c6c46cd9a0c21b6a817f26d678721aeba66478674ddba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SeparatedNhds/Variantb76926efff5291170a3c6c46cd9a0c21b6a817f26d678721aeba66478674ddba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Continuous` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.NhdsSet` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SeparatedNhds](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantb76926efff5291170a3c6c46cd9a0c21b6a817f26d678721aeba66478674ddba.lean/declarations/separatednhds--88d8f6406a07cc234b7731e1.md) | 40 | `declaration-track:88d8f6406a07cc234b7731e199058874dcb17e7e9dc03acd5fe455e926e196c5` |
| 2 | `theorem` | [separatedNhds_iff_disjoint](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantb76926efff5291170a3c6c46cd9a0c21b6a817f26d678721aeba66478674ddba.lean/declarations/separatednhds-iff-disjoint--e411b9e4e94bee5c06ef32a5.md) | 43 | `result-track:e411b9e4e94bee5c06ef32a5ddb442cd7b8f99da10585acd682510dbe6fdd537` |
| 3 | `def` | [HasSeparatingCover](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantb76926efff5291170a3c6c46cd9a0c21b6a817f26d678721aeba66478674ddba.lean/declarations/hasseparatingcover--96f6cbb70cbacc7f4b3edefa.md) | 50 | `declaration-track:96f6cbb70cbacc7f4b3edefa3b7ccdf9f2a9f15fb70c1baec40af39bd47cf65b` |
| 4 | `theorem` | [hasSeparatingCovers_iff_separatedNhds](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantb76926efff5291170a3c6c46cd9a0c21b6a817f26d678721aeba66478674ddba.lean/declarations/hasseparatingcovers-iff-separatednhds--04a4d918e2f28234f43c14df.md) | 55 | `result-track:04a4d918e2f28234f43c14df6e7fc8a38337b18223c0c6fa71beae92b6cb2f2e` |
| 5 | `theorem` | [Set.hasSeparatingCover_empty_left](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantb76926efff5291170a3c6c46cd9a0c21b6a817f26d678721aeba66478674ddba.lean/declarations/set-hasseparatingcover-empty-left--3b32d9df974852faa22df586.md) | 98 | `result-track:3b32d9df974852faa22df586498ae0f882bf3f0412619a21fdd16364ab057e63` |
| 6 | `theorem` | [Set.hasSeparatingCover_empty_right](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantb76926efff5291170a3c6c46cd9a0c21b6a817f26d678721aeba66478674ddba.lean/declarations/set-hasseparatingcover-empty-right--0acf5cc416022e1825dc22e7.md) | 102 | `result-track:0acf5cc416022e1825dc22e7b9692e7798e66742def94250bbaa80afd2e69ce4` |
| 7 | `theorem` | [HasSeparatingCover.mono](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantb76926efff5291170a3c6c46cd9a0c21b6a817f26d678721aeba66478674ddba.lean/declarations/hasseparatingcover-mono--cf079bb059940670c8cd742d.md) | 106 | `result-track:cf079bb059940670c8cd742d64b75f239eb7267756ed6ee1d865cf85d30f9db8` |
| 8 | `theorem` | [symm](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantb76926efff5291170a3c6c46cd9a0c21b6a817f26d678721aeba66478674ddba.lean/declarations/symm--d1132a9d28bae8761fe837eb.md) | 121 | `result-track:d1132a9d28bae8761fe837ebd1a02ca5794624f3f5cfef4b38fdf69767dca2c0` |
| 9 | `theorem` | [comm](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantb76926efff5291170a3c6c46cd9a0c21b6a817f26d678721aeba66478674ddba.lean/declarations/comm--52b590b80b07a3ed0753eaea.md) | 124 | `result-track:52b590b80b07a3ed0753eaeafee41352149600fbd07e1632a367f0a49368893d` |
| 10 | `theorem` | [preimage](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantb76926efff5291170a3c6c46cd9a0c21b6a817f26d678721aeba66478674ddba.lean/declarations/preimage--30ff7dd3e882cdeef9e2a067.md) | 127 | `result-track:30ff7dd3e882cdeef9e2a0673014854174cab81a48e68588f9909261566fd3dc` |
| 11 | `theorem` | [disjoint](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantb76926efff5291170a3c6c46cd9a0c21b6a817f26d678721aeba66478674ddba.lean/declarations/disjoint--d42e48240ed50caf4863b710.md) | 133 | `result-track:d42e48240ed50caf4863b7107cf0ba63bdfb1f5227a4127faedec51815270f2d` |
| 12 | `theorem` | [disjoint_closure_left](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantb76926efff5291170a3c6c46cd9a0c21b6a817f26d678721aeba66478674ddba.lean/declarations/disjoint-closure-left--e02ebd5a53e7573442bc19fd.md) | 136 | `result-track:e02ebd5a53e7573442bc19fd98a16a27fa9a0f5ab3645752bf7f3dbc17e400f3` |
| 13 | `theorem` | [disjoint_closure_right](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantb76926efff5291170a3c6c46cd9a0c21b6a817f26d678721aeba66478674ddba.lean/declarations/disjoint-closure-right--df6577724933de988a983495.md) | 140 | `result-track:df6577724933de988a983495eed044bb1d0baa548db81064b24fa3398a8fcdea` |
| 14 | `theorem` | [empty_right](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantb76926efff5291170a3c6c46cd9a0c21b6a817f26d678721aeba66478674ddba.lean/declarations/empty-right--307532e1aa85c60b6eda12ea.md) | 143 | `result-track:307532e1aa85c60b6eda12ea0daf7f9af470bd68cb34d231cb58e21ddd1fee8f` |
| 15 | `theorem` | [empty_left](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantb76926efff5291170a3c6c46cd9a0c21b6a817f26d678721aeba66478674ddba.lean/declarations/empty-left--069c424192e3ece8a724596e.md) | 146 | `result-track:069c424192e3ece8a724596e00329efa1bf2732c8ca8077457f43002ad8b22ab` |
| 16 | `theorem` | [mono](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantb76926efff5291170a3c6c46cd9a0c21b6a817f26d678721aeba66478674ddba.lean/declarations/mono--e3f4ad09c32edd5cfac73618.md) | 149 | `result-track:e3f4ad09c32edd5cfac73618b50d4e521699619fd92e0d83195fcea19735d776` |
| 17 | `theorem` | [union_left](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantb76926efff5291170a3c6c46cd9a0c21b6a817f26d678721aeba66478674ddba.lean/declarations/union-left--5facf079b6798e6bff5a8cba.md) | 153 | `result-track:5facf079b6798e6bff5a8cba9f51fa637b7eabae6378fe1e6500916abea66881` |
| 18 | `theorem` | [union_right](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantb76926efff5291170a3c6c46cd9a0c21b6a817f26d678721aeba66478674ddba.lean/declarations/union-right--dae7836bf4bfc8dfb5060eac.md) | 156 | `result-track:dae7836bf4bfc8dfb5060eac73b7b0fe08a7eff3bb9766766df144ddf73a1681` |
| 19 | `lemma` | [isOpen_left_of_isOpen_union](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantb76926efff5291170a3c6c46cd9a0c21b6a817f26d678721aeba66478674ddba.lean/declarations/isopen-left-of-isopen-union--418c0205071573fb41de67c2.md) | 159 | `result-track:418c0205071573fb41de67c2a0443f7d986261b84627f11c5a7d830e06e944e7` |
| 20 | `lemma` | [isOpen_right_of_isOpen_union](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantb76926efff5291170a3c6c46cd9a0c21b6a817f26d678721aeba66478674ddba.lean/declarations/isopen-right-of-isopen-union--607dfc530eac93e390a6dcc9.md) | 165 | `result-track:607dfc530eac93e390a6dcc9f617e0b850e0ec8f9aee6cb89e599a5106f3fcc4` |
| 21 | `lemma` | [isOpen_union_iff](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantb76926efff5291170a3c6c46cd9a0c21b6a817f26d678721aeba66478674ddba.lean/declarations/isopen-union-iff--4c838d3aa93a4b6e5366aa16.md) | 168 | `result-track:4c838d3aa93a4b6e5366aa1683ba597632d8e4e633d969b96908ace074db00ec` |
| 22 | `lemma` | [isClosed_left_of_isClosed_union](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantb76926efff5291170a3c6c46cd9a0c21b6a817f26d678721aeba66478674ddba.lean/declarations/isclosed-left-of-isclosed-union--faf8d8de3adeed2153efe98f.md) | 172 | `result-track:faf8d8de3adeed2153efe98f4404186e538a5c4f25ded2cef9aaf9a5f6c88685` |
| 23 | `lemma` | [isClosed_right_of_isClosed_union](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantb76926efff5291170a3c6c46cd9a0c21b6a817f26d678721aeba66478674ddba.lean/declarations/isclosed-right-of-isclosed-union--48788b07dd2faf79a7afca9c.md) | 181 | `result-track:48788b07dd2faf79a7afca9ce8cd8e45065e7f00286f1b2b5321cb821d45cb05` |
| 24 | `lemma` | [isClosed_union_iff](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantb76926efff5291170a3c6c46cd9a0c21b6a817f26d678721aeba66478674ddba.lean/declarations/isclosed-union-iff--7a7614ba9abbc7909e88cb2c.md) | 185 | `result-track:7a7614ba9abbc7909e88cb2cbed5328163ac546fc4878613c90fff32ab71518d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
