# Verification target: Source Actual Near Critical Relative

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b61c8ef27ab6d85467f28f967822735d25dc0402",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/1b1c00277c4cf5df40f613c639aee604d64b5bb1d60dd02b4efae8bc6254fea5SourceActualNear/Variantc1a0c6fb9835fea01df3664d3b14819eb13dc0a23d7d5d01b3979bf262e874f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualNearCriticalRelative.lean/index.md) · [Full source](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualNearCriticalRelative.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b61c8ef27ab6d85467f28f967822735d25dc0402`.

Source path: `GRWTSK/Topology/GeneralTopology/1b1c00277c4cf5df40f613c639aee604d64b5bb1d60dd02b4efae8bc6254fea5SourceActualNear/Variantc1a0c6fb9835fea01df3664d3b14819eb13dc0a23d7d5d01b3979bf262e874f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/1b1c00277c4cf5df40f613c639aee604d64b5bb1d60dd02b4efae8bc6254fea5SourceActualNear/Variantc1a0c6fb9835fea01df3664d3b14819eb13dc0a23d7d5d01b3979bf262e874f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualFixedRieszCriticalPairing` — import line 6; external provider; requires a separately pinned dependency.
- `SourceActualShortMangoldtAsymptotic` — import line 7; external provider; requires a separately pinned dependency.
- `SourceCriticalChebyshevSectorEnvelope` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualNearCriticalRelativePairing](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualNearCriticalRelative.lean/declarations/actualnearcriticalrelativepairing.md) | 35 | `declaration-track:a314d732e6060d0cf40ab0ae2d12037a84f028281d318fa89bdeba95bad32419` |
| 2 | `def` | [actualNearCriticalRelativeMain](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualNearCriticalRelative.lean/declarations/actualnearcriticalrelativemain.md) | 39 | `declaration-track:0f33da3b04c47a6ccb5e183bb2124c746905efdc8a265abdd90820cf226cd7f7` |
| 3 | `def` | [actualComplementCriticalRelativePairing](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualNearCriticalRelative.lean/declarations/actualcomplementcriticalrelativepairing.md) | 43 | `declaration-track:7c63e780cdaaa5759364eb916cf945ee45df54199493366503b292becb2c8091` |
| 4 | `theorem` | [relative_eq_actual](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualNearCriticalRelative.lean/declarations/relative-eq-actual.md) | 46 | `result-track:de6efd0004c0bcd9f8202dae44ef3a83b5fd0ba4b968bcb010a6392af6838873` |
| 5 | `theorem` | [relative_intervalIntegrable](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualNearCriticalRelative.lean/declarations/relative-intervalintegrable.md) | 54 | `result-track:1dc0c8cbb991bb538c33687bd7c3ea6059d60f6a3b0c58aaf34e19ef16918820` |
| 6 | `theorem` | [relative_abs_le](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualNearCriticalRelative.lean/declarations/relative-abs-le.md) | 60 | `result-track:a835185dc7fc2d0c9c9cd4931d9f9ec22d5a4301812e511a4a3278fac9f24bcf` |
| 7 | `theorem` | [actualCriticalWeight_sub_half_abs_le](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualNearCriticalRelative.lean/declarations/actualcriticalweight-sub-half-abs-le.md) | 66 | `result-track:961893c56c361e7d73ed80402debe3b4808eba65cec44a3080405e3d1d0c59fb` |
| 8 | `theorem` | [weight_moment](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualNearCriticalRelative.lean/declarations/weight-moment.md) | 85 | `result-track:3be51147b134c769cdc17ba6192c0b12f7d2faf6f633d734f0c126f0f70382e3` |
| 9 | `theorem` | [near_replacement](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualNearCriticalRelative.lean/declarations/near-replacement.md) | 98 | `result-track:3139bc9a8f40d582b015b83497a458dc5117bb1bc4c8355ce876ac73b686d752` |
| 10 | `theorem` | [invsqrt_deriv](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualNearCriticalRelative.lean/declarations/invsqrt-deriv.md) | 142 | `result-track:b804196b52beb4798a812ecc4bacdfacc68f50010a1c54d69cb6058ba0ce648f` |
| 11 | `theorem` | [physical_relative_half](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualNearCriticalRelative.lean/declarations/physical-relative-half.md) | 151 | `result-track:817394e6ae5e715ef24335219368d4f9f07191306ae2966a9a92e77db46f70ea` |
| 12 | `theorem` | [near_main_eq_integral](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualNearCriticalRelative.lean/declarations/near-main-eq-integral.md) | 231 | `result-track:e451e831d306488d2be8b9dad51e3340214074243428a39e6e3da1cd5adea055` |
| 13 | `theorem` | [actualNearCriticalRelative_sub_main_abs_le](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualNearCriticalRelative.lean/declarations/actualnearcriticalrelative-sub-main-abs-le.md) | 284 | `result-track:780c5bfe7e3666b823c0a1760e402d165696d9fb990c19f509f65e4ac2470cb4` |
| 14 | `theorem` | [actualNearCriticalRelative_sub_main_tendsto_zero](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualNearCriticalRelative.lean/declarations/actualnearcriticalrelative-sub-main-tendsto-zero.md) | 298 | `result-track:54fe1cf7b77a29840c88a965c284888caf7edce2af9817c464107822834a37ba` |
| 15 | `theorem` | [actualNearCriticalRelative_normalized_tendsto_zero](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualNearCriticalRelative.lean/declarations/actualnearcriticalrelative-normalized-tendsto-zero.md) | 311 | `result-track:28c40d66a5bb1713684279d52e7056e553e8e8916f90f287c7153db80db3d93c` |
| 16 | `theorem` | [actualCriticalRelative_eq_near_add_complement](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualNearCriticalRelative.lean/declarations/actualcriticalrelative-eq-near-add-complement.md) | 349 | `result-track:2596a068cfcab26b969975d62c0557d2bff5635cc0a7c685461e953c25b49db2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0862fe2590680b734e5901e7a0fd0f57fa3dd4b7be416a8d339c61b2099aad14 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/1b1c00277c4cf5df40f613c639aee604d64b5bb1d60dd02b4efae8bc6254fea5SourceActualNear/Variantc1a0c6fb9835fea01df3664d3b14819eb13dc0a23d7d5d01b3979bf262e874f5.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/1b1c00277c4cf5df40f613c639aee604d64b5bb1d60dd02b4efae8bc6254fea5SourceActualNear/Variantc1a0c6fb9835fea01df3664d3b14819eb13dc0a23d7d5d01b3979bf262e874f5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
