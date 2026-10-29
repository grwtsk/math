# Verification target: Attempt05 Normalized Transform

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a8297416ee18a86580679488a903508f8671366",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt05/Variant2d37f9853f7fa75812f3195af0be72c4a24a987bba2f5c871817921369e84653.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Attempt05NormalizedTransform.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Attempt05NormalizedTransform.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a8297416ee18a86580679488a903508f8671366`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt05/Variant2d37f9853f7fa75812f3195af0be72c4a24a987bba2f5c871817921369e84653.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt05/Variant2d37f9853f7fa75812f3195af0be72c4a24a987bba2f5c871817921369e84653.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMomentDictionary` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RealDeriv` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizedTransform](../../../../MeasureAndIntegration/Attempt05NormalizedTransform.lean/declarations/normalizedtransform.md) | 25 | `declaration-track:6515a6be38e4817e31609b55efcce3659b79f134da7e42f962e352778d96eadb` |
| 2 | `def` | [boundaryTransform](../../../../MeasureAndIntegration/Attempt05NormalizedTransform.lean/declarations/boundarytransform.md) | 30 | `declaration-track:f7c8645d5737769636438f93ffc42bb95ec4a5a1c20860356e3383554a1ccfa9` |
| 3 | `theorem` | [normalizedTransform_dictionary](../../../../MeasureAndIntegration/Attempt05NormalizedTransform.lean/declarations/normalizedtransform-dictionary.md) | 33 | `result-track:84f3618bef99dc69a184549d7ebe2b1aa75c6202367b9646cfe24e9f95829c2d` |
| 4 | `theorem` | [normalized_integrand_integrable](../../../../MeasureAndIntegration/Attempt05NormalizedTransform.lean/declarations/normalized-integrand-integrable.md) | 43 | `result-track:33db4f287907cf699dea384b4ba118f5cff60dcc8d275895d934f91d047cde11` |
| 5 | `theorem` | [full_complex_correlation_square](../../../../MeasureAndIntegration/Attempt05NormalizedTransform.lean/declarations/full-complex-correlation-square.md) | 54 | `result-track:5d7f8a65596da90bb03d65958c6f50e7775f285a334c6a89e4ce315aa3174614` |
| 6 | `theorem` | [interval_complex_correlation_square](../../../../MeasureAndIntegration/Attempt05NormalizedTransform.lean/declarations/interval-complex-correlation-square.md) | 84 | `result-track:e4f104f4c3b61d59184415e86c1a6cdc53ea29a627cddefa17209b8ba46ab28c` |
| 7 | `theorem` | [critical_complex_ibp](../../../../MeasureAndIntegration/Attempt05NormalizedTransform.lean/declarations/critical-complex-ibp.md) | 105 | `result-track:ad4e2c688907f1790d2106ee8437b369398bf59244de17ad2be37c790d10ed8e` |
| 8 | `theorem` | [boundary_transform_exact](../../../../MeasureAndIntegration/Attempt05NormalizedTransform.lean/declarations/boundary-transform-exact.md) | 153 | `result-track:0e17b2db028c8c8352633ced660cff20e9f14044971e15fa2911312b161b0ee1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b1b86fe9d2df938425facfce2ed22dfbb8ccae768159746ff6b4d108b68235a2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Attempt05/Variant2d37f9853f7fa75812f3195af0be72c4a24a987bba2f5c871817921369e84653.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Attempt05/Variant2d37f9853f7fa75812f3195af0be72c4a24a987bba2f5c871817921369e84653.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
