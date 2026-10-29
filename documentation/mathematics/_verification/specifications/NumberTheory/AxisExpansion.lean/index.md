# Verification target: Axis Expansion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d88a0b373d437f5112917eaaaa8224382135542",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SequentialPrimeCoordinateAxes/Variante097301879a07848/AxisExpansion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/AxisExpansion.lean/index.md) · [Full source](../../../../NumberTheory/AxisExpansion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d88a0b373d437f5112917eaaaa8224382135542`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/SequentialPrimeCoordinateAxes/Variante097301879a07848/AxisExpansion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/SequentialPrimeCoordinateAxes/Variante097301879a07848/AxisExpansion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Carrier.Address` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Intervals` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Nth` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ext](../../../../NumberTheory/AxisExpansion.lean/declarations/ext.md) | 41 | `result-track:a9e414c00b5b98918830544a2ebb029f956693ffc6ae2d911c4ebb0eef24ca43` |
| 2 | `def` | [axesFrom](../../../../NumberTheory/AxisExpansion.lean/declarations/axesfrom.md) | 53 | `declaration-track:ca4e247c097b522d0bad727830371dbdeb2e032c9cb5c437650e321c4e25a5f0` |
| 3 | `def` | [axisCardinalities](../../../../NumberTheory/AxisExpansion.lean/declarations/axiscardinalities.md) | 60 | `declaration-track:b7ff5cef166f08e4c4b86c5b1d0bb7f84fec4f4220a4227165f70e5408c171aa` |
| 4 | `theorem` | [axesFrom_positive](../../../../NumberTheory/AxisExpansion.lean/declarations/axesfrom-positive.md) | 64 | `result-track:3538cf37c077c38d028be8cad7e624987277d522abe870ddf5d65e0ac47b5abb` |
| 5 | `theorem` | [axisCardinalities_positive](../../../../NumberTheory/AxisExpansion.lean/declarations/axiscardinalities-positive.md) | 78 | `result-track:2a76a36c38737eaae9ed1368be27024a46e0826dd8839988e1c705283ec0872a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=da4063afd3874a8dde63597cc7ae0ead08a3a9cb7020e8fb6b4127e2c2a221b6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/SequentialPrimeCoordinateAxes/Variante097301879a07848/AxisExpansion.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/SequentialPrimeCoordinateAxes/Variante097301879a07848/AxisExpansion.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
