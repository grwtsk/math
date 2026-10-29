# Verification target: Absolute Value Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a38f4ca3ff6715c8622c2f5eb63c62fa2e101dbf",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/AbsoluteValue/Variant579286182a6ad7fdf8f42e33697dbe2f3885a601a63c0382ca04c5e41891ee9f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/AbsoluteValueNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/AbsoluteValueNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a38f4ca3ff6715c8622c2f5eb63c62fa2e101dbf`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/AbsoluteValue/Variant579286182a6ad7fdf8f42e33697dbe2f3885a601a63c0382ca04c5e41891ee9f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/AbsoluteValue/Variant579286182a6ad7fdf8f42e33697dbe2f3885a601a63c0382ca04c5e41891ee9f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.AbsoluteValue.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.OfFun` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [uniformSpace](../../../../GeneralTopology/AbsoluteValueNamespaced.lean/declarations/uniformspace.md) | 43 | `declaration-track:a3f66e84f35aa11b1b67fdea631de7a8585b5a00432264e694d1c3b5abb6b728` |
| 2 | `theorem` | [hasBasis_uniformity](../../../../GeneralTopology/AbsoluteValueNamespaced.lean/declarations/hasbasis-uniformity.md) | 48 | `result-track:bd325ca0ff93d2fa0b276588d25488e327f35340885c78033d9f50f5e2f9e01f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2529a7f84b627fbb3d8258c97fadc7395c89f75b5c3ab40857503d742aba6bda -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/AbsoluteValue/Variant579286182a6ad7fdf8f42e33697dbe2f3885a601a63c0382ca04c5e41891ee9f.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UniformSpaces/AbsoluteValue/Variant579286182a6ad7fdf8f42e33697dbe2f3885a601a63c0382ca04c5e41891ee9f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
