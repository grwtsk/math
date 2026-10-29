# Verification target: Support Graph Abstraction Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "268018e5768968eb3448e28c8dc296885764f692",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SupportGraphAbstraction/Varianta50f31488edcce13b1f676d2f2f5f31570bc3366bbf23957070c21d0bf89541a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SupportGraphAbstractionEdition2.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SupportGraphAbstractionEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `268018e5768968eb3448e28c8dc296885764f692`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SupportGraphAbstraction/Varianta50f31488edcce13b1f676d2f2f5f31570bc3366bbf23957070c21d0bf89541a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SupportGraphAbstraction/Varianta50f31488edcce13b1f676d2f2f5f31570bc3366bbf23957070c21d0bf89541a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Core.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [undirectedSupport](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SupportGraphAbstractionEdition2.lean/declarations/undirectedsupport.md) | 19 | `declaration-track:2ffa4fe61868b8f79e16a5c6e7580ba0ba8ff051c3020a0779db4ffb1163f713` |
| 2 | `theorem` | [directed_edge_visible](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SupportGraphAbstractionEdition2.lean/declarations/directed-edge-visible.md) | 26 | `result-track:f13d05741e741c35dd21a3345880d66a9b3b865e849d53c8c86b3355cd7bbd27` |
| 3 | `theorem` | [undirectedSupport_symmetric](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SupportGraphAbstractionEdition2.lean/declarations/undirectedsupport-symmetric.md) | 35 | `result-track:68bd4f8f95c286040025d18362ab163666c976ca606b0a1681aaad30ddfc2752` |
| 4 | `def` | [boolZModMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SupportGraphAbstractionEdition2.lean/declarations/boolzmodmatrix.md) | 43 | `declaration-track:bd6a85b2e15899ac3a1b7a4ccaaa23d4e30d653bcc13a936d2725aea46e44874` |
| 5 | `def` | [swapSupportExample](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SupportGraphAbstractionEdition2.lean/declarations/swapsupportexample.md) | 50 | `declaration-track:1736f59670367be7e450136fc7fb3eb0816c06e8530c025ae73ac92a95d115b4` |
| 6 | `def` | [orientedSupportExample](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SupportGraphAbstractionEdition2.lean/declarations/orientedsupportexample.md) | 54 | `declaration-track:e6e7094b2833bf42e2941520f283a6dbab2ab05cfe1c6ef82b67b5d6144faebc` |
| 7 | `theorem` | [support_examples_distinct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SupportGraphAbstractionEdition2.lean/declarations/support-examples-distinct.md) | 58 | `result-track:781495606cf60df28d867de474dab05ff541b4e1e1d40ff11b9a11874d5f14f5` |
| 8 | `theorem` | [support_examples_same_abstraction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SupportGraphAbstractionEdition2.lean/declarations/support-examples-same-abstraction.md) | 65 | `result-track:585c2cdb1dcc0aa3b839dfca70335a3242de704aeb6d66bd627919c2369ffa48` |
| 9 | `theorem` | [swapSupportExample_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SupportGraphAbstractionEdition2.lean/declarations/swapsupportexample-det.md) | 72 | `result-track:78df7d8616c5601a4914a9f7c0663596cc905d5e4ca16920034f89b7133d09fa` |
| 10 | `theorem` | [orientedSupportExample_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SupportGraphAbstractionEdition2.lean/declarations/orientedsupportexample-det.md) | 77 | `result-track:6db91ccf8f64978c8b769602bf50e2af4b85b93dd84703af998fadce69f22ad3` |
| 11 | `theorem` | [support_does_not_determine_invertibility](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SupportGraphAbstractionEdition2.lean/declarations/support-does-not-determine-invertibility.md) | 85 | `result-track:0d08dba59df6f8d0763ccaaf6864b09dd7a944ff2de5cb756cf47f6f0322d637` |
| 12 | `structure` | [SupportAbstractionLoss](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SupportGraphAbstractionEdition2.lean/declarations/supportabstractionloss.md) | 98 | `declaration-track:2ccaba8448ec61dff75aa0007f97ac2289beb7663b84f563cbf6fe725952c198` |
| 13 | `def` | [undirectedSupportLoss](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SupportGraphAbstractionEdition2.lean/declarations/undirectedsupportloss.md) | 106 | `declaration-track:8b9bc77fbd6c56e39170769c0b376d55652bfb8177a3360b56e826d422182f5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8c002704b4895db46a1b3fd4fd9749d785695868c82de6e208c6221c78d0de39 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/SupportGraphAbstraction/Varianta50f31488edcce13b1f676d2f2f5f31570bc3366bbf23957070c21d0bf89541a.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/SupportGraphAbstraction/Varianta50f31488edcce13b1f676d2f2f5f31570bc3366bbf23957070c21d0bf89541a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
