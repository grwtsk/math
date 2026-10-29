# Verification target: Extension Field

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67174a7216bc071f7843498a390181c16b61b8ca",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ExtensionField/Variantf05b70e63ed1021784b2c753d7d2f973aef2dfc7f797a51d10004c1be85b8342.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/ExtensionField.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/ExtensionField.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67174a7216bc071f7843498a390181c16b61b8ca`.

Source path: `GRWTSK/Algebra/GroupTheory/ExtensionField/Variantf05b70e63ed1021784b2c753d7d2f973aef2dfc7f797a51d10004c1be85b8342.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ExtensionField/Variantf05b70e63ed1021784b2c753d7d2f973aef2dfc7f797a51d10004c1be85b8342.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.AbelReynolds.Realization` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ExtensionFieldBasis](../../../../GroupTheoryAndGeneralizations/ExtensionField.lean/declarations/extensionfieldbasis.md) | 14 | `declaration-track:641d54ff221cd71db91904eb3668a050b24e4777ebde324d698dfaa70b31acb9` |
| 2 | `def` | [extensionFieldRealization](../../../../GroupTheoryAndGeneralizations/ExtensionField.lean/declarations/extensionfieldrealization.md) | 22 | `declaration-track:dc378794210bdb4a3644a6b43dac75e546b9bc6c8d42fa635f29d23a4168f7b6` |
| 3 | `theorem` | [extensionFieldRealization_apply](../../../../GroupTheoryAndGeneralizations/ExtensionField.lean/declarations/extensionfieldrealization-apply.md) | 31 | `result-track:4b2c332026a90ca4ba1e24c21f9d4c17215a4309f2b001af8c5c9ecf58844479` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6d0e359846b9227e52e4af6b8dace662dfce86cd4b26f63a1fd7090435c19c7a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/ExtensionField/Variantf05b70e63ed1021784b2c753d7d2f973aef2dfc7f797a51d10004c1be85b8342.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/ExtensionField/Variantf05b70e63ed1021784b2c753d7d2f973aef2dfc7f797a51d10004c1be85b8342.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
