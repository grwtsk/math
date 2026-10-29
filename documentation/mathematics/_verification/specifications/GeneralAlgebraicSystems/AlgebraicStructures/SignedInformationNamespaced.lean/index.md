# Verification target: Signed Information Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9a08d59b2a56bfbc8fc7aa07087c74665c324ee",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/SignedInformation/Variant48546aada0a5db7c8b19a942b627b5c705ba93eb3f660ef55aed91079e49e3ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SignedInformationNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SignedInformationNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9a08d59b2a56bfbc8fc7aa07087c74665c324ee`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/SignedInformation/Variant48546aada0a5db7c8b19a942b627b5c705ba93eb3f660ef55aed91079e49e3ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/SignedInformation/Variant48546aada0a5db7c8b19a942b627b5c705ba93eb3f660ef55aed91079e49e3ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Descent` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [absoluteValueObstruction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SignedInformationNamespaced.lean/declarations/absolutevalueobstruction.md) | 29 | `declaration-track:687bee00c6f0ea7b28b531334f12e4d4bd3fa6122053481ee527e73dcb9189d7` |
| 2 | `theorem` | [absoluteValue_not_descends](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SignedInformationNamespaced.lean/declarations/absolutevalue-not-descends.md) | 36 | `result-track:883041aca2fd4a62f53bccb8258686ec8b36147465be3521fe5095340bf28944` |
| 3 | `def` | [coordinatewiseAbs](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SignedInformationNamespaced.lean/declarations/coordinatewiseabs.md) | 40 | `declaration-track:7c04ef83dcc08899cc43993b18c0cba980c0d62a97dc0ac94341fd530415d50e` |
| 4 | `def` | [signedSum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SignedInformationNamespaced.lean/declarations/signedsum.md) | 44 | `declaration-track:0ae8938624be8056a228767160168469fa2f1a3d42364ff7eb8c03e68c93f8a9` |
| 5 | `def` | [singleCoordinate](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SignedInformationNamespaced.lean/declarations/singlecoordinate.md) | 48 | `declaration-track:e5b0bbe85b3282bbfd944410da740a315cdf6b3bfb3f71742b4ba0d4c8071106` |
| 6 | `def` | [coordinatewiseAbsSumObstruction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SignedInformationNamespaced.lean/declarations/coordinatewiseabssumobstruction.md) | 54 | `declaration-track:945e20c2bacb27de277eddb581da25e7884e12894630884ab9404a76a48631c1` |
| 7 | `theorem` | [coordinatewiseAbs_sum_not_descends](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SignedInformationNamespaced.lean/declarations/coordinatewiseabs-sum-not-descends.md) | 65 | `result-track:70140f69c6bff3e573d2ce88b73d865b269f35d2f175bed97afb22e71370145e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0912602b9750e389158bdf703b492e5c0a684e766377c6e905a5fb930ac8f114 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/SignedInformation/Variant48546aada0a5db7c8b19a942b627b5c705ba93eb3f660ef55aed91079e49e3ae.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/SignedInformation/Variant48546aada0a5db7c8b19a942b627b5c705ba93eb3f660ef55aed91079e49e3ae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
