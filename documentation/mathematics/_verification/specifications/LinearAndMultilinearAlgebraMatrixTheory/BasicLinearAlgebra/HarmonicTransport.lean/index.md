# Verification target: Harmonic Transport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "47270abcb6dd909ca417e79ee872803bc882a0d1",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/HarmonicTransport/Variant524a5c3e8f1783d0d287b9321cffd4deae1f7885305b7a1319ff7155c5bce071.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HarmonicTransport.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HarmonicTransport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `47270abcb6dd909ca417e79ee872803bc882a0d1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/HarmonicTransport/Variant524a5c3e8f1783d0d287b9321cffd4deae1f7885305b7a1319ff7155c5bce071.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/HarmonicTransport/Variant524a5c3e8f1783d0d287b9321cffd4deae1f7885305b7a1319ff7155c5bce071.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Fold.ChainMap` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Hilbert.Heat` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsHarmonic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HarmonicTransport.lean/declarations/isharmonic.md) | 20 | `declaration-track:0682c089bb818a171ef09f18f41af8121503aeec8bb36c1535771e82792137f8` |
| 2 | `theorem` | [fold_preserves_harmonicSubspace](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HarmonicTransport.lean/declarations/fold-preserves-harmonicsubspace.md) | 26 | `result-track:6b6d67001d929359185e7f5f369068afef4852e335a855bad20b4b1cd2c84b1d` |
| 3 | `theorem` | [fold_intertwines_diffuser](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HarmonicTransport.lean/declarations/fold-intertwines-diffuser.md) | 38 | `result-track:a93809b18c1c025f4a2c40d767d46fca51da726bab224ed6ecdbf4dd09541dee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7adff6522630e49640cf08e9bc717048056d5b3b46be16c903890e0308d84ee9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/HarmonicTransport/Variant524a5c3e8f1783d0d287b9321cffd4deae1f7885305b7a1319ff7155c5bce071.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/HarmonicTransport/Variant524a5c3e8f1783d0d287b9321cffd4deae1f7885305b7a1319ff7155c5bce071.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
