# Verification target: Monoid Units Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d675fc2aaad0f2f631dbd43b366fe13b6abe2fdf",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Units/Variantb3f512383704584df9680782a9046e4d105c5d2c47890e943a15b8f4be65cb81.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidUnitsNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidUnitsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d675fc2aaad0f2f631dbd43b366fe13b6abe2fdf`.

Source path: `GRWTSK/Algebra/GroupTheory/Units/Variantb3f512383704584df9680782a9046e4d105c5d2c47890e943a15b8f4be65cb81.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Units/Variantb3f512383704584df9680782a9046e4d105c5d2c47890e943a15b8f4be65cb81.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Hom.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.MinMax` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidUnitsNamespaced.lean/declarations/instance.md) | 29 | `declaration-track:627468389d61a87a435ef58c97859f4bc7aa3fa1e0717b202bb68e6586ea5f8e` |
| 2 | `theorem` | [val_le_val](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidUnitsNamespaced.lean/declarations/val-le-val.md) | 33 | `result-track:5eadf21d0058283c076b01c52ffb581cca3fc4f9d91508142e26e902c65d152f` |
| 3 | `theorem` | [val_lt_val](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidUnitsNamespaced.lean/declarations/val-lt-val.md) | 39 | `result-track:0251e778c78df261dcf835560f3f0f3d17b1e01517c0ea3bb48ddee6cf3c9189` |
| 4 | `instance` | [instPartialOrderUnits](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidUnitsNamespaced.lean/declarations/instpartialorderunits.md) | 45 | `declaration-track:654b67adc193763f1c207217655640ee62c3dd164f2b80fba2e357ded49baee2` |
| 5 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidUnitsNamespaced.lean/declarations/instance-source-edition-2.md) | 51 | `declaration-track:d8fd47d658f4152dc8e5598ba522eed1bb71f3ad70b5009fb19b562e36cd4aef` |
| 6 | `def` | [orderEmbeddingVal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidUnitsNamespaced.lean/declarations/orderembeddingval.md) | 57 | `declaration-track:ad32788af7d20f51c33e4e188f02d81d414684f1c10afd0e07dba4b8b8991d35` |
| 7 | `theorem` | [max_val](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidUnitsNamespaced.lean/declarations/max-val.md) | 63 | `result-track:5fb0f160268e0b729c7df47173fe7c73d763a0435baa0e5dcbbb0d092941168f` |
| 8 | `theorem` | [min_val](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/MonoidUnitsNamespaced.lean/declarations/min-val.md) | 69 | `result-track:e5dc93ddaf64a50413928f052a2a9cccfb432d7810fbd558d4bd095b33b1fd7d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba54a73a922fa384e3938c7cd2295d0914f5dde4f983ae0c7ab074fc6adc50fc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Units/Variantb3f512383704584df9680782a9046e4d105c5d2c47890e943a15b8f4be65cb81.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Units/Variantb3f512383704584df9680782a9046e4d105c5d2c47890e943a15b8f4be65cb81.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
