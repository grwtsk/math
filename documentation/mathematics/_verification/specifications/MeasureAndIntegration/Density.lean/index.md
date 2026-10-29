# Verification target: Density

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e74f9fd90272fe3385a64aa959fca5432822eb30",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Density/Variantec37593c5bd89488d1b861ddd884616ff003e9a6c8cc3f0e8cbb04407f161836.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Density.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Density.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e74f9fd90272fe3385a64aa959fca5432822eb30`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Density/Variantec37593c5bd89488d1b861ddd884616ff003e9a6c8cc3f0e8cbb04407f161836.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Density/Variantec37593c5bd89488d1b861ddd884616ff003e9a6c8cc3f0e8cbb04407f161836.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Defs` — import line 16; external provider; requires a separately pinned dependency.
- `Zeta23.PrimeSideA` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GentryW](../../../../MeasureAndIntegration/Density.lean/declarations/gentryw.md) | 33 | `declaration-track:eccebf5e7216f9831d1916fbe24461526e78eecc1562c45ba553192809da9a0f` |
| 2 | `def` | [trGtW](../../../../MeasureAndIntegration/Density.lean/declarations/trgtw.md) | 37 | `declaration-track:8a555c4204ecdb1d76830e48a42da92f101c983bf24c13ae9481fdd13f384a30` |
| 3 | `def` | [trGt2W](../../../../MeasureAndIntegration/Density.lean/declarations/trgt2w.md) | 41 | `declaration-track:f3027ef4d9ed9533fc7a9d1a801947f558515457eeb62fa70d5d68226ab577fa` |
| 4 | `abbrev` | [MtotalW](../../../../MeasureAndIntegration/Density.lean/declarations/mtotalw.md) | 45 | `declaration-track:580464bec72a15c6094439d0cdee2961029539d29e25d6b6032a81bc6fddd1bb` |
| 5 | `def` | [S1](../../../../MeasureAndIntegration/Density.lean/declarations/s1.md) | 49 | `declaration-track:5f7e8a55ce77d0d1f346c5392f842f1302a3f81405488cdb5540bb1f2e8feaac` |
| 6 | `lemma` | [S1_nonneg](../../../../MeasureAndIntegration/Density.lean/declarations/s1-nonneg.md) | 51 | `result-track:b9c716b1f6935f805e4f3dfe41bfb47f8a99be8aace3fd9825245d468db1e46b` |
| 7 | `lemma` | [abs_re_cos_add_im_sin_le](../../../../MeasureAndIntegration/Density.lean/declarations/abs-re-cos-add-im-sin-le.md) | 57 | `result-track:cc2ba38b435792604db40cf66d3f0f81313d412e000b14fac07edb156af7317b` |
| 8 | `theorem` | [Pc_abs_le](../../../../MeasureAndIntegration/Density.lean/declarations/pc-abs-le.md) | 68 | `result-track:454e852cadc7f0a5406010be51e88efbfcc704216e522935e2a8d7fa3dd7870f` |
| 9 | `lemma` | [Pc_continuous](../../../../MeasureAndIntegration/Density.lean/declarations/pc-continuous.md) | 76 | `result-track:df12e7148617322d9f2e0280da52f515994d80c0827729c130b1fbf68fd7ec6b` |
| 10 | `lemma` | [nucW_continuous](../../../../MeasureAndIntegration/Density.lean/declarations/nucw-continuous.md) | 80 | `result-track:5bbae624db537f35358cc0e2e6f19cec7d69b9e700d9f3c2895e71f35ed5546f` |
| 11 | `def` | [BcW](../../../../MeasureAndIntegration/Density.lean/declarations/bcw.md) | 91 | `declaration-track:1fdef48023e5bd9eecc7084703a8be8aa34598647c512ece69393e63a888892e` |
| 12 | `lemma` | [l_le_BcW](../../../../MeasureAndIntegration/Density.lean/declarations/l-le-bcw.md) | 94 | `result-track:ac7dedea22f31bb2225dafb1b3c502cb09adaceaa81735858315e8c8ae2600fd` |
| 13 | `theorem` | [nuBoundW_eventually](../../../../MeasureAndIntegration/Density.lean/declarations/nuboundw-eventually.md) | 103 | `result-track:a1cefd78be19b5f636704a93472fd21c1c7b24098ab1767c43a3c99263fcc4fb` |
| 14 | `theorem` | [lem_ends_W](../../../../MeasureAndIntegration/Density.lean/declarations/lem-ends-w.md) | 145 | `result-track:18254f2e3deeef7c681810479dbcfeb87aa5fedc9be32e8c4ebf228e279ee2c4` |
| 15 | `theorem` | [BcW_sq_le](../../../../MeasureAndIntegration/Density.lean/declarations/bcw-sq-le.md) | 160 | `result-track:115b662cd335cd0063b84f4706f823bc0450e3ca40b476cb8bf25404871c42f1` |
| 16 | `theorem` | [eq_Msplit_W](../../../../MeasureAndIntegration/Density.lean/declarations/eq-msplit-w.md) | 199 | `result-track:18a7c1295728b04db0258b29366a0d129103a01fa17bc5c06996e4abdb0c6e46` |
| 17 | `theorem` | [cross_PcPi_le](../../../../MeasureAndIntegration/Density.lean/declarations/cross-pcpi-le.md) | 234 | `result-track:0e175655029975db180d6da5537b7e826f052d34285fa35f1e588d9c79ad18ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=12534d3f66ad9ea2d201996c02ee8eb1224fe907b597a3ae3fa666bb38cf6733 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Density/Variantec37593c5bd89488d1b861ddd884616ff003e9a6c8cc3f0e8cbb04407f161836.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Density/Variantec37593c5bd89488d1b861ddd884616ff003e9a6c8cc3f0e8cbb04407f161836.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
