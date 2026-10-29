# Verification target: GRWTSK.Analysis.PartitionOfUnity.DyadicAnnulus

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f56668e34261d00fba8c2a21fb758a973e62aab",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/PartitionOfUnity/DyadicAnnulus.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/DyadicAnnulus.lean/index.md) · [Full source](../../../../RealFunctions/DyadicAnnulus.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f56668e34261d00fba8c2a21fb758a973e62aab`.

Source path: `GRWTSK/Analysis/PartitionOfUnity/DyadicAnnulus.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/PartitionOfUnity/DyadicAnnulus.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.SmoothTransition` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.FiniteDimension` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Complex.FiniteDimensional` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dyadicCutoff](../../../../RealFunctions/DyadicAnnulus.lean/declarations/dyadiccutoff.md) | 25 | `declaration-track:f409c02e13369d1cca59d1b5021d7c2f31a3ed63e58dc349f89bb1edbfb7f736` |
| 2 | `def` | [dyadicAnnulus](../../../../RealFunctions/DyadicAnnulus.lean/declarations/dyadicannulus.md) | 26 | `declaration-track:55dffa825382d5ec62c87b62ffeb220d45894e3647a2b93c2767200c6ca2eaf1` |
| 3 | `lemma` | [dyadicCutoff_small](../../../../RealFunctions/DyadicAnnulus.lean/declarations/dyadiccutoff-small.md) | 28 | `result-track:dbbb8547374246b9dc203c7555cb6b635c9572876fd872c74429c1076e89f16c` |
| 4 | `lemma` | [dyadicCutoff_large](../../../../RealFunctions/DyadicAnnulus.lean/declarations/dyadiccutoff-large.md) | 31 | `result-track:53e11275b8a616c24f2a5c8dd7d53fa8c6acdbd72ee8371320445a018280e271` |
| 5 | `lemma` | [dyadicAnnulus_small](../../../../RealFunctions/DyadicAnnulus.lean/declarations/dyadicannulus-small.md) | 34 | `result-track:ae38d18fd31ea0b59dfea6270f7bf4431ab5df888181e3ad70589a1e06e4af8d` |
| 6 | `lemma` | [dyadicAnnulus_large](../../../../RealFunctions/DyadicAnnulus.lean/declarations/dyadicannulus-large.md) | 38 | `result-track:ab119627d845cdc28a3dec102e54c7ebf1ab27fdb8704c0aca4b316b4b5adfec` |
| 7 | `lemma` | [dyadicAnnulus_contDiff](../../../../RealFunctions/DyadicAnnulus.lean/declarations/dyadicannulus-contdiff.md) | 42 | `result-track:127ad545f8af5ffe95fd177e45b27a917c3fe2fc03918438ba047867fd6aacd7` |
| 8 | `lemma` | [dyadicAnnulus_compact](../../../../RealFunctions/DyadicAnnulus.lean/declarations/dyadicannulus-compact.md) | 47 | `result-track:85c7fa69d5d92317e972f9b0782be9ce13bcaea67f5b20e0c247cde98bc38284` |
| 9 | `lemma` | [dyadicAnnulus_nonneg](../../../../RealFunctions/DyadicAnnulus.lean/declarations/dyadicannulus-nonneg.md) | 57 | `result-track:80c444081cb84f39baf4aeea47369807f29409d7a81973ed09bd1fd663af5b35` |
| 10 | `lemma` | [dyadicAnnulus_norm](../../../../RealFunctions/DyadicAnnulus.lean/declarations/dyadicannulus-norm.md) | 63 | `result-track:b28a8cc9d690b4a0d22c4e3233d87ded9d44c68a46e2826a8c57a88853347cb1` |
| 11 | `lemma` | [dyadicAnnulus_support_scales](../../../../RealFunctions/DyadicAnnulus.lean/declarations/dyadicannulus-support-scales.md) | 69 | `result-track:f18eab52042fc8b7dba0d149f87195d980c94f92596d380b1d86ce8cc4dd63a2` |
| 12 | `theorem` | [dyadicAnnulus_partition](../../../../RealFunctions/DyadicAnnulus.lean/declarations/dyadicannulus-partition.md) | 88 | `result-track:438adea306a26e9521ea0a54571803385c2f00c83a7bc713678c9cadee70dbad` |
| 13 | `theorem` | [dyadicAnnulus_partition_norm](../../../../RealFunctions/DyadicAnnulus.lean/declarations/dyadicannulus-partition-norm.md) | 105 | `result-track:cb6b9975acbc72447db45ffb7292eabe42c7de79ae84dc1e120b299d080dff1a` |
| 14 | `theorem` | [annular_reassembly_summable](../../../../RealFunctions/DyadicAnnulus.lean/declarations/annular-reassembly-summable.md) | 111 | `result-track:b51532fda4894e1d52f19aac9d606932e3a12cc046bb62198ed6e3bcadb99ba0` |
| 15 | `theorem` | [annular_reassembly](../../../../RealFunctions/DyadicAnnulus.lean/declarations/annular-reassembly.md) | 123 | `result-track:63679568100bdbc6b0bf9accfbdb5f9b98b19a1a52dee81ab398d34b06c53eab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6b5e44855f84056b2f636916302bf525de961f104c58f39fbbcbe9866f0464a6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/PartitionOfUnity/DyadicAnnulus.lean","GRWTSK/_verification/specifications/Analysis/PartitionOfUnity/DyadicAnnulus.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
