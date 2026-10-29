# Verification target: Polar Coord Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "561c8b0ace1e1f55bb6d61ba8a196ed8cc7bc915",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PolarCoord/Variant664979ef3e58d4d96be0965310af411e39700ad3bc6224391de0fdb9c5be911f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/PolarCoordNamespaced.lean/index.md) · [Full source](../../../../SpecialFunctions/PolarCoordNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `561c8b0ace1e1f55bb6d61ba8a196ed8cc7bc915`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PolarCoord/Variant664979ef3e58d4d96be0965310af411e39700ad3bc6224391de0fdb9c5be911f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/PolarCoord/Variant664979ef3e58d4d96be0965310af411e39700ad3bc6224391de0fdb9c5be911f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Jacobian` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../SpecialFunctions/PolarCoordNamespaced.lean/declarations/macro-rules.md) | 33 | `declaration-track:b10d5b28ddfffcf4f03f7cccd3b961856a7ec830dc6a4015727f4809dbf013d5` |
| 2 | `def` | [polarCoord](../../../../SpecialFunctions/PolarCoordNamespaced.lean/declarations/polarcoord.md) | 42 | `declaration-track:46eb78c34c598e63ed0ef47eba96d01e6a4ce8bfbcd6a9c598a01e94f265f36d` |
| 3 | `theorem` | [hasFDerivAt_polarCoord_symm](../../../../SpecialFunctions/PolarCoordNamespaced.lean/declarations/hasfderivat-polarcoord-symm.md) | 107 | `result-track:ad77db4c60c18331e380cdb04567dcfcbae348bcf13153676d71fe231cab1cff` |
| 4 | `instance` | [(anonymous)](../../../../SpecialFunctions/PolarCoordNamespaced.lean/declarations/instance.md) | 119 | `declaration-track:b3b16f965871615a81fe2215c49483aab56d71ca40e0c2e2c0ea98d39c189397` |
| 5 | `theorem` | [polarCoord_source_ae_eq_univ](../../../../SpecialFunctions/PolarCoordNamespaced.lean/declarations/polarcoord-source-ae-eq-univ.md) | 122 | `result-track:8ad421bbde7b828e82baec2782995a850e796f310d078bf766ac9752e2dc9d50` |
| 6 | `theorem` | [integral_comp_polarCoord_symm](../../../../SpecialFunctions/PolarCoordNamespaced.lean/declarations/integral-comp-polarcoord-symm.md) | 138 | `result-track:ca500a4a758e0f420abf378267b9c1098bcf111cb0a24ce76194ff82c875ca52` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e94de5330cfc8a55a3ff6f9e9528fba7056c3ea09c2bc432ca08d4c5a1d7e164 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PolarCoord/Variant664979ef3e58d4d96be0965310af411e39700ad3bc6224391de0fdb9c5be911f.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/PolarCoord/Variant664979ef3e58d4d96be0965310af411e39700ad3bc6224391de0fdb9c5be911f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
