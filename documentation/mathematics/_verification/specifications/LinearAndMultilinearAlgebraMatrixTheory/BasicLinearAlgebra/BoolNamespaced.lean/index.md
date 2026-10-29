# Verification target: Bool Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8d16714c163b0db47d6c5d9082aac8445c9ca1f",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Bool/Variant3ed517c006bae98940e696a2c3755aa8c9505105e8f55171485c27fd04b4a3da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BoolNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BoolNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8d16714c163b0db47d6c5d9082aac8445c9ca1f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Bool/Variant3ed517c006bae98940e696a2c3755aa8c9505105e8f55171485c27fd04b4a3da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Bool/Variant3ed517c006bae98940e696a2c3755aa8c9505105e8f55171485c27fd04b4a3da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BooleanMatrix.Codec.Lift` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bool](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BoolNamespaced.lean/declarations/bool.md) | 24 | `declaration-track:df6b91ac30c9574036cf927857cd2bfc5f27fcafa271cc6f19d284126486ff66` |
| 2 | `def` | [boolNot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BoolNamespaced.lean/declarations/boolnot.md) | 33 | `declaration-track:929f5c2e786c0a911c9845df7ae71df607f3fad3f5f48fac8a1374bd61016e1a` |
| 3 | `theorem` | [boolNot_encode](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BoolNamespaced.lean/declarations/boolnot-encode.md) | 37 | `result-track:6e3440c22b64703276b38fcda5ba7500ac991fc3c702a9da2635d41ff05d4708` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=335b5406962142b6bae0eb1a208ef667927e603f34ed7eb6c4db4e6d671fa9f9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Bool/Variant3ed517c006bae98940e696a2c3755aa8c9505105e8f55171485c27fd04b4a3da.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Bool/Variant3ed517c006bae98940e696a2c3755aa8c9505105e8f55171485c27fd04b4a3da.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
