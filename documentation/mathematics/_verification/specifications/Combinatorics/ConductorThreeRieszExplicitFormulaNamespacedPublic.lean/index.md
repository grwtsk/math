# Verification target: Conductor Three Riesz Explicit Formula Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d3654fb5ed424dc8659259aceeda58e4032f3e0",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeRieszExplicitFormula/Variantdc3f816d71ffd73babfceff147c330a2f7c0f1e658278c7577fbedf0084a05ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ConductorThreeRieszExplicitFormulaNamespacedPublic.lean/index.md) · [Full source](../../../../Combinatorics/ConductorThreeRieszExplicitFormulaNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d3654fb5ed424dc8659259aceeda58e4032f3e0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeRieszExplicitFormula/Variantdc3f816d71ffd73babfceff147c330a2f7c0f1e658278c7577fbedf0084a05ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ConductorThreeRieszExplicitFormula/Variantdc3f816d71ffd73babfceff147c330a2f7c0f1e658278c7577fbedf0084a05ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [conductorThreeRieszMeanOne](../../../../Combinatorics/ConductorThreeRieszExplicitFormulaNamespacedPublic.lean/declarations/conductorthreerieszmeanone.md) | 45 | `declaration-track:e4a90e8e15f9ef981243726660b527781e2c95ebc302723ba429f21ca3c86d84` |
| 2 | `def` | [conductorThreeRieszDifferenceTail](../../../../Combinatorics/ConductorThreeRieszExplicitFormulaNamespacedPublic.lean/declarations/conductorthreerieszdifferencetail.md) | 51 | `declaration-track:0283a0f4f99cd14d429504117eaf72705f54776a426eb9d14fc8d8fa4f438b1c` |
| 3 | `theorem` | [conductorThreeRieszMeanOne_add_sub](../../../../Combinatorics/ConductorThreeRieszExplicitFormulaNamespacedPublic.lean/declarations/conductorthreerieszmeanone-add-sub.md) | 59 | `result-track:1ad5ad1ca1056f84404d10e9a1f70292691f2a27e5dc69d36c285fb3b58381e9` |
| 4 | `def` | [GRHRieszFiniteDifferenceEstimate](../../../../Combinatorics/ConductorThreeRieszExplicitFormulaNamespacedPublic.lean/declarations/grhrieszfinitedifferenceestimate.md) | 110 | `declaration-track:4feff957efcd832f0692f439318c1044781c9cb67c94d545c0e20b9bfd2e85ff` |
| 5 | `theorem` | [grh_implies_twistedPsiCriticalBound_of_rieszDifference](../../../../Combinatorics/ConductorThreeRieszExplicitFormulaNamespacedPublic.lean/declarations/grh-implies-twistedpsicriticalbound-of-rieszdifference.md) | 116 | `result-track:06f2b6dad7a8026a411d234e38d5aa225170e16559ccd153efe5db4a11e27b23` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1d05361b458dff91a17826d359b3432feb9a754d59936ad49949813ff0527b3e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeRieszExplicitFormula/Variantdc3f816d71ffd73babfceff147c330a2f7c0f1e658278c7577fbedf0084a05ad.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/ConductorThreeRieszExplicitFormula/Variantdc3f816d71ffd73babfceff147c330a2f7c0f1e658278c7577fbedf0084a05ad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
