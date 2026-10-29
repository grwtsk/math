# Verification target: Proximity Function Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "faff16af61df84306ef76c50c29cd192a1555f4f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ProximityFunction/Variante4720fcc13e15fbc6ec56d2923b0d56afd4aa132a3ab384a106b6bc82799aad4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionsOfAComplexVariable/ProximityFunctionNamespaced.lean/index.md) · [Full source](../../../../FunctionsOfAComplexVariable/ProximityFunctionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `faff16af61df84306ef76c50c29cd192a1555f4f`.

Source path: `GRWTSK/Analysis/ProximityFunction/Variante4720fcc13e15fbc6ec56d2923b0d56afd4aa132a3ab384a106b6bc82799aad4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ProximityFunction/Variante4720fcc13e15fbc6ec56d2923b0d56afd4aa132a3ab384a106b6bc82799aad4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.WithTop.Untop0` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.PosLog` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.CircleAverage` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [proximity](../../../../FunctionsOfAComplexVariable/ProximityFunctionNamespaced.lean/declarations/proximity.md) | 53 | `declaration-track:e2214c5c71623afcdb658b7c67654ce61385bf615d0a66c23d678b91fb3d1e57` |
| 2 | `lemma` | [proximity_coe](../../../../FunctionsOfAComplexVariable/ProximityFunctionNamespaced.lean/declarations/proximity-coe.md) | 59 | `result-track:b2596f3d37c7deb8e62a5525be662347e910970b8ae4acaaef538e0804797e62` |
| 3 | `lemma` | [proximity_zero](../../../../FunctionsOfAComplexVariable/ProximityFunctionNamespaced.lean/declarations/proximity-zero.md) | 66 | `result-track:abce0da19539ccf9ab06c7e91e2af9a6b0eedfb2e47547f8f2d7fe9a576a5bf4` |
| 4 | `lemma` | [proximity_zero_of_complexValued](../../../../FunctionsOfAComplexVariable/ProximityFunctionNamespaced.lean/declarations/proximity-zero-of-complexvalued.md) | 73 | `result-track:b33b2f1bfd31a733b9cbe2364e20eb5cba31adcc6ab404f5ffa4664c3070a06a` |
| 5 | `lemma` | [proximity_top](../../../../FunctionsOfAComplexVariable/ProximityFunctionNamespaced.lean/declarations/proximity-top.md) | 80 | `result-track:2aa4880879d6c79440d390a99878f6993ed49cdbb2d78d1a9706522daa5cd72a` |
| 6 | `lemma` | [proximity_coe_eq_proximity_sub_const_zero](../../../../FunctionsOfAComplexVariable/ProximityFunctionNamespaced.lean/declarations/proximity-coe-eq-proximity-sub-const-zero.md) | 91 | `result-track:5b8277f302aa0bb5f92ed1438dd77d1a85b6e776bb7fa079dae49f80110b10aa` |
| 7 | `theorem` | [proximity_inv](../../../../FunctionsOfAComplexVariable/ProximityFunctionNamespaced.lean/declarations/proximity-inv.md) | 99 | `result-track:357caf1a9e3e2adab8323af0abff3fc3d61af2163c883f278d3db0c003d0130b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=46d8112bd0dc1e938bb90aa98d289abc3ca80f0ba2a22901df497d9749492c43 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ProximityFunction/Variante4720fcc13e15fbc6ec56d2923b0d56afd4aa132a3ab384a106b6bc82799aad4.lean","GRWTSK/_verification/specifications/Analysis/ProximityFunction/Variante4720fcc13e15fbc6ec56d2923b0d56afd4aa132a3ab384a106b6bc82799aad4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
