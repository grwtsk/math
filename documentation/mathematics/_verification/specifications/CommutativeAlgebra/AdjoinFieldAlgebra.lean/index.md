# Verification target: Adjoin Field Algebra

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "910e790383ba50665867ba0f25deff11492e64bc",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Field/Variante7061c70d8892cac63868031f65b855a3f2bda4a9d766d3af4bb67adcba02c35.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/AdjoinFieldAlgebra.lean/index.md) · [Full source](../../../../CommutativeAlgebra/AdjoinFieldAlgebra.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `910e790383ba50665867ba0f25deff11492e64bc`.

Source path: `GRWTSK/Algebra/Field/Variante7061c70d8892cac63868031f65b855a3f2bda4a9d766d3af4bb67adcba02c35.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Field/Variante7061c70d8892cac63868031f65b855a3f2bda4a9d766d3af4bb67adcba02c35.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Splits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Adjoin.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AdjoinRoot` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AlgEquiv.adjoinSingletonEquivAdjoinRootMinpoly](../../../../CommutativeAlgebra/AdjoinFieldAlgebra.lean/declarations/algequiv-adjoinsingletonequivadjoinrootminpoly.md) | 33 | `declaration-track:802f04342b9b1d8865806545a3af9ea729d54358a7601172ce2cb76cd48932b1` |
| 2 | `def` | [Algebra.adjoin.liftSingleton](../../../../CommutativeAlgebra/AdjoinFieldAlgebra.lean/declarations/algebra-adjoin-liftsingleton.md) | 43 | `declaration-track:260b4cb9e38183cd472216e5c1a666050070fc3bae4cddd56b4963b9e5432fdb` |
| 3 | `theorem` | [Polynomial.lift_of_splits](../../../../CommutativeAlgebra/AdjoinFieldAlgebra.lean/declarations/polynomial-lift-of-splits.md) | 53 | `result-track:636b9f5fbee842441d6d0e2fb1b3a66612412f413764d3da875774b04a85c5cb` |
| 4 | `theorem` | [IsIntegral.mem_range_algHom_of_minpoly_splits](../../../../CommutativeAlgebra/AdjoinFieldAlgebra.lean/declarations/isintegral-mem-range-alghom-of-minpoly-splits.md) | 88 | `result-track:cfd66814d099a629302b44e75995a486e09cc013bcb95bb265be1d203e547773` |
| 5 | `theorem` | [IsIntegral.mem_range_algebraMap_of_minpoly_splits](../../../../CommutativeAlgebra/AdjoinFieldAlgebra.lean/declarations/isintegral-mem-range-algebramap-of-minpoly-splits.md) | 95 | `result-track:5edc10d957c03279bdfb6dd58a4c494a94c6e25cdd72997093ffd6e362894a96` |
| 6 | `theorem` | [minpoly_neg_splits](../../../../CommutativeAlgebra/AdjoinFieldAlgebra.lean/declarations/minpoly-neg-splits.md) | 100 | `result-track:e0da243d12e9af2e89a823231e79f51582ca32dd73f5da6e1b9a08be2087bfb5` |
| 7 | `theorem` | [minpoly_add_algebraMap_splits](../../../../CommutativeAlgebra/AdjoinFieldAlgebra.lean/declarations/minpoly-add-algebramap-splits.md) | 107 | `result-track:528d381cb5fb379c7ca9d8a14e7cb12f3257dc77eb6fa33b66a6362daada6a0a` |
| 8 | `theorem` | [minpoly_sub_algebraMap_splits](../../../../CommutativeAlgebra/AdjoinFieldAlgebra.lean/declarations/minpoly-sub-algebramap-splits.md) | 112 | `result-track:b71952adf4c65f5f792555f2fc6fa55b10b084ca4c10bda7472524dc0e66fbf7` |
| 9 | `theorem` | [minpoly_algebraMap_add_splits](../../../../CommutativeAlgebra/AdjoinFieldAlgebra.lean/declarations/minpoly-algebramap-add-splits.md) | 117 | `result-track:2db7eaa5cf95ad5e47f82cef014ceb3b85317bc3a83a3665d36f5affe8966fe4` |
| 10 | `theorem` | [minpoly_algebraMap_sub_splits](../../../../CommutativeAlgebra/AdjoinFieldAlgebra.lean/declarations/minpoly-algebramap-sub-splits.md) | 122 | `result-track:bdf0423f8dd773abafa7bf69afab6ed03dc1b0e2c9019184b5d6dfcd2b863988` |
| 11 | `theorem` | [IsIntegral.minpoly_splits_tower_top'](../../../../CommutativeAlgebra/AdjoinFieldAlgebra.lean/declarations/isintegral-minpoly-splits-tower-top.md) | 132 | `result-track:30bfab84e5f62658bca19d61905ec09e6442b5f6c32d95ad8e15b3c59a15ca7a` |
| 12 | `theorem` | [IsIntegral.minpoly_splits_tower_top](../../../../CommutativeAlgebra/AdjoinFieldAlgebra.lean/declarations/isintegral-minpoly-splits-tower-top-source-edition-2.md) | 138 | `result-track:e9494ae62a8cdfc2a40fa7fa99dd863c115da89abbda29189018e66a9e33e028` |
| 13 | `lemma` | [Subalgebra.adjoin_rank_le](../../../../CommutativeAlgebra/AdjoinFieldAlgebra.lean/declarations/subalgebra-adjoin-rank-le.md) | 146 | `result-track:e394f2573a9fd144f22c47ce089dd6d79ecaf627112bc20272a9e386cedce64f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1d51d8b0a196447e05fee97d8a13411a4c724bb80a43d46cb5ae3f3ec0849cc4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Field/Variante7061c70d8892cac63868031f65b855a3f2bda4a9d766d3af4bb67adcba02c35.lean","GRWTSK/_verification/specifications/Algebra/FieldTheory/Variante7061c70d8892cac63868031f65b855a3f2bda4a9d766d3af4bb67adcba02c35.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
