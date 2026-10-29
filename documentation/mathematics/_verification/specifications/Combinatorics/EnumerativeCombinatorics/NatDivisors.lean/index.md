# Verification target: Nat Divisors

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40e3570741cbde29c6070a1cca0a2074f6f8d017",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NatDivisors/Variant09a452b7ef501c4b336c85373376481ec17184ae8a1293b4cf32064061384816.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/NatDivisors.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/NatDivisors.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40e3570741cbde29c6070a1cca0a2074f6f8d017`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/NatDivisors/Variant09a452b7ef501c4b336c85373376481ec17184ae8a1293b4cf32064061384816.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/NatDivisors/Variant09a452b7ef501c4b336c85373376481ec17184ae8a1293b4cf32064061384816.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Divisors` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Finset.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Nat.divisors_mul](../../../../../Combinatorics/EnumerativeCombinatorics/NatDivisors.lean/declarations/nat-divisors-mul.md) | 21 | `result-track:6a69bed3c84fe71762e94f2402a2bb2f9dd6141de7537b5a81f9db57896d6999` |
| 2 | `def` | [Nat.divisorsHom](../../../../../Combinatorics/EnumerativeCombinatorics/NatDivisors.lean/declarations/nat-divisorshom.md) | 29 | `declaration-track:5250ed4c2a400aa71fae6230a5da5ac822b8ba02c900c19cd60d07373823e6b4` |
| 3 | `lemma` | [Nat.Prime.divisors_sq](../../../../../Combinatorics/EnumerativeCombinatorics/NatDivisors.lean/declarations/nat-prime-divisors-sq.md) | 34 | `result-track:35fbb7f848f68b8cc276d6b553d7dd32f62b4406a83a66e905b296b3281f54c5` |
| 4 | `lemma` | [List.nat_divisors_prod](../../../../../Combinatorics/EnumerativeCombinatorics/NatDivisors.lean/declarations/list-nat-divisors-prod.md) | 37 | `result-track:2e8d8521a5f687caf74a6f32abfe1d37476b710b8160d789de2fe3e802154e0f` |
| 5 | `lemma` | [Multiset.nat_divisors_prod](../../../../../Combinatorics/EnumerativeCombinatorics/NatDivisors.lean/declarations/multiset-nat-divisors-prod.md) | 40 | `result-track:215d88158af3e46adf9f1b07bda69a367c7fbca7fbcaa097440471aedc53f94a` |
| 6 | `lemma` | [Finset.nat_divisors_prod](../../../../../Combinatorics/EnumerativeCombinatorics/NatDivisors.lean/declarations/finset-nat-divisors-prod.md) | 43 | `result-track:08223138c280d6eabbca2f09900ff0ca5c04047e5eb01a3bbfbc86d65610d4e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c01a26e00d580058c2c6e4bd5316091a25e980d01a4db9486ebcf622e038952e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/NatDivisors/Variant09a452b7ef501c4b336c85373376481ec17184ae8a1293b4cf32064061384816.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/NatDivisors/Variant09a452b7ef501c4b336c85373376481ec17184ae8a1293b4cf32064061384816.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
