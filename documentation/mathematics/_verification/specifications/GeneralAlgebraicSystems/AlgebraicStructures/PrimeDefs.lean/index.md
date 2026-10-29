# Verification target: Prime Defs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3df6b3dedc2c5f032fa4e3e3a6fee1d9ae3859a1",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant8a3e52336b4b9d919f2542a2ce09f003efa4d77d3ee9411a54f23c1a58ec1edc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeDefs.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeDefs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3df6b3dedc2c5f032fa4e3e3a6fee1d9ae3859a1`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant8a3e52336b4b9d919f2542a2ce09f003efa4d77d3ee9411a54f23c1a58ec1edc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant8a3e52336b4b9d919f2542a2ce09f003efa4d77d3ee9411a54f23c1a58ec1edc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Irreducible.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Divisibility` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Prime](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeDefs.lean/declarations/prime.md) | 39 | `declaration-track:ac477fe7be8d6c9413b668ff56a55a8d54010a6ba1d6f2777c532e566e4b6830` |
| 2 | `theorem` | [ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeDefs.lean/declarations/ne-zero.md) | 47 | `result-track:610e0222357ac8589c4b7dce345c6942946c7b9768a197d02daf0b8d81d9a822` |
| 3 | `theorem` | [not_unit](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeDefs.lean/declarations/not-unit.md) | 50 | `result-track:05bf59795047fa09191f3c9e4fbdb5bbf26ae062bcb50040b7541c26bd2cb54e` |
| 4 | `theorem` | [not_dvd_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeDefs.lean/declarations/not-dvd-one.md) | 53 | `result-track:b5e8d84f141db359b3193c92889bdca1ec39a63bc19029931f620f496d62f140` |
| 5 | `theorem` | [ne_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeDefs.lean/declarations/ne-one.md) | 56 | `result-track:c3a9944e22b2cc1f1c71984540e657aa0935aa6ede6bfcfe7ff090ac9c996177` |
| 6 | `theorem` | [dvd_or_dvd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeDefs.lean/declarations/dvd-or-dvd.md) | 58 | `result-track:b0c3deb558339b9e3768195c286573705522843f660572d9c29690b98b905c7d` |
| 7 | `theorem` | [dvd_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeDefs.lean/declarations/dvd-mul.md) | 61 | `result-track:bf63299c107abad6bc0450bc0513951f3bd4e85d3ddd75106488cbf37e46e280` |
| 8 | `theorem` | [isPrimal](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeDefs.lean/declarations/isprimal.md) | 64 | `result-track:bec264fcf8644460b287e8fd7e1e36188a2f48008c5016edbb7af497b532859b` |
| 9 | `theorem` | [not_dvd_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeDefs.lean/declarations/not-dvd-mul.md) | 67 | `result-track:5ee0324d4fd82c653f8e21b942033e87a1225cd27bb247a24322941252422d53` |
| 10 | `theorem` | [dvd_of_dvd_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeDefs.lean/declarations/dvd-of-dvd-pow.md) | 70 | `result-track:b4788880e93f200dc197eabab0b289aba032dde3f8823ca712ad53afb11416ae` |
| 11 | `theorem` | [dvd_pow_iff_dvd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeDefs.lean/declarations/dvd-pow-iff-dvd.md) | 83 | `result-track:52bd149e73fddc34aab0fcdb7894bba917224d4586e055c211bc1b080f34b4ff` |
| 12 | `theorem` | [not_prime_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeDefs.lean/declarations/not-prime-zero.md) | 89 | `result-track:2e51e529cc9d2c297f261abc1417fa62a809d06db638c9e6acd50fb952e37bbb` |
| 13 | `theorem` | [not_prime_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeDefs.lean/declarations/not-prime-one.md) | 92 | `result-track:4fcbe303b99fc252b7ad4cf7430e725da08013759c5d670b05d457a3f1be55e0` |
| 14 | `theorem` | [Irreducible.not_dvd_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeDefs.lean/declarations/irreducible-not-dvd-one.md) | 96 | `result-track:e503b164ec9d3018327809094a4957938ac261d1d0f31c54baa1971077610327` |
| 15 | `theorem` | [not_irreducible_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeDefs.lean/declarations/not-irreducible-zero.md) | 100 | `result-track:532c43f224d453ea193a692240c66bda2febab491f968ff964d619b4262aaa5f` |
| 16 | `theorem` | [Irreducible.ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeDefs.lean/declarations/irreducible-ne-zero.md) | 105 | `result-track:985b511d68b32f445b8f63ada52986926d424b8a853227992f6c5828252e5186` |
| 17 | `theorem` | [Irreducible.dvd_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeDefs.lean/declarations/irreducible-dvd-symm.md) | 109 | `result-track:4a01c468220f3409618485645e602e07ef15c0064980dbbcdf06c59338c81f74` |
| 18 | `theorem` | [Irreducible.dvd_comm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeDefs.lean/declarations/irreducible-dvd-comm.md) | 114 | `result-track:20ae55ca062197c4914e56751ad4ced17318dc3480875748d657cf84a904c72c` |
| 19 | `theorem` | [Irreducible.prime_of_isPrimal](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeDefs.lean/declarations/irreducible-prime-of-isprimal.md) | 122 | `result-track:cb690caac34360bdaf7cbcf6af3e2f674da39babe92f92f34b3b0cac7f0d03b6` |
| 20 | `theorem` | [Irreducible.prime](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeDefs.lean/declarations/irreducible-prime.md) | 128 | `result-track:193db9f45da3f01e6ea7dcc510d91b18df3d69046e0e4081664855ab3b9b7861` |
| 21 | `theorem` | [Prime.irreducible](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeDefs.lean/declarations/prime-irreducible.md) | 137 | `result-track:389f7861f91167bcfa4380104fc0d117f8b7a13fe49e82241545a5b640d2a571` |
| 22 | `theorem` | [irreducible_iff_prime](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PrimeDefs.lean/declarations/irreducible-iff-prime.md) | 146 | `result-track:21fab348479dda05ee1147ab546740fa7979e9b78b050c4944d9f61caae55a1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4e1b094239fe8a066640fd94fba89c7f1aa4a6b6949c14fca971d015230b40f5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Defs/Variant8a3e52336b4b9d919f2542a2ce09f003efa4d77d3ee9411a54f23c1a58ec1edc.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Defs/Variant8a3e52336b4b9d919f2542a2ce09f003efa4d77d3ee9411a54f23c1a58ec1edc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
