# Verification target: Functional Equation Public Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a617688855e330a92d3ddd943033300cca10a5a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FunctionalEquation/Variant1e50ed88349aeed6e6c122c70be03fd05570ef5c8403029bd498cb3f25fbcd39.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FunctionalEquationPublicEdition1.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FunctionalEquationPublicEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a617688855e330a92d3ddd943033300cca10a5a`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FunctionalEquation/Variant1e50ed88349aeed6e6c122c70be03fd05570ef5c8403029bd498cb3f25fbcd39.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FunctionalEquation/Variant1e50ed88349aeed6e6c122c70be03fd05570ef5c8403029bd498cb3f25fbcd39.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [criticalReflection](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FunctionalEquationPublicEdition1.lean/declarations/criticalreflection.md) | 30 | `declaration-track:c3db9747810759e2fe45de311c739aebce60ed9ff85b802ee0f45a572088b92d` |
| 2 | `theorem` | [criticalReflection_re](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FunctionalEquationPublicEdition1.lean/declarations/criticalreflection-re.md) | 34 | `result-track:c57a57d463e2e1c02461e5b217e1798d61d7302c5c6fae62751ac0e15da32473` |
| 3 | `theorem` | [primitive_LFunction_reflects_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FunctionalEquationPublicEdition1.lean/declarations/primitive-lfunction-reflects-zero.md) | 43 | `result-track:6413da76afeab8338647d57aa6e52a1fd6f001402daabbb699eb5fbe9a345b00` |
| 4 | `structure` | [PrimitiveFunctionalEquationSquare](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FunctionalEquationPublicEdition1.lean/declarations/primitivefunctionalequationsquare.md) | 93 | `declaration-track:091da7593b963abb501c4d1aabd293491d9f773b70e567657c60423ffc6f0cd7` |
| 5 | `theorem` | [PrimitiveFunctionalEquationSquare.reflects_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FunctionalEquationPublicEdition1.lean/declarations/primitivefunctionalequationsquare-reflects-zero.md) | 111 | `result-track:9fd6fc18804140cd5498f2a2114146c568af2117e812aadb13c14fa9002c95e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=15dbfe8eeb0296b78d9c7ba2d33b8aa25d0c9526612b0d9b9304579296356675 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FunctionalEquation/Variant1e50ed88349aeed6e6c122c70be03fd05570ef5c8403029bd498cb3f25fbcd39.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/FunctionalEquation/Variant1e50ed88349aeed6e6c122c70be03fd05570ef5c8403029bd498cb3f25fbcd39.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
