# Verification target: GRWTSK.Topology.MetricTopology.SimpleFuncDense.Variant0685c1038e8d6b592712ee694da7551369813ad652f193c81abcdb2563aad106

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d38865f554b7eb8d9da798cfb08050bd4353fb8",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/SimpleFuncDense/Variant0685c1038e8d6b592712ee694da7551369813ad652f193c81abcdb2563aad106.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/SimpleFuncDense/Variant0685c1038e8d6b592712ee694da7551369813ad652f193c81abcdb2563aad106.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/SimpleFuncDense/Variant0685c1038e8d6b592712ee694da7551369813ad652f193c81abcdb2563aad106.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d38865f554b7eb8d9da798cfb08050bd4353fb8`.

Source path: `GRWTSK/Topology/MetricTopology/SimpleFuncDense/Variant0685c1038e8d6b592712ee694da7551369813ad652f193c81abcdb2563aad106.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/SimpleFuncDense/Variant0685c1038e8d6b592712ee694da7551369813ad652f193c81abcdb2563aad106.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.SimpleFunc` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nearestPtInd](../../../../../mathematics/Topology/MetricTopology/SimpleFuncDense/Variant0685c1038e8d6b592712ee694da7551369813ad652f193c81abcdb2563aad106.lean/declarations/nearestptind--067f8a405a2ec0714e026823.md) | 59 | `declaration-track:067f8a405a2ec0714e0268239d2e92b3e1a83d89ee2ad92e13987d7ab156811c` |
| 2 | `def` | [nearestPt](../../../../../mathematics/Topology/MetricTopology/SimpleFuncDense/Variant0685c1038e8d6b592712ee694da7551369813ad652f193c81abcdb2563aad106.lean/declarations/nearestpt--ab699259687220258310f414.md) | 72 | `declaration-track:ab699259687220258310f414019a3de9310234c204a4d025d79bd207a69b3532` |
| 3 | `theorem` | [nearestPtInd_zero](../../../../../mathematics/Topology/MetricTopology/SimpleFuncDense/Variant0685c1038e8d6b592712ee694da7551369813ad652f193c81abcdb2563aad106.lean/declarations/nearestptind-zero--5de62cbda8690a5e4053c655.md) | 77 | `result-track:5de62cbda8690a5e4053c655c1439de7523d9b42e388a8c6ceb4fafb3bd71f0f` |
| 4 | `theorem` | [nearestPt_zero](../../../../../mathematics/Topology/MetricTopology/SimpleFuncDense/Variant0685c1038e8d6b592712ee694da7551369813ad652f193c81abcdb2563aad106.lean/declarations/nearestpt-zero--42a19d637e22399209224371.md) | 82 | `result-track:42a19d637e22399209224371d79517dda694fece93432dfc9b0e1d3401dc4a49` |
| 5 | `theorem` | [nearestPtInd_succ](../../../../../mathematics/Topology/MetricTopology/SimpleFuncDense/Variant0685c1038e8d6b592712ee694da7551369813ad652f193c81abcdb2563aad106.lean/declarations/nearestptind-succ--a300e6b265008b342473a3ad.md) | 86 | `result-track:a300e6b265008b342473a3ad79badab1f197a653d626fecb890e502abad2dd33` |
| 6 | `theorem` | [nearestPtInd_le](../../../../../mathematics/Topology/MetricTopology/SimpleFuncDense/Variant0685c1038e8d6b592712ee694da7551369813ad652f193c81abcdb2563aad106.lean/declarations/nearestptind-le--1a56f566ffceecf4d6bc8234.md) | 94 | `result-track:1a56f566ffceecf4d6bc82346aba7bcc0d7da1deb5b324ba29b1a2986ba75206` |
| 7 | `theorem` | [edist_nearestPt_le](../../../../../mathematics/Topology/MetricTopology/SimpleFuncDense/Variant0685c1038e8d6b592712ee694da7551369813ad652f193c81abcdb2563aad106.lean/declarations/edist-nearestpt-le--7cdb38c9f4f34bf9547da88b.md) | 101 | `result-track:7cdb38c9f4f34bf9547da88b782a98a04ad4067b4365ae64a69b8c1b70451ec7` |
| 8 | `theorem` | [tendsto_nearestPt](../../../../../mathematics/Topology/MetricTopology/SimpleFuncDense/Variant0685c1038e8d6b592712ee694da7551369813ad652f193c81abcdb2563aad106.lean/declarations/tendsto-nearestpt--ccd481f71b7bebd5c2689086.md) | 115 | `result-track:ccd481f71b7bebd5c2689086c13f52a24bcf3f182a2ffe3a51bb13738e9f423c` |
| 9 | `def` | [approxOn](../../../../../mathematics/Topology/MetricTopology/SimpleFuncDense/Variant0685c1038e8d6b592712ee694da7551369813ad652f193c81abcdb2563aad106.lean/declarations/approxon--328fcbc7e4a90b8b40fad685.md) | 127 | `declaration-track:328fcbc7e4a90b8b40fad68536a2b5478bf802171673b73c6b4be55e54b217ab` |
| 10 | `theorem` | [approxOn_zero](../../../../../mathematics/Topology/MetricTopology/SimpleFuncDense/Variant0685c1038e8d6b592712ee694da7551369813ad652f193c81abcdb2563aad106.lean/declarations/approxon-zero--2dbc1e8b82c043a1056b2eeb.md) | 134 | `result-track:2dbc1e8b82c043a1056b2eeb4d044f177cd0b2bd180d225f2a787fa4e35aaa82` |
| 11 | `theorem` | [approxOn_mem](../../../../../mathematics/Topology/MetricTopology/SimpleFuncDense/Variant0685c1038e8d6b592712ee694da7551369813ad652f193c81abcdb2563aad106.lean/declarations/approxon-mem--ab8433b793ab1ebac9a91579.md) | 139 | `result-track:ab8433b793ab1ebac9a915794535aa6bbf5d71b60ac8130368784ee9108c881e` |
| 12 | `theorem` | [approxOn_comp](../../../../../mathematics/Topology/MetricTopology/SimpleFuncDense/Variant0685c1038e8d6b592712ee694da7551369813ad652f193c81abcdb2563aad106.lean/declarations/approxon-comp--0e4825c5b611cba829c663da.md) | 148 | `result-track:0e4825c5b611cba829c663dab19a4d5b3207b66070c94dc9896cc18a955878fc` |
| 13 | `theorem` | [tendsto_approxOn](../../../../../mathematics/Topology/MetricTopology/SimpleFuncDense/Variant0685c1038e8d6b592712ee694da7551369813ad652f193c81abcdb2563aad106.lean/declarations/tendsto-approxon--0192645f0efe1b5620d6db96.md) | 154 | `result-track:0192645f0efe1b5620d6db9613b814c594dd329733bf67766616f40f10445be8` |
| 14 | `theorem` | [edist_approxOn_mono](../../../../../mathematics/Topology/MetricTopology/SimpleFuncDense/Variant0685c1038e8d6b592712ee694da7551369813ad652f193c81abcdb2563aad106.lean/declarations/edist-approxon-mono--a48ca965160e2a5fc0719e24.md) | 167 | `result-track:a48ca965160e2a5fc0719e24e86ad0bf919fdc3f5503bd93219406672b495f24` |
| 15 | `theorem` | [edist_approxOn_le](../../../../../mathematics/Topology/MetricTopology/SimpleFuncDense/Variant0685c1038e8d6b592712ee694da7551369813ad652f193c81abcdb2563aad106.lean/declarations/edist-approxon-le--b4a04858f21e92faf0688fbf.md) | 174 | `result-track:b4a04858f21e92faf0688fbf77f5a13c8ddcdac68e2a4c950642359f3056e3ce` |
| 16 | `theorem` | [edist_approxOn_y0_le](../../../../../mathematics/Topology/MetricTopology/SimpleFuncDense/Variant0685c1038e8d6b592712ee694da7551369813ad652f193c81abcdb2563aad106.lean/declarations/edist-approxon-y0-le--e2490addb23eaf654ca8d65e.md) | 179 | `result-track:e2490addb23eaf654ca8d65e083fba9f11f64d0ba950e0c4e08e5f4f3f4ef557` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
