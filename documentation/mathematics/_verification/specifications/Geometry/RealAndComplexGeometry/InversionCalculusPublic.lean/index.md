# Verification target: Inversion Calculus Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d26b48b5fac71283ff485f1f0b533c4eee34d2f6",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant349b7d08e50d413cda4b05b92fd76548738ce9e1d0af8f2bdf8ce7660bab6211.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Geometry/RealAndComplexGeometry/InversionCalculusPublic.lean/index.md) · [Full source](../../../../../Geometry/RealAndComplexGeometry/InversionCalculusPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d26b48b5fac71283ff485f1f0b533c4eee34d2f6`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant349b7d08e50d413cda4b05b92fd76548738ce9e1d0af8f2bdf8ce7660bab6211.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant349b7d08e50d413cda4b05b92fd76548738ce9e1d0af8f2bdf8ce7660bab6211.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ContDiffWithinAt.inversion](../../../../../Geometry/RealAndComplexGeometry/InversionCalculusPublic.lean/declarations/contdiffwithinat-inversion.md) | 42 | `result-track:a915365c6bb0c08aeb7fbc2c1bf698ca36dbba0f0410b16d4a9d113e47f32194` |
| 2 | `theorem` | [ContDiffOn.inversion](../../../../../Geometry/RealAndComplexGeometry/InversionCalculusPublic.lean/declarations/contdiffon-inversion.md) | 47 | `result-track:7d32df89f2755fc411e0c3fd033d175e97115c4c4cbd0655ecfed08d3f09e660` |
| 3 | `theorem` | [ContDiffAt.inversion](../../../../../Geometry/RealAndComplexGeometry/InversionCalculusPublic.lean/declarations/contdiffat-inversion.md) | 52 | `result-track:c5b20ff74da4da1f96b8378e24cc3b896ba967dba76643f7345947872241da6b` |
| 4 | `theorem` | [ContDiff.inversion](../../../../../Geometry/RealAndComplexGeometry/InversionCalculusPublic.lean/declarations/contdiff-inversion.md) | 57 | `result-track:2a21c7f588369f6fe2fd50e08de57772e1a7a354d0ed8d52f27a811d382b4b72` |
| 5 | `theorem` | [DifferentiableWithinAt.inversion](../../../../../Geometry/RealAndComplexGeometry/InversionCalculusPublic.lean/declarations/differentiablewithinat-inversion.md) | 62 | `result-track:e2c05a9bdb5d91f74c17d513eae0e65b6171058a188adfb61b88b210bcfe6bbc` |
| 6 | `theorem` | [DifferentiableOn.inversion](../../../../../Geometry/RealAndComplexGeometry/InversionCalculusPublic.lean/declarations/differentiableon-inversion.md) | 68 | `result-track:961fdb8553689b4ed41d6a7648354df8c8d7b8ac4435efbbea6758b63c159437` |
| 7 | `theorem` | [DifferentiableAt.inversion](../../../../../Geometry/RealAndComplexGeometry/InversionCalculusPublic.lean/declarations/differentiableat-inversion.md) | 73 | `result-track:89bb392e6b8a485ac49063910c90dba7788e448bb25305e515a52184ead00bc7` |
| 8 | `theorem` | [Differentiable.inversion](../../../../../Geometry/RealAndComplexGeometry/InversionCalculusPublic.lean/declarations/differentiable-inversion.md) | 79 | `result-track:087ab99b2773f78925de60bcfc7c1d46522e4f51721754b3a1ee0d0d2d50a508` |
| 9 | `theorem` | [hasFDerivAt_inversion](../../../../../Geometry/RealAndComplexGeometry/InversionCalculusPublic.lean/declarations/hasfderivat-inversion.md) | 91 | `result-track:bab6a508e3e124467390a5b930ec202ad301e26ded05f0548cca50e984aceeb8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eb336a8a1f2eeb48de364b5dfd45181165de449c49eac2c5a00208615db57d38 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant349b7d08e50d413cda4b05b92fd76548738ce9e1d0af8f2bdf8ce7660bab6211.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant349b7d08e50d413cda4b05b92fd76548738ce9e1d0af8f2bdf8ce7660bab6211.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
