# Verification target: Small

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27e65da9deb6b20c5a2d6d77061a10869996fc43",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Small/Variantc3c347ba4287a97ace3925e2863898af09a59ced9f7531592e2d30c8da78205e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/Small.lean/index.md) · [Full source](../../../../CommutativeAlgebra/Small.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27e65da9deb6b20c5a2d6d77061a10869996fc43`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Small/Variantc3c347ba4287a97ace3925e2863898af09a59ced9f7531592e2d30c8da78205e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Small/Variantc3c347ba4287a97ace3925e2863898af09a59ced9f7531592e2d30c8da78205e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Finsupp.LinearCombination` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.FiniteType` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.DFinsupp` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Subalgebra.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.Cardinality` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.StdBasis` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.Small` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [small_sup](../../../../CommutativeAlgebra/Small.lean/declarations/small-sup.md) | 24 | `declaration-track:bf9ab73e4e7e065d2021fe5abad473035cb7a79c2f831c020c86fa7938ebadf5` |
| 2 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/Small.lean/declarations/instance.md) | 29 | `declaration-track:46b9b3d6a115b2d988fe3780534cfa348d92ebdd59b6a07f793b2a5328c3e5bb` |
| 3 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/Small.lean/declarations/instance-source-edition-2.md) | 37 | `declaration-track:f27e93d4f3361f80d111e3cd057c510ca62b5baf17050d1a5850be0e805954c8` |
| 4 | `instance` | [small_iSup](../../../../CommutativeAlgebra/Small.lean/declarations/small-isup.md) | 40 | `declaration-track:af9bef66d61c47dac2facb53fbedbd6291968d279c10fd558115f6a955997fe6` |
| 5 | `theorem` | [FG.small](../../../../CommutativeAlgebra/Small.lean/declarations/fg-small.md) | 47 | `result-track:3d371dfa774d346cbd83b3dd348a4b4a9ef41575d5af790379ba17fb8a79b901` |
| 6 | `theorem` | [_root_.Module.Finite.small](../../../../CommutativeAlgebra/Small.lean/declarations/root-module-finite-small.md) | 54 | `result-track:26775514693d2ea2d91568acaebbcffceca9e8a97fed08545714e4ca769cc212` |
| 7 | `instance` | [small_span_singleton](../../../../CommutativeAlgebra/Small.lean/declarations/small-span-singleton.md) | 59 | `declaration-track:ef3c0fa48e913c7f9894f0d9ed2f602da3ba61641cb30d43ca367a3f13eaae14` |
| 8 | `theorem` | [small_span](../../../../CommutativeAlgebra/Small.lean/declarations/small-span.md) | 62 | `result-track:d28a801e79a69fe2d7e192a0350d3ee849a12d767ba524f857868e3394508075` |
| 9 | `instance` | [small_adjoin](../../../../CommutativeAlgebra/Small.lean/declarations/small-adjoin.md) | 77 | `declaration-track:97c2cc4cf346271890f23dbae5eb4166898a6373e960efc1d46ebd23e2d77da0` |
| 10 | `theorem` | [_root_.Subalgebra.FG.small](../../../../CommutativeAlgebra/Small.lean/declarations/root-subalgebra-fg-small.md) | 82 | `result-track:cefb990fe6f6e95fa2ff2c6be6e4bd7f963137406b46d38a6ef2330a55efefc2` |
| 11 | `theorem` | [FiniteType.small](../../../../CommutativeAlgebra/Small.lean/declarations/finitetype-small.md) | 87 | `result-track:b29720144fc5fe378ea3fd4633b862e7fe679c774bb5462f57b50d27f9cc4fe8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6f49388d0e29613171bda4f9a4c0e92de45a50e442ac5466345bd5b0bfdf6786 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Small/Variantc3c347ba4287a97ace3925e2863898af09a59ced9f7531592e2d30c8da78205e.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Small/Variantc3c347ba4287a97ace3925e2863898af09a59ced9f7531592e2d30c8da78205e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
