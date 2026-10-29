# Verification target: Flag Flag Lt Flag

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c7f97a277f6adf2c940a8122ba899640dada739",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Flag/Variant14291d22e9cc4a81d69263bb4aed1438b39df3becfc0e64b63c02817a8734473.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagFlagLtFlag.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagFlagLtFlag.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c7f97a277f6adf2c940a8122ba899640dada739`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Flag/Variant14291d22e9cc4a81d69263bb4aed1438b39df3becfc0e64b63c02817a8734473.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Flag/Variant14291d22e9cc4a81d69263bb4aed1438b39df3becfc0e64b63c02817a8734473.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.FlagRange` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual.Basis` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.SimpleRing.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [flag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagFlagLtFlag.lean/declarations/flag.md) | 30 | `declaration-track:93a423658c5c1a5f792b7c2a6f88b9bbc8bd44ed8c2b74fbabb44d9d29b653e2` |
| 2 | `theorem` | [flag_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagFlagLtFlag.lean/declarations/flag-zero.md) | 34 | `result-track:c25d85501e55725749cc7fa1dd8ab576b3a915aa3c02997cfb74d6ba8c26bd56` |
| 3 | `theorem` | [flag_last](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagFlagLtFlag.lean/declarations/flag-last.md) | 37 | `result-track:393e41edfb94d29df17d0969e299ddb431d2b77683e3f284e909bc06d74aea39` |
| 4 | `theorem` | [flag_le_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagFlagLtFlag.lean/declarations/flag-le-iff.md) | 40 | `result-track:36b59028ebe2e74507eb91bc48a26b05d828e77c390492a199cea8ac778118ca` |
| 5 | `theorem` | [flag_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagFlagLtFlag.lean/declarations/flag-succ.md) | 44 | `result-track:0781406bbf83541c16c76db0228c396e98798fceba0ab8310ab8699155b11535` |
| 6 | `theorem` | [self_mem_flag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagFlagLtFlag.lean/declarations/self-mem-flag.md) | 49 | `result-track:0e0a748b390775da462c1325cb07656c1d3ccb9a2fb25ee3c5c7f0336b1fc602` |
| 7 | `theorem` | [self_mem_flag_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagFlagLtFlag.lean/declarations/self-mem-flag-iff.md) | 54 | `result-track:905071280bf64b137140178c61081fb43207c29e37279e0b2e42830875ce27e5` |
| 8 | `theorem` | [flag_mono](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagFlagLtFlag.lean/declarations/flag-mono.md) | 59 | `result-track:c8616054faca82d9bd3ed74ca258de2ff4e85540bc5b35cdb087f6f8fd88f479` |
| 9 | `theorem` | [isChain_range_flag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagFlagLtFlag.lean/declarations/ischain-range-flag.md) | 62 | `result-track:98ea2c9ea990c418f6b885106cee2574951985498143e5855f17acb9da2f5bea` |
| 10 | `theorem` | [flag_strictMono](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagFlagLtFlag.lean/declarations/flag-strictmono.md) | 66 | `result-track:08aba5f1b9623729215513826c1be000df43c513effae9e95d1fbd292ccdb08d` |
| 11 | `lemma` | [flag_le_flag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagFlagLtFlag.lean/declarations/flag-le-flag.md) | 69 | `result-track:5d4f2fe0c220ee3f84970254d0a32e35b181cb9e82aad5dc6e8db7e49d66fdb3` |
| 12 | `lemma` | [flag_lt_flag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagFlagLtFlag.lean/declarations/flag-lt-flag.md) | 72 | `result-track:248f4748ad5071446aca7de31da4056b10afd76ab123a1ef37e8aacfc618a592` |
| 13 | `theorem` | [flag_le_ker_coord_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagFlagLtFlag.lean/declarations/flag-le-ker-coord-iff.md) | 81 | `result-track:52ab930d147d5ad53b8d0da0c255fac2044600d5babe639b926bb106680a060c` |
| 14 | `theorem` | [flag_le_ker_coord](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagFlagLtFlag.lean/declarations/flag-le-ker-coord.md) | 85 | `result-track:91c7af9c5b7f944acb8c27ea8de89f207c8d1e93768595f7b605a3394e665343` |
| 15 | `theorem` | [flag_le_ker_dual](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagFlagLtFlag.lean/declarations/flag-le-ker-dual.md) | 90 | `result-track:a0a2499a46d283c8a3b24ef3219df4fabb41b8fc7e7104d72a27c7fbcc28cb13` |
| 16 | `theorem` | [flag_covBy](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagFlagLtFlag.lean/declarations/flag-covby.md) | 101 | `result-track:9556191bbf38f2fa5e6dbd3cb8a77efc486e8e07a5e51cb61ab1fc43260871b0` |
| 17 | `theorem` | [flag_wcovBy](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagFlagLtFlag.lean/declarations/flag-wcovby.md) | 107 | `result-track:5c204ceaada0f107060d98bc3168c8f8829eb13e848d17628ada93e1c3189ca0` |
| 18 | `def` | [toFlag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagFlagLtFlag.lean/declarations/toflag.md) | 113 | `declaration-track:e060b7d6dd329157ab93e8d87ce088a09ea4b868fd5f1b6f35469d2ee4578321` |
| 19 | `theorem` | [mem_toFlag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagFlagLtFlag.lean/declarations/mem-toflag.md) | 117 | `result-track:e8ade61d1a6030bde077c9234ec084799b12371dffea8f80b44e42bb6d9b43ee` |
| 20 | `theorem` | [isMaxChain_range_flag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FlagFlagLtFlag.lean/declarations/ismaxchain-range-flag.md) | 120 | `result-track:02c9a7893f48f652638a6d026f8c5d9965ce5c9cd7ec0056d6def1662db1c0c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=12b2434008c1cae27d1b5fa2d0bcaef2e3ba6d59e66b637d727b68317d5479bf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Flag/Variant14291d22e9cc4a81d69263bb4aed1438b39df3becfc0e64b63c02817a8734473.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Flag/Variant14291d22e9cc4a81d69263bb4aed1438b39df3becfc0e64b63c02817a8734473.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
