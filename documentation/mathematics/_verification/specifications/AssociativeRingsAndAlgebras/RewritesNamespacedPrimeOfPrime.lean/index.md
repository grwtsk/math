# Verification target: Rewrites Namespaced Prime Of Prime

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fbb4e845361b74b8c309fec1ed2ae7707355f2f7",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Rewrites/Variantdbb2d3e185b25e621e0aea1dc7cf7c0fa4a05bc4e9c7938e691615b8e4cda79e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/RewritesNamespacedPrimeOfPrime.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/RewritesNamespacedPrimeOfPrime.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fbb4e845361b74b8c309fec1ed2ae7707355f2f7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Rewrites/Variantdbb2d3e185b25e621e0aea1dc7cf7c0fa4a05bc4e9c7938e691615b8e4cda79e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Rewrites/Variantdbb2d3e185b25e621e0aea1dc7cf7c0fa4a05bc4e9c7938e691615b8e4cda79e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Rewrites` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RewritesNamespacedPrimeOfPrime.lean/declarations/example-source-edition-9.md) | 33 | `declaration-track:b3927d995fe255a7541e1c51adcf0dc699047f103ce7ebf8173e4a6940e65535` |
| 2 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RewritesNamespacedPrimeOfPrime.lean/declarations/example-source-edition-13.md) | 43 | `declaration-track:ff2c7455c9c88e7c8c2a53cfbecb8ca4e920f69b12b66aa0268af059d68aafc8` |
| 3 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RewritesNamespacedPrimeOfPrime.lean/declarations/example-source-edition-8.md) | 51 | `declaration-track:b0908d8f19013fd578e16c627b7fe2d3ca9999ba4d722c7d20b96bdd4c7003fd` |
| 4 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RewritesNamespacedPrimeOfPrime.lean/declarations/example-source-edition-2.md) | 54 | `declaration-track:1dc14cd0c147989393492f61b9e90c6cf42fb3923d1367a98b20d74420922986` |
| 5 | `lemma` | [prime_of_prime](../../../../AssociativeRingsAndAlgebras/RewritesNamespacedPrimeOfPrime.lean/declarations/prime-of-prime.md) | 86 | `result-track:773da0cb0b586cbaa2e015f483d40a2ff271818baf987429f1152ccfed7add17` |
| 6 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RewritesNamespacedPrimeOfPrime.lean/declarations/example-source-edition-6.md) | 89 | `declaration-track:60c976055e6020da633fb1415a326683a1f3e4b2164fd23fba897405503984c0` |
| 7 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RewritesNamespacedPrimeOfPrime.lean/declarations/example-source-edition-12.md) | 93 | `declaration-track:fcdf34b718f8c574d8fffad93f8659869b292ef3d9fe22e73169699ff9d0d980` |
| 8 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RewritesNamespacedPrimeOfPrime.lean/declarations/example-source-edition-10.md) | 98 | `declaration-track:d1e4468e07ceaac545bb0cf0d263d451a8f579f5827a4299426122f04c12b17b` |
| 9 | `axiom` | [K](../../../../AssociativeRingsAndAlgebras/RewritesNamespacedPrimeOfPrime.lean/declarations/k.md) | 103 | `declaration-track:921761127bda674811e1566039da52dfb5ee20c901d77b73c2d6c23614db29df` |
| 10 | `axiom` | [K.ring](../../../../AssociativeRingsAndAlgebras/RewritesNamespacedPrimeOfPrime.lean/declarations/k-ring.md) | 104 | `declaration-track:f630f066049bfa25fd6d762a31a753251628ba8b79a24b2c6399c6c162806c97` |
| 11 | `def` | [foo](../../../../AssociativeRingsAndAlgebras/RewritesNamespacedPrimeOfPrime.lean/declarations/foo.md) | 106 | `declaration-track:8fe87389a780e90e5001e830062a731a86e085c2c21fbe37144aeb8a60650159` |
| 12 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RewritesNamespacedPrimeOfPrime.lean/declarations/example-source-edition-7.md) | 108 | `declaration-track:8611c0dc9a769034287158e2cfc36438d7674150ea0471961660437928fbc623` |
| 13 | `lemma` | [six_eq_seven](../../../../AssociativeRingsAndAlgebras/RewritesNamespacedPrimeOfPrime.lean/declarations/six-eq-seven.md) | 112 | `result-track:c6cf51a717173ab731c4c848ba77c334f91b1e15b23837f17a270378722b7ef3` |
| 14 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RewritesNamespacedPrimeOfPrime.lean/declarations/example.md) | 126 | `declaration-track:17b71fb5628382963f5429b92a25fdcd0ed2993c01add44a04a40b63765ce71c` |
| 15 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RewritesNamespacedPrimeOfPrime.lean/declarations/example-source-edition-3.md) | 131 | `declaration-track:230351366fd0c1ade44eb08d3764313b3754b1b53ac7368a364e9c3f6b2d69a8` |
| 16 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RewritesNamespacedPrimeOfPrime.lean/declarations/example-source-edition-4.md) | 142 | `declaration-track:5227e2f69aa4ffb57daa6c98b12e294d470631193ca5bed7dcf835289c685341` |
| 17 | `axiom` | [α](../../../../AssociativeRingsAndAlgebras/RewritesNamespacedPrimeOfPrime.lean/declarations/anonymous.md) | 145 | `declaration-track:ce7fb8eb754e648386db948c583f5d1694db1cdc6b8c1d1b87bfed453f08782f` |
| 18 | `axiom` | [f](../../../../AssociativeRingsAndAlgebras/RewritesNamespacedPrimeOfPrime.lean/declarations/f.md) | 146 | `declaration-track:dea5dc790450eb181efa1d73b048166a27d7d011a5f62c80695a7ef71c249fdd` |
| 19 | `axiom` | [z](../../../../AssociativeRingsAndAlgebras/RewritesNamespacedPrimeOfPrime.lean/declarations/z.md) | 147 | `declaration-track:bcbc0edec12eb59f6df7c0ad860c6503cae8aef03420837f8715ed7caa662935` |
| 20 | `axiom` | [f_eq](../../../../AssociativeRingsAndAlgebras/RewritesNamespacedPrimeOfPrime.lean/declarations/f-eq.md) | 148 | `declaration-track:bfeed4b54a8f6681aa7a6d1b41b9ca0bd6197658d9157f8de696b57ce080c4e6` |
| 21 | `lemma` | [test](../../../../AssociativeRingsAndAlgebras/RewritesNamespacedPrimeOfPrime.lean/declarations/test.md) | 158 | `result-track:df76a04d5ca9eda2a95b074294307458195bc8d50b515ec288cab2754740036e` |
| 22 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RewritesNamespacedPrimeOfPrime.lean/declarations/example-source-edition-11.md) | 168 | `declaration-track:d28edd82831e9c68e9cb3e4e8fd17190421410efea27b9f218735429cc27f6c0` |
| 23 | `def` | [zero](../../../../AssociativeRingsAndAlgebras/RewritesNamespacedPrimeOfPrime.lean/declarations/zero.md) | 171 | `declaration-track:34d9162199c43ed7cf49cfad368f9d7183000126950209f07c3af767db2430af` |
| 24 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RewritesNamespacedPrimeOfPrime.lean/declarations/example-source-edition-5.md) | 175 | `declaration-track:53e6da71af7c5ec9c6e383de53e790e3c25d90341fd169bfb046bd689d77a112` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=86ed5b9baf090086cde5099c891e4649c5f16bdb5be949a26838efa186b45ebc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Rewrites/Variantdbb2d3e185b25e621e0aea1dc7cf7c0fa4a05bc4e9c7938e691615b8e4cda79e.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Rewrites/Variantdbb2d3e185b25e621e0aea1dc7cf7c0fa4a05bc4e9c7938e691615b8e4cda79e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
