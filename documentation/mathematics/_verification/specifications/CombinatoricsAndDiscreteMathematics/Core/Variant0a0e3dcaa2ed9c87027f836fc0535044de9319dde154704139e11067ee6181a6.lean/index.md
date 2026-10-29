# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Core.Variant0a0e3dcaa2ed9c87027f836fc0535044de9319dde154704139e11067ee6181a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6cd72629874d0f6307255741fe8a9b7079efbf7",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Core/Variant0a0e3dcaa2ed9c87027f836fc0535044de9319dde154704139e11067ee6181a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CombinatoricsAndDiscreteMathematics/Core/Variant0a0e3dcaa2ed9c87027f836fc0535044de9319dde154704139e11067ee6181a6.lean/index.md) · [Full source](../../../../../CombinatoricsAndDiscreteMathematics/Core/Variant0a0e3dcaa2ed9c87027f836fc0535044de9319dde154704139e11067ee6181a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6cd72629874d0f6307255741fe8a9b7079efbf7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Core/Variant0a0e3dcaa2ed9c87027f836fc0535044de9319dde154704139e11067ee6181a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Core/Variant0a0e3dcaa2ed9c87027f836fc0535044de9319dde154704139e11067ee6181a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CompletionSemantics](../../../../../CombinatoricsAndDiscreteMathematics/Core/Variant0a0e3dcaa2ed9c87027f836fc0535044de9319dde154704139e11067ee6181a6.lean/declarations/completionsemantics--2228694e00631602c4d47103.md) | 13 | `declaration-track:2228694e00631602c4d47103cc08c20371376073321d1f8d5edbc9bab2495b84` |
| 2 | `def` | [Feasible](../../../../../CombinatoricsAndDiscreteMathematics/Core/Variant0a0e3dcaa2ed9c87027f836fc0535044de9319dde154704139e11067ee6181a6.lean/declarations/feasible--e81df14836a2c83de2506aa7.md) | 30 | `declaration-track:e81df14836a2c83de2506aa73cce9bdef645acea44b9f987b7144a33d6ba012c` |
| 3 | `def` | [Infeasible](../../../../../CombinatoricsAndDiscreteMathematics/Core/Variant0a0e3dcaa2ed9c87027f836fc0535044de9319dde154704139e11067ee6181a6.lean/declarations/infeasible--c0de107934e002f9f287418d.md) | 41 | `declaration-track:c0de107934e002f9f287418d94cb7e746671f2e94b4cb24337548c7cb68df984` |
| 4 | `theorem` | [infeasible_iff_not_feasible](../../../../../CombinatoricsAndDiscreteMathematics/Core/Variant0a0e3dcaa2ed9c87027f836fc0535044de9319dde154704139e11067ee6181a6.lean/declarations/infeasible-iff-not-feasible--81e89f36f4e1e57bbc990446.md) | 49 | `result-track:81e89f36f4e1e57bbc990446f6e70963fe184e10e9974d32f56e0c156af75b46` |
| 5 | `theorem` | [feasible_of_constraint_subset](../../../../../CombinatoricsAndDiscreteMathematics/Core/Variant0a0e3dcaa2ed9c87027f836fc0535044de9319dde154704139e11067ee6181a6.lean/declarations/feasible-of-constraint-subset--97115dab61164cd91d864582.md) | 59 | `result-track:97115dab61164cd91d864582676fa902d0e81cbd61cc2270bfa55d50ecb8eaae` |
| 6 | `theorem` | [infeasibility_downward_closed](../../../../../CombinatoricsAndDiscreteMathematics/Core/Variant0a0e3dcaa2ed9c87027f836fc0535044de9319dde154704139e11067ee6181a6.lean/declarations/infeasibility-downward-closed--6f14b101f8e4faa738993ac2.md) | 72 | `result-track:6f14b101f8e4faa738993ac2c634ed94c1a9618d0ede25a714f5effccb0bf08f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e4d568c0e285e19712005b935ff35665878b2afb54b12d4ba93d4942a8a66bbf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Core/Variant0a0e3dcaa2ed9c87027f836fc0535044de9319dde154704139e11067ee6181a6.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Core/Variant0a0e3dcaa2ed9c87027f836fc0535044de9319dde154704139e11067ee6181a6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
