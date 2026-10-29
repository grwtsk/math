# Verification target: Operator Norm Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e19f3689df7ea2a0ced7fa4194023e6094f9974",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/OperatorNorm/Variantaf987c4c9df69b4b1016c4024ac7759fe913a2552e096c8ae43ccd0a1acc50df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionsOfAComplexVariable/OperatorNormNamespaced.lean/index.md) · [Full source](../../../../FunctionsOfAComplexVariable/OperatorNormNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e19f3689df7ea2a0ced7fa4194023e6094f9974`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/OperatorNorm/Variantaf987c4c9df69b4b1016c4024ac7759fe913a2552e096c8ae43ccd0a1acc50df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/OperatorNorm/Variantaf987c4c9df69b4b1016c4024ac7759fe913a2552e096c8ae43ccd0a1acc50df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm.NormedSpace` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Determinant` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [det_conjLIE](../../../../FunctionsOfAComplexVariable/OperatorNormNamespaced.lean/declarations/det-conjlie.md) | 32 | `result-track:9bfc5e07c2428799e3fb27e630761ab9f8bff04627c7e256eb5f944cdeebd81d` |
| 2 | `theorem` | [linearEquiv_det_conjLIE](../../../../FunctionsOfAComplexVariable/OperatorNormNamespaced.lean/declarations/linearequiv-det-conjlie.md) | 37 | `result-track:1563928ebc8884026601f78aa54dc9e5e5b130f31e800a0dd37098f044c38029` |
| 3 | `theorem` | [reCLM_norm](../../../../FunctionsOfAComplexVariable/OperatorNormNamespaced.lean/declarations/reclm-norm.md) | 41 | `result-track:331388e8dd3cb0d38991a392ab2d92bddce1777b634221158748a04ff94996b4` |
| 4 | `theorem` | [reCLM_nnnorm](../../../../FunctionsOfAComplexVariable/OperatorNormNamespaced.lean/declarations/reclm-nnnorm.md) | 48 | `result-track:c396e2b73c187aad06ea9e5b5d7fbb7295cc8f4b47de15eb5229c69209222686` |
| 5 | `theorem` | [imCLM_norm](../../../../FunctionsOfAComplexVariable/OperatorNormNamespaced.lean/declarations/imclm-norm.md) | 52 | `result-track:43a64c535c1d3498dea4f7af8f2407d8607befc0ec2dadc3e7f149974cfae724` |
| 6 | `theorem` | [imCLM_nnnorm](../../../../FunctionsOfAComplexVariable/OperatorNormNamespaced.lean/declarations/imclm-nnnorm.md) | 59 | `result-track:9b1ad80f9bcb218230318d39a70b603e3aff0f6ec922a5e31643ad8cfb87ddbe` |
| 7 | `theorem` | [conjCLE_norm](../../../../FunctionsOfAComplexVariable/OperatorNormNamespaced.lean/declarations/conjcle-norm.md) | 63 | `result-track:296c0fa59bdb585f0da7667bea6e5e681d45b6d27782718d35d5578c78588290` |
| 8 | `theorem` | [conjCLE_nnorm](../../../../FunctionsOfAComplexVariable/OperatorNormNamespaced.lean/declarations/conjcle-nnorm.md) | 67 | `result-track:17a6408d3b517db4bd7afd0ab8c6f1518f5de0b359d3f27a6269e6cc5ea826d3` |
| 9 | `theorem` | [ofRealCLM_norm](../../../../FunctionsOfAComplexVariable/OperatorNormNamespaced.lean/declarations/ofrealclm-norm.md) | 71 | `result-track:3848af5e4333e18f5bae74960502bd35d32485d1475519f5208259f8435f5b82` |
| 10 | `theorem` | [ofRealCLM_nnnorm](../../../../FunctionsOfAComplexVariable/OperatorNormNamespaced.lean/declarations/ofrealclm-nnnorm.md) | 75 | `result-track:d443a4d91fa809e8473b648b21e193c2ce7470b08173d88f2cf7ce264a5eb6bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=98165b61112d6370e300eade94f0e4d6cc652445066bf251a78497906297942f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/OperatorNorm/Variantaf987c4c9df69b4b1016c4024ac7759fe913a2552e096c8ae43ccd0a1acc50df.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/OperatorNorm/Variantaf987c4c9df69b4b1016c4024ac7759fe913a2552e096c8ae43ccd0a1acc50df.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
