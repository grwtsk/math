# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Audit.Variantfeafbedf0c21d53de1d7b1562fbe5b9d28e6254ade736d74ddac8d698a7643ff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e86563d20f5ccdcea687d29ed3ddb84991658566` · SHA-256 `feafbedf0c21d53de1d7b1562fbe5b9d28e6254ade736d74ddac8d698a7643ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SUCAS.Resources
#print axioms FormalResearch.SUCAS.Resources.Coordinate
#print axioms FormalResearch.SUCAS.Resources.coordinateFintype
#print axioms FormalResearch.SUCAS.Resources.Vector
#print axioms FormalResearch.SUCAS.Resources.ResourceVector
#print axioms FormalResearch.SUCAS.Resources.ComponentwiseLE
#print axioms FormalResearch.SUCAS.Resources.StrictPareto
#print axioms FormalResearch.SUCAS.Resources.Incomparable
#print axioms FormalResearch.SUCAS.Resources.componentwise_refl
#print axioms FormalResearch.SUCAS.Resources.componentwise_trans
#print axioms FormalResearch.SUCAS.Resources.componentwise_antisymm
#print axioms FormalResearch.SUCAS.Resources.componentwise_iff_product_le
#print axioms FormalResearch.SUCAS.Resources.strictPareto_irrefl
#print axioms FormalResearch.SUCAS.Resources.strictPareto_trans
#print axioms FormalResearch.SUCAS.Resources.strictPareto_not_reverse
#print axioms FormalResearch.SUCAS.Resources.incomparable_symm
#print axioms FormalResearch.SUCAS.Resources.incomparable_no_pareto
#print axioms FormalResearch.SUCAS.Resources.componentwise_reindex_iff
#print axioms FormalResearch.SUCAS.Resources.incomparable_reindex_iff
#print axioms FormalResearch.SUCAS.Resources.componentwise_add_common_iff
#print axioms FormalResearch.SUCAS.Resources.incomparable_add_common_iff
#print axioms FormalResearch.SUCAS.Resources.ParetoMember
#print axioms FormalResearch.SUCAS.Resources.incomparable_pair_retained
#print axioms FormalResearch.SUCAS.Resources.ScalarProjection
#print axioms FormalResearch.SUCAS.Resources.ScalarProjection.value
#print axioms FormalResearch.SUCAS.Resources.ScalarProjection.monotone
#print axioms FormalResearch.SUCAS.Resources.FrozenObjective
#print axioms FormalResearch.SUCAS.Resources.FrozenObjective.Admissible
#print axioms FormalResearch.SUCAS.Resources.FrozenObjective.admissible_of_le
#print axioms FormalResearch.SUCAS.Resources.Measurement
#print axioms FormalResearch.SUCAS.Resources.FullyMeasured
#print axioms FormalResearch.SUCAS.Resources.notMeasured_blocks_completion
#print axioms FormalResearch.SUCAS.Resources.unsupported_ne_measured_zero
#print axioms FormalResearch.SUCAS.Resources.notMeasured_ne_measured_zero
#print axioms FormalResearch.SUCAS.Resources.ResourceReport
#print axioms FormalResearch.SUCAS.Resources.lowDimensionProfile
#print axioms FormalResearch.SUCAS.Resources.lowDepthProfile
#print axioms FormalResearch.SUCAS.Resources.dimension_depth_incomparable
#print axioms FormalResearch.SUCAS.Resources.depth_objective_preserves_tradeoff
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=427e8bd1a75c55fd36f974a8ab1adab818bcba31345bb465f831d0e3ec0e2615 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Audit/Variantfeafbedf0c21d53de1d7b1562fbe5b9d28e6254ade736d74ddac8d698a7643ff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
