# Verification target: Torsion Site Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10061340f5ceb7da8d9e18238e1e2f9fea89e94e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TorsionSite/Variant9e339cd754b9b92ee7b7a01d7554187bc96c5cad1ede8a3b94247f260bafca5c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TorsionSiteNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TorsionSiteNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10061340f5ceb7da8d9e18238e1e2f9fea89e94e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TorsionSite/Variant9e339cd754b9b92ee7b7a01d7554187bc96c5cad1ede8a3b94247f260bafca5c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TorsionSite/Variant9e339cd754b9b92ee7b7a01d7554187bc96c5cad1ede8a3b94247f260bafca5c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Symmetry` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [iteratedAction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TorsionSiteNamespaced.lean/declarations/iteratedaction.md) | 13 | `declaration-track:7a8489d7b303bff12232db34bdbafbb30d3d627c27156c542edcd3fe5218a750` |
| 2 | `structure` | [TorsionAtSite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TorsionSiteNamespaced.lean/declarations/torsionatsite.md) | 20 | `declaration-track:345a0116190a53c376465b9f8faf01c2c66dfeffae17048d8a1a19ab76beb50f` |
| 3 | `theorem` | [torsionAtSite_has_positive_order](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TorsionSiteNamespaced.lean/declarations/torsionatsite-has-positive-order.md) | 31 | `result-track:69b7a81067581a2085f8d5802ffde375664a95604cc6206f0ad3120da7f47d08` |
| 4 | `theorem` | [torsionAtSite_returns_to_site](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TorsionSiteNamespaced.lean/declarations/torsionatsite-returns-to-site.md) | 39 | `result-track:40df31d25df7b27b8c111c35930844c23ffa60ebc54b53f25947b88523d686ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e88eda4305dec5ac01d561cd134ff8948f58a63953d09941734405c67a424a0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/TorsionSite/Variant9e339cd754b9b92ee7b7a01d7554187bc96c5cad1ede8a3b94247f260bafca5c.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/TorsionSite/Variant9e339cd754b9b92ee7b7a01d7554187bc96c5cad1ede8a3b94247f260bafca5c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
