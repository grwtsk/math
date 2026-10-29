# Verification target: Intrinsic Open Controlled Pivot Cover

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01298727189f364dc3445fecc3c88d291b915adc",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ControlledTopologyRound3Source/Variant4918f240f297cd71da3b9612ecf15a62f2fbde261e6510a5e80c43cb6b31116b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IntrinsicOpenControlledPivotCover.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IntrinsicOpenControlledPivotCover.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01298727189f364dc3445fecc3c88d291b915adc`.

Source path: `GRWTSK/Topology/GeneralTopology/ControlledTopologyRound3Source/Variant4918f240f297cd71da3b9612ecf15a62f2fbde261e6510a5e80c43cb6b31116b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ControlledTopologyRound3Source/Variant4918f240f297cd71da3b9612ecf15a62f2fbde261e6510a5e80c43cb6b31116b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.PivotOrthonormal` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.PivotChartTopology` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [det_gram_mul_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IntrinsicOpenControlledPivotCover.lean/declarations/det-gram-mul-left.md) | 23 | `result-track:bbc43d188231dce9cd1d5d436d568965ea390aad6ac5d75b2839ded01a8bb185` |
| 2 | `def` | [controlledGramPivotDomain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IntrinsicOpenControlledPivotCover.lean/declarations/controlledgrampivotdomain.md) | 33 | `declaration-track:6c4332c3076ae48df01980f3309c632754f860aac5591c0393fa96b2e85f6bdc` |
| 3 | `theorem` | [controlledGramPivotDomain_orthonormal_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IntrinsicOpenControlledPivotCover.lean/declarations/controlledgrampivotdomain-orthonormal-iff.md) | 37 | `result-track:dde4fd04b5f2f622333fe73b9bd15587e3ca9abcaf53ebf947aa3c4ea8deef62` |
| 4 | `theorem` | [controlledGramPivotDomain_mul_left_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IntrinsicOpenControlledPivotCover.lean/declarations/controlledgrampivotdomain-mul-left-iff.md) | 49 | `result-track:613943e32ba68d72ef3ec1eba35e887ed146680d0efe20d1a68fef175ac0e5f6` |
| 5 | `theorem` | [isOpen_controlledGramPivotDomain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IntrinsicOpenControlledPivotCover.lean/declarations/isopen-controlledgrampivotdomain.md) | 62 | `result-track:439da73ec7bef1c45b8071ce5d219aea804d7cb95893aa60a0594da60ea98e30` |
| 6 | `def` | [intrinsicControlledPivotDomain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IntrinsicOpenControlledPivotCover.lean/declarations/intrinsiccontrolledpivotdomain.md) | 69 | `declaration-track:b8f002129dd80634ebbc89833c4cdbe033ef38cb38981854bb8cdba5f76bebb4` |
| 7 | `theorem` | [representedPlane_mem_intrinsicControlledPivotDomain_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IntrinsicOpenControlledPivotCover.lean/declarations/representedplane-mem-intrinsiccontrolledpivotdomain-iff.md) | 73 | `result-track:24a1a7564e61cf935790e0f7003798c238b82d53b8ed2df72964439c1a77134f` |
| 8 | `theorem` | [isOpen_intrinsicControlledPivotDomain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IntrinsicOpenControlledPivotCover.lean/declarations/isopen-intrinsiccontrolledpivotdomain.md) | 87 | `result-track:3db8524b2efce49879b5636d7b387d08e855bf6297567ba7bfdb6a4671f2dc44` |
| 9 | `theorem` | [intrinsicControlledPivotDomain_cover](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IntrinsicOpenControlledPivotCover.lean/declarations/intrinsiccontrolledpivotdomain-cover.md) | 100 | `result-track:59ae901c79c970c698cfbb4133a439b6cfe57feafd547b6161c912f339f7f384` |
| 10 | `theorem` | [orthonormal_representedPlane_mem_intrinsicControlledPivotDomain_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IntrinsicOpenControlledPivotCover.lean/declarations/orthonormal-representedplane-mem-intrinsiccontrolledpivotdomain-iff.md) | 107 | `result-track:9b23c4e92f39bc452d56ebdc528523419ed0895ae4072800623cc955ff69b82f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e7600e1f63025479a2c5683b2de2689976c901a9665a8c7388fdd159d8fc4afe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ControlledTopologyRound3Source/Variant4918f240f297cd71da3b9612ecf15a62f2fbde261e6510a5e80c43cb6b31116b.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ControlledTopologyRound3Source/Variant4918f240f297cd71da3b9612ecf15a62f2fbde261e6510a5e80c43cb6b31116b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
