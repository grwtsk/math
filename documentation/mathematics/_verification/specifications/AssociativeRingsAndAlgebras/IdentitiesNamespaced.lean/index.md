# Verification target: Identities Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "270be7bf2d32a3e55a998788a9d5fbb4cae92e16",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Identities/Variantc75ff0f38186df25cc98eaecbb533d76257f2af3f65a57368f833271c628befb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/IdentitiesNamespaced.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/IdentitiesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `270be7bf2d32a3e55a998788a9d5fbb4cae92e16`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Identities/Variantc75ff0f38186df25cc98eaecbb533d76257f2af3f65a57368f833271c628befb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Identities/Variantc75ff0f38186df25cc98eaecbb533d76257f2af3f65a57368f833271c628befb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Ring` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sq_add_sq_mul_sq_add_sq](../../../../AssociativeRingsAndAlgebras/IdentitiesNamespaced.lean/declarations/sq-add-sq-mul-sq-add-sq.md) | 30 | `result-track:3ffa4896523faf6a6c434c4cce04f07abc30f8f2887a1e5ff51dc92946b2902c` |
| 2 | `theorem` | [sq_add_mul_sq_mul_sq_add_mul_sq](../../../../AssociativeRingsAndAlgebras/IdentitiesNamespaced.lean/declarations/sq-add-mul-sq-mul-sq-add-mul-sq.md) | 36 | `result-track:bedafb69a0b185816a5595d21ba8a965e188d2549de82b667f3f7de7c2a5c293` |
| 3 | `theorem` | [pow_four_add_four_mul_pow_four](../../../../AssociativeRingsAndAlgebras/IdentitiesNamespaced.lean/declarations/pow-four-add-four-mul-pow-four.md) | 43 | `result-track:1ea2d572ed724a201f46119b032e84bea1ce37d71171e4a8c6185b22057bf529` |
| 4 | `theorem` | [pow_four_add_four_mul_pow_four'](../../../../AssociativeRingsAndAlgebras/IdentitiesNamespaced.lean/declarations/pow-four-add-four-mul-pow-four-source-edition-2.md) | 49 | `result-track:f07678ea825fa5b1011dc36e2a26ee981af99bf0c48627f5ee34daf287b3e47b` |
| 5 | `theorem` | [sum_four_sq_mul_sum_four_sq](../../../../AssociativeRingsAndAlgebras/IdentitiesNamespaced.lean/declarations/sum-four-sq-mul-sum-four-sq.md) | 57 | `result-track:ff14665b498df01627537cd8230e3bbc42db13185a206812ceff18421c52ff45` |
| 6 | `theorem` | [sum_eight_sq_mul_sum_eight_sq](../../../../AssociativeRingsAndAlgebras/IdentitiesNamespaced.lean/declarations/sum-eight-sq-mul-sum-eight-sq.md) | 68 | `result-track:71c804cd43e4c1eb5546ee921e1036e24fc0fa070e0624a0bff8af5779d69c54` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7dbfccdad739171ac2a84cc0c2e5cecdb90cfff17f7f63633e6e87ee0e25ff7f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Identities/Variantc75ff0f38186df25cc98eaecbb533d76257f2af3f65a57368f833271c628befb.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Identities/Variantc75ff0f38186df25cc98eaecbb533d76257f2af3f65a57368f833271c628befb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
