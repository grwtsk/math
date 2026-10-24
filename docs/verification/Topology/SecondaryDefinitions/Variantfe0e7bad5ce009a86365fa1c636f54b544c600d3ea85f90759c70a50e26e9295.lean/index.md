# Verification target: GRWTSK.Topology.SecondaryDefinitions.Variantfe0e7bad5ce009a86365fa1c636f54b544c600d3ea85f90759c70a50e26e9295

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe02d1f002208c3e8b4a1a6a13f9f67af9626974",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/SecondaryDefinitions/Variantfe0e7bad5ce009a86365fa1c636f54b544c600d3ea85f90759c70a50e26e9295.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/SecondaryDefinitions/Variantfe0e7bad5ce009a86365fa1c636f54b544c600d3ea85f90759c70a50e26e9295.lean/index.md) · [Full source](../../../../mathematics/Topology/SecondaryDefinitions/Variantfe0e7bad5ce009a86365fa1c636f54b544c600d3ea85f90759c70a50e26e9295.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe02d1f002208c3e8b4a1a6a13f9f67af9626974`.

Source path: `GRWTSK/Topology/SecondaryDefinitions/Variantfe0e7bad5ce009a86365fa1c636f54b544c600d3ea85f90759c70a50e26e9295.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/SecondaryDefinitions/Variantfe0e7bad5ce009a86365fa1c636f54b544c600d3ea85f90759c70a50e26e9295.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.PrimeCounting` — import line 8; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Consequences` — import line 9; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.PrimaryDefinitions` — import line 10; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.Li2Bounds` — import line 11; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.LiSeries` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.Tactic.IntervalAuto` — import line 13; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.EulerMascheroniBounds` — import line 14; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.LnFactorialSeries` — import line 15; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.LogTables` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [log_le](../../../../mathematics/Topology/SecondaryDefinitions/Variantfe0e7bad5ce009a86365fa1c636f54b544c600d3ea85f90759c70a50e26e9295.lean/declarations/log-le--4cbf0ab94cec378e647c58ed.md) | 41 | `result-track:4cbf0ab94cec378e647c58edf60b22a3b739f07686a5f9b1558659c6b8418b73` |
| 2 | `theorem` | [log_ge](../../../../mathematics/Topology/SecondaryDefinitions/Variantfe0e7bad5ce009a86365fa1c636f54b544c600d3ea85f90759c70a50e26e9295.lean/declarations/log-ge--e152b221cc36a3934746eac5.md) | 56 | `result-track:e152b221cc36a3934746eac51b5194fde58a8188d827031cb52c3b706d54c257` |
| 3 | `theorem` | [log_ge'](../../../../mathematics/Topology/SecondaryDefinitions/Variantfe0e7bad5ce009a86365fa1c636f54b544c600d3ea85f90759c70a50e26e9295.lean/declarations/log-ge--2d0e2feb968c18254b43f1c3.md) | 88 | `result-track:2d0e2feb968c18254b43f1c3e1237081622857d883e9c74ccfaa9c76f4191218` |
| 4 | `theorem` | [symm_inv_log](../../../../mathematics/Topology/SecondaryDefinitions/Variantfe0e7bad5ce009a86365fa1c636f54b544c600d3ea85f90759c70a50e26e9295.lean/declarations/symm-inv-log--59f4950462fe460b4ca3e011.md) | 119 | `result-track:59f4950462fe460b4ca3e0117cb91df52d9bd7e547f37216cf91194455287b32` |
| 5 | `theorem` | [li.sub_Li](../../../../mathematics/Topology/SecondaryDefinitions/Variantfe0e7bad5ce009a86365fa1c636f54b544c600d3ea85f90759c70a50e26e9295.lean/declarations/li-sub-li--f555c42086bc502009589570.md) | 183 | `result-track:f555c42086bc5020095895707ee0cd75f847def824412ec48e066889fbfdf1fa` |
| 6 | `theorem` | [li.two_approx](../../../../mathematics/Topology/SecondaryDefinitions/Variantfe0e7bad5ce009a86365fa1c636f54b544c600d3ea85f90759c70a50e26e9295.lean/declarations/li-two-approx--dcd2753580b210f1099f1eb7.md) | 220 | `result-track:dcd2753580b210f1099f1eb7dd4b9c12075121917b6d0a3a26ea1e28d15722d9` |
| 7 | `theorem` | [li_eq_Li2Bounds_li](../../../../mathematics/Topology/SecondaryDefinitions/Variantfe0e7bad5ce009a86365fa1c636f54b544c600d3ea85f90759c70a50e26e9295.lean/declarations/li-eq-li2bounds-li--e1507a9e9e407194f6bf7ad2.md) | 229 | `result-track:e1507a9e9e407194f6bf7ad2f449b048a7d02d410e9dfbe326953c47b9ec72f2` |
| 8 | `theorem` | [li.two_approx_weak](../../../../mathematics/Topology/SecondaryDefinitions/Variantfe0e7bad5ce009a86365fa1c636f54b544c600d3ea85f90759c70a50e26e9295.lean/declarations/li-two-approx-weak--b66345604dafffd342523157.md) | 242 | `result-track:b66345604dafffd3425231579a3c5cd2222e829f922f38847b178f73bdc0d03b` |
| 9 | `theorem` | [li2_symmetric_eq_li2](../../../../mathematics/Topology/SecondaryDefinitions/Variantfe0e7bad5ce009a86365fa1c636f54b544c600d3ea85f90759c70a50e26e9295.lean/declarations/li2-symmetric-eq-li2--1ba132f81148c8db4d35424f.md) | 257 | `result-track:1ba132f81148c8db4d35424f626f1b0bf6074804b64f47c39ac3b431ba9d589e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
