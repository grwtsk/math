# Verification target: GRWTSK.Topology.SecondaryDefinitions.Variant3bf0b59d28b9b1ef2cd7af3e73ef98eff963d899d065a85aa21420954f8e4fed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b7c25d8957f1e23fc40a4396c176524928ee1bb",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/SecondaryDefinitions/Variant3bf0b59d28b9b1ef2cd7af3e73ef98eff963d899d065a85aa21420954f8e4fed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/SecondaryDefinitions/Variant3bf0b59d28b9b1ef2cd7af3e73ef98eff963d899d065a85aa21420954f8e4fed.lean/index.md) · [Full source](../../../../mathematics/Topology/SecondaryDefinitions/Variant3bf0b59d28b9b1ef2cd7af3e73ef98eff963d899d065a85aa21420954f8e4fed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b7c25d8957f1e23fc40a4396c176524928ee1bb`.

Source path: `GRWTSK/Topology/SecondaryDefinitions/Variant3bf0b59d28b9b1ef2cd7af3e73ef98eff963d899d065a85aa21420954f8e4fed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/SecondaryDefinitions/Variant3bf0b59d28b9b1ef2cd7af3e73ef98eff963d899d065a85aa21420954f8e4fed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.PrimeCounting` — import line 3; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Consequences` — import line 4; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.PrimaryDefinitions` — import line 5; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.Li2Bounds` — import line 6; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.LiSeries` — import line 7; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.IntervalAuto` — import line 8; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.EulerMascheroniBounds` — import line 9; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.LnFactorialSeries` — import line 10; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.LogTables` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [log_le](../../../../mathematics/Topology/SecondaryDefinitions/Variant3bf0b59d28b9b1ef2cd7af3e73ef98eff963d899d065a85aa21420954f8e4fed.lean/declarations/log-le--ff49942692d6700202e05a4d.md) | 33 | `result-track:ff49942692d6700202e05a4d425dbc0f00447c4219f9d8d934d79f36cc48019a` |
| 2 | `theorem` | [log_ge](../../../../mathematics/Topology/SecondaryDefinitions/Variant3bf0b59d28b9b1ef2cd7af3e73ef98eff963d899d065a85aa21420954f8e4fed.lean/declarations/log-ge--58620fd0fdc216287d356406.md) | 48 | `result-track:58620fd0fdc216287d356406f3596effeb57aaa335a28658ea9bc293b073fc60` |
| 3 | `theorem` | [log_ge'](../../../../mathematics/Topology/SecondaryDefinitions/Variant3bf0b59d28b9b1ef2cd7af3e73ef98eff963d899d065a85aa21420954f8e4fed.lean/declarations/log-ge--245f51cb42c5ee0fbe0b8374.md) | 80 | `result-track:245f51cb42c5ee0fbe0b83748c19c962bc1c6070be63ba4720b71749f34a88f5` |
| 4 | `theorem` | [symm_inv_log](../../../../mathematics/Topology/SecondaryDefinitions/Variant3bf0b59d28b9b1ef2cd7af3e73ef98eff963d899d065a85aa21420954f8e4fed.lean/declarations/symm-inv-log--f034a6e343ae38ba2525a5ca.md) | 111 | `result-track:f034a6e343ae38ba2525a5cacff60d8e266708a8770f04524d5eebd19d9c6308` |
| 5 | `theorem` | [li.sub_Li](../../../../mathematics/Topology/SecondaryDefinitions/Variant3bf0b59d28b9b1ef2cd7af3e73ef98eff963d899d065a85aa21420954f8e4fed.lean/declarations/li-sub-li--53ae2c0fc0412d5d046a300d.md) | 175 | `result-track:53ae2c0fc0412d5d046a300de23ddb443b0cd1e8365805234833bac99e0e6258` |
| 6 | `theorem` | [li.two_approx](../../../../mathematics/Topology/SecondaryDefinitions/Variant3bf0b59d28b9b1ef2cd7af3e73ef98eff963d899d065a85aa21420954f8e4fed.lean/declarations/li-two-approx--e7b5ffe5de673977cceddebc.md) | 212 | `result-track:e7b5ffe5de673977cceddebcba2d880eae3d0fc897721ee5b000e2f7c62811ee` |
| 7 | `theorem` | [li_eq_Li2Bounds_li](../../../../mathematics/Topology/SecondaryDefinitions/Variant3bf0b59d28b9b1ef2cd7af3e73ef98eff963d899d065a85aa21420954f8e4fed.lean/declarations/li-eq-li2bounds-li--0af3a486b55956351ae40aad.md) | 221 | `result-track:0af3a486b55956351ae40aad8f1dc8471b877caab376e933667f515e8d1838ec` |
| 8 | `theorem` | [li.two_approx_weak](../../../../mathematics/Topology/SecondaryDefinitions/Variant3bf0b59d28b9b1ef2cd7af3e73ef98eff963d899d065a85aa21420954f8e4fed.lean/declarations/li-two-approx-weak--924d78ca04047d479610d55e.md) | 234 | `result-track:924d78ca04047d479610d55efc97c04d5b81c58fea99d97aecc89389e4d2301a` |
| 9 | `theorem` | [li2_symmetric_eq_li2](../../../../mathematics/Topology/SecondaryDefinitions/Variant3bf0b59d28b9b1ef2cd7af3e73ef98eff963d899d065a85aa21420954f8e4fed.lean/declarations/li2-symmetric-eq-li2--89b39287d8678e9a74dea82e.md) | 249 | `result-track:89b39287d8678e9a74dea82ea15e1ecc44b4af72675f3a0242abf891e6b87a21` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
