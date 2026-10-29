# Verification target: Proximity Function

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1bccd5e16e666d838eaa61647b9b07a2ff17b3d2",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ProximityFunction/Variant2d53e99cda9a38e6bf3ecd852c2b39335dea361c0b11fe21387aab5f9044a01a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionsOfAComplexVariable/ProximityFunction.lean/index.md) · [Full source](../../../../FunctionsOfAComplexVariable/ProximityFunction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1bccd5e16e666d838eaa61647b9b07a2ff17b3d2`.

Source path: `GRWTSK/Analysis/ProximityFunction/Variant2d53e99cda9a38e6bf3ecd852c2b39335dea361c0b11fe21387aab5f9044a01a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ProximityFunction/Variant2d53e99cda9a38e6bf3ecd852c2b39335dea361c0b11fe21387aab5f9044a01a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.WithTop.Untop0` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.PosLog` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.CircleAverage` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [proximity](../../../../FunctionsOfAComplexVariable/ProximityFunction.lean/declarations/proximity.md) | 45 | `declaration-track:eb936a355a791e6df9a568f84c66e7a09c1a3a491a65452a1234e5e2cbf74827` |
| 2 | `lemma` | [proximity_coe](../../../../FunctionsOfAComplexVariable/ProximityFunction.lean/declarations/proximity-coe.md) | 51 | `result-track:0c0382ce5667cfcc02557ab40c9b1923439c572f217801b0dd73d44ee6ab7b95` |
| 3 | `lemma` | [proximity_zero](../../../../FunctionsOfAComplexVariable/ProximityFunction.lean/declarations/proximity-zero.md) | 58 | `result-track:d77b7720d694236d8e5d8f56ff8fd9842244c898841153ab5b6c59a6fec4a804` |
| 4 | `lemma` | [proximity_zero_of_complexValued](../../../../FunctionsOfAComplexVariable/ProximityFunction.lean/declarations/proximity-zero-of-complexvalued.md) | 65 | `result-track:5215b3b11980dd3a919dee5579d16408c431b22a08f25efe5b3eff99bbee9b1c` |
| 5 | `lemma` | [proximity_top](../../../../FunctionsOfAComplexVariable/ProximityFunction.lean/declarations/proximity-top.md) | 72 | `result-track:bccbb6b76bb3422f1ac6d17028bf3158e6572b294a348bc91d0833e5088a25d1` |
| 6 | `lemma` | [proximity_coe_eq_proximity_sub_const_zero](../../../../FunctionsOfAComplexVariable/ProximityFunction.lean/declarations/proximity-coe-eq-proximity-sub-const-zero.md) | 83 | `result-track:5deddab4af7aed967d5097b16c803c0ff4fda4203feccf5d3d0a69a6d120422b` |
| 7 | `theorem` | [proximity_inv](../../../../FunctionsOfAComplexVariable/ProximityFunction.lean/declarations/proximity-inv.md) | 91 | `result-track:9477fab98517269f6332fe4df9badfbf9d846bed079c517b47357922618b7a78` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3aa0ae22da5e0d25e851f86f22991f1451630d62c9149db3de6d49a1573440b8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ProximityFunction/Variant2d53e99cda9a38e6bf3ecd852c2b39335dea361c0b11fe21387aab5f9044a01a.lean","GRWTSK/_verification/specifications/Analysis/ProximityFunction/Variant2d53e99cda9a38e6bf3ecd852c2b39335dea361c0b11fe21387aab5f9044a01a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
