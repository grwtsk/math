# Verification target: GRWTSK.Topology.Homotopy.RealPolygonClock

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ea5dc0a4db1e3941688f663dee3cd8dd3050e64",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Homotopy/RealPolygonClock.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/Homotopy/RealPolygonClock.lean/index.md) · [Full source](../../../../mathematics/Topology/Homotopy/RealPolygonClock.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ea5dc0a4db1e3941688f663dee3cd8dd3050e64`.

Source path: `GRWTSK/Topology/Homotopy/RealPolygonClock.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Homotopy/RealPolygonClock.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.Homotopy.FiniteConcatenation`](../../../../mathematics/Topology/Homotopy/FiniteConcatenation.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [blend](../../../../mathematics/Topology/Homotopy/RealPolygonClock.lean/declarations/blend--7ccd790915f0149f8def5f81.md) | 24 | `declaration-track:7ccd790915f0149f8def5f81f889ee169afd11aaf429f522c0ea64dfffa94a99` |
| 2 | `def` | [vertex](../../../../mathematics/Topology/Homotopy/RealPolygonClock.lean/declarations/vertex--647722746de39cb30d392523.md) | 26 | `declaration-track:647722746de39cb30d3925233560ee2f3232b4cbdeeabfd51cf4b13566f01652` |
| 3 | `def` | [cell](../../../../mathematics/Topology/Homotopy/RealPolygonClock.lean/declarations/cell--f0bc63c022c60143ac8d2a90.md) | 28 | `declaration-track:f0bc63c022c60143ac8d2a904d3b075b1852ec02517dfdd7ab2364f7f37e286e` |
| 4 | `def` | [clock](../../../../mathematics/Topology/Homotopy/RealPolygonClock.lean/declarations/clock--16ab647371181d2b17746310.md) | 34 | `declaration-track:16ab647371181d2b17746310771d04c7313c755feb570686234cad35523c5fb7` |
| 5 | `theorem` | [start](../../../../mathematics/Topology/Homotopy/RealPolygonClock.lean/declarations/start--0ec81b2bfe18968431be252b.md) | 39 | `result-track:0ec81b2bfe18968431be252bf6766e7e76f06f1b95c52561599710d564583ed9` |
| 6 | `theorem` | [finish](../../../../mathematics/Topology/Homotopy/RealPolygonClock.lean/declarations/finish--52086e970e9294754a3f4a3d.md) | 42 | `result-track:52086e970e9294754a3f4a3d127ba112bd1b16fba951ffb9955fb7f8b07236c0` |
| 7 | `theorem` | [blend_mem](../../../../mathematics/Topology/Homotopy/RealPolygonClock.lean/declarations/blend-mem--16225d4d3e425c8686006523.md) | 45 | `result-track:16225d4d3e425c86860065235ce6a88d36d1083c34de6b190c7808e790b84bc5` |
| 8 | `theorem` | [mem_interval](../../../../mathematics/Topology/Homotopy/RealPolygonClock.lean/declarations/mem-interval--c813f1f27951c7677a7a6193.md) | 56 | `result-track:c813f1f27951c7677a7a6193a8a11bc0fed600a7acd270c1bda359e57fcbc6fe` |
| 9 | `theorem` | [bracket](../../../../mathematics/Topology/Homotopy/RealPolygonClock.lean/declarations/bracket--67f70acdf7f26ba918619245.md) | 69 | `result-track:67f70acdf7f26ba918619245c62fab1436b23b6df8e44b65ef29bb2a7d79fa75` |
| 10 | `theorem` | [exists_blend](../../../../mathematics/Topology/Homotopy/RealPolygonClock.lean/declarations/exists-blend--e4b3bfbb8088f22220259cc7.md) | 82 | `result-track:e4b3bfbb8088f22220259cc7c714cb38ae3907afb7b8222fc364319a4db67606` |
| 11 | `theorem` | [covers](../../../../mathematics/Topology/Homotopy/RealPolygonClock.lean/declarations/covers--0a4d13edf8aafaafcfba75f2.md) | 98 | `result-track:0a4d13edf8aafaafcfba75f20aba8ae22d7f8741285b35985d57911f2b1841fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
