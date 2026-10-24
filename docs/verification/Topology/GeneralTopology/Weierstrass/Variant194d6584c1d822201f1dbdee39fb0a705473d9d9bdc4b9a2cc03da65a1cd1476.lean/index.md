# Verification target: GRWTSK.Topology.GeneralTopology.Weierstrass.Variant194d6584c1d822201f1dbdee39fb0a705473d9d9bdc4b9a2cc03da65a1cd1476

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66e586322422ee86d24971e44550d89391c464ad",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Weierstrass/Variant194d6584c1d822201f1dbdee39fb0a705473d9d9bdc4b9a2cc03da65a1cd1476.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Weierstrass/Variant194d6584c1d822201f1dbdee39fb0a705473d9d9bdc4b9a2cc03da65a1cd1476.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Weierstrass/Variant194d6584c1d822201f1dbdee39fb0a705473d9d9bdc4b9a2cc03da65a1cd1476.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66e586322422ee86d24971e44550d89391c464ad`.

Source path: `GRWTSK/Topology/GeneralTopology/Weierstrass/Variant194d6584c1d822201f1dbdee39fb0a705473d9d9bdc4b9a2cc03da65a1cd1476.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Weierstrass/Variant194d6584c1d822201f1dbdee39fb0a705473d9d9bdc4b9a2cc03da65a1cd1476.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Bernstein` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Algebra` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Compact` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [polynomialFunctions_closure_eq_top'](../../../../../mathematics/Topology/GeneralTopology/Weierstrass/Variant194d6584c1d822201f1dbdee39fb0a705473d9d9bdc4b9a2cc03da65a1cd1476.lean/declarations/polynomialfunctions-closure-eq-top--9e47ce8757cb207009d5002b.md) | 39 | `result-track:9e47ce8757cb207009d5002b6ca4cc09cf7c323c8aa0d25d502c034d0fb46cf7` |
| 2 | `theorem` | [polynomialFunctions_closure_eq_top](../../../../../mathematics/Topology/GeneralTopology/Weierstrass/Variant194d6584c1d822201f1dbdee39fb0a705473d9d9bdc4b9a2cc03da65a1cd1476.lean/declarations/polynomialfunctions-closure-eq-top--a89fae6b8de54d2a215ee076.md) | 57 | `result-track:a89fae6b8de54d2a215ee07625b51d99de5fb83ba48566010bd9ce479a56f97c` |
| 3 | `theorem` | [continuousMap_mem_polynomialFunctions_closure](../../../../../mathematics/Topology/GeneralTopology/Weierstrass/Variant194d6584c1d822201f1dbdee39fb0a705473d9d9bdc4b9a2cc03da65a1cd1476.lean/declarations/continuousmap-mem-polynomialfunctions-closure--646a136213781073a654c493.md) | 87 | `result-track:646a136213781073a654c493e2b686624ef314f835747d6e5c521274d1f40f45` |
| 4 | `theorem` | [exists_polynomial_near_continuousMap](../../../../../mathematics/Topology/GeneralTopology/Weierstrass/Variant194d6584c1d822201f1dbdee39fb0a705473d9d9bdc4b9a2cc03da65a1cd1476.lean/declarations/exists-polynomial-near-continuousmap--c5fb95f85b957dd2db8329c0.md) | 99 | `result-track:c5fb95f85b957dd2db8329c033b396c67c047dbf5a1eec6068baf532f2403128` |
| 5 | `theorem` | [exists_polynomial_near_of_continuousOn](../../../../../mathematics/Topology/GeneralTopology/Weierstrass/Variant194d6584c1d822201f1dbdee39fb0a705473d9d9bdc4b9a2cc03da65a1cd1476.lean/declarations/exists-polynomial-near-of-continuouson--f0a970de1fd82d4bc52c4280.md) | 113 | `result-track:f0a970de1fd82d4bc52c42803127de5a1f958f90556d6b72472cf7c2a1602cf2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
